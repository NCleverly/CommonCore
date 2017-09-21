using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using SQLite;
using System.Linq;
using System.Reflection;

namespace Xamarin.Forms.CommonCore
{
    public class SqliteDb : ISqliteDb
	{
		protected SQLiteAsyncConnection conn;

        private List<string> tableRegistry;
        private static readonly AsyncLock Mutex = new AsyncLock();
        private Dictionary<Type, PropertyInfo[]> encrytedProperties;

        private async Task ValidateSetup<T>() where T : ISqlDataModel, new()
        {
            await Task.Run(async() => { 
               
                var fullName = typeof(T).FullName;
                if(conn==null)
                {
                    string folder = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
                    conn = new SQLiteAsyncConnection(System.IO.Path.Combine(folder, CoreSettings.Config.SqliteSettings.SQLiteDatabase));
                    encrytedProperties = new Dictionary<Type, PropertyInfo[]>();
                }
                if(tableRegistry==null)
                {
                    tableRegistry = new List<string>();
                }

                if (tableRegistry.Any(x => x == fullName))
                {
                    return;
                }
                else{
                    await conn.CreateTableAsync<T>();
                    var t = typeof(T);
                    encrytedProperties.Add(t, GetEncryptePropertyList(t));
                    tableRegistry.Add(fullName);
                }
            });

        }

        private PropertyInfo[] GetEncryptePropertyList(Type type)
        {
            var props = type.GetProperties(BindingFlags.Public | BindingFlags.Instance)
                                 .Where(p => p.GetCustomAttributes(typeof(EncryptedPropertyAttribute)).Count() > 0).ToArray();
            return props;
        }

		public async Task<GenericResponse<List<T>>> GetAll<T>() where T : ISqlDataModel, new()
		{

			var response = new GenericResponse<List<T>>();
			try
			{
                using (await Mutex.LockAsync().ConfigureAwait(false))
                {

                    await ValidateSetup<T>();
                    
					var query = conn.Table<T>();
					response.Response = await query.ToListAsync();

                    encrytedProperties.UnEncryptedDataModelProperties<T>(response.Response);

					response.Success = true;
					return response;
                }
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}


		}

		public async Task<BooleanResponse> TruncateAsync<T>() where T : ISqlDataModel, new()
		{
			var response = new BooleanResponse();

			await conn.RunInTransactionAsync(async (tran) =>
			{
				try
				{
                    using (await Mutex.LockAsync().ConfigureAwait(false))
                    {
                        await ValidateSetup<T>();

                        await conn.DropTableAsync<T>();
                        await conn.CreateTableAsync<T>();
                        tran.Commit();
                        response.Success = true;
                    }
				}
				catch (Exception ex)
				{
					response.Error = ex;
					tran.Rollback();
				}

			});
			return response;


		}

		public async Task<GenericResponse<T>> GetByInternalId<T>(Guid CorrelationID) where T : class, ISqlDataModel, new()
		{
			var response = new GenericResponse<T>();
			try
			{
                using (await Mutex.LockAsync().ConfigureAwait(false))
                {
                    await ValidateSetup<T>();

                    var query = conn.Table<T>().Where(x => x.CorrelationID == CorrelationID);

                    response.Response = await query.FirstOrDefaultAsync();

                    encrytedProperties.UnEncryptedDataModelProperties<T>(response.Response);

                    response.Success = true;
                    return response;
                }
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}

		}
		public async Task<GenericResponse<List<T>>> GetByQuery<T>(Expression<Func<T, bool>> exp) where T : ISqlDataModel, new()
		{

			var response = new GenericResponse<List<T>>();
			try
			{
                using (await Mutex.LockAsync().ConfigureAwait(false))
                {
                    await ValidateSetup<T>();

                    var query = conn.Table<T>().Where(exp);

                    response.Response = await query.ToListAsync();

                    encrytedProperties.UnEncryptedDataModelProperties<T>(response.Response);
                    
                    response.Success = true;
                    return response;
                }
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}

		}

		public async Task<BooleanResponse> SyncExternalObject<T, P>(T obj, Expression<Func<T, P>> exp) where T : ISqlDataModel, new()
		{

			var response = new BooleanResponse();

			int rowsAffected = 0;
			obj.UTCTickStamp = DateTime.UtcNow.Ticks;
			try
			{
                using (await Mutex.LockAsync().ConfigureAwait(false))
                {
                    await ValidateSetup<T>();

                    encrytedProperties.EncryptedDataModelProperties<T>(obj);

                    var expression = (MemberExpression)exp.Body;
                    string name = expression.Member.Name;
                    var prop = obj.GetType().GetProperty(name);
                    var vObj = (P)prop.GetValue(obj, null);

                    if (default(P).Equals(vObj))
                    {
                        throw new ApplicationException($"Instance of model is missing primary key identified for {typeof(T).Name}");
                    }
                    else
                    {
                        var stmt = $"SELECT count({name}) FROM {obj.GetType().Name} WHERE {name} = ?";
                        var result = await conn.ExecuteScalarAsync<int>(stmt, vObj);
                        if (result > 0)
                        {
                            var existingGuid = $"SELECT InternalID FROM {obj.GetType().Name} WHERE {name} = ?";
                            var guidResult = await conn.ExecuteScalarAsync<Guid>(existingGuid, vObj);
                            obj.CorrelationID = guidResult;
                            rowsAffected = await conn.UpdateAsync(obj);
                        }
                        else
                        {
                            if (obj.CorrelationID == default(Guid))
                            {
                                obj.CorrelationID = Guid.NewGuid();
                            }
                            rowsAffected = await conn.InsertAsync(obj);
                        }
                    }
                    response.Success = rowsAffected == 1 ? true : false;
                    return response;
                }

			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}

		}
		public async Task<BooleanResponse> AddOrUpdate<T>(IEnumerable<T> collection) where T : ISqlDataModel, new()
		{

			var response = new BooleanResponse();

			try
			{
                using (await Mutex.LockAsync().ConfigureAwait(false))
                {
                    await ValidateSetup<T>();

                    encrytedProperties.EncryptedDataModelProperties<T>(collection);

                    var inserts = new List<T>();
                    var updates = new List<T>();
                    foreach (var obj in collection)
                    {
                        obj.UTCTickStamp = DateTime.UtcNow.Ticks;
                        if (obj.CorrelationID != default(Guid))
                        {
                            updates.Add(obj);
                        }
                        else
                        {
                            obj.CorrelationID = Guid.NewGuid();
                            inserts.Add(obj);
                        }

                    }

                    var totalInserted = await conn.InsertAllAsync(inserts);
                    var totalUpdated = await conn.UpdateAllAsync(updates);

                    if (totalUpdated == updates.Count && totalInserted == inserts.Count)
                        response.Success = true;

                    return response;
                }
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}
		}
		public async Task<BooleanResponse> AddOrUpdate<T>(T obj) where T : ISqlDataModel, new()
		{

			var response = new BooleanResponse();

			int rowsAffected = 0;
			obj.UTCTickStamp = DateTime.UtcNow.Ticks;

			try
			{
                using (await Mutex.LockAsync().ConfigureAwait(false))
                {
                    await ValidateSetup<T>();

                    encrytedProperties.EncryptedDataModelProperties<T>(obj);

                    if (obj.CorrelationID != default(Guid))
                    {
                        rowsAffected = await conn.UpdateAsync(obj);
                    }
                    else
                    {
                        obj.CorrelationID = Guid.NewGuid();
                        rowsAffected = await conn.InsertAsync(obj);
                        if (rowsAffected != 1)
                            obj.CorrelationID = default(Guid);
                    }

                    response.Success = rowsAffected == 1 ? true : false;
                    return response;
                }
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}

		}

		public async Task<BooleanResponse> SyncExternalCollection<T, P>(List<T> collection, Expression<Func<T, P>> exp) where T : ISqlDataModel, new()
		{

			var st = DateTime.Now;

			var response = new BooleanResponse();
			collection.ForEach((obj) => obj.UTCTickStamp = DateTime.UtcNow.Ticks);
			try
			{
                using (await Mutex.LockAsync().ConfigureAwait(false))
                {
                    await ValidateSetup<T>();

                    encrytedProperties.EncryptedDataModelProperties<T>(collection);

                    var expression = (MemberExpression)exp.Body;
                    string name = expression.Member.Name;
                    var prop = typeof(T).GetProperty(name);

                    var inserts = new List<T>();
                    var updates = new List<T>();

                    foreach (var obj in collection)
                    {
                        var vObj = (P)prop.GetValue(obj, null);
                        if (!IsDefaultValue<P>(vObj))
                        {
                            var stmt = $"SELECT count({name}) FROM {obj.GetType().Name} WHERE {name} = ?";
                            var result = await conn.ExecuteScalarAsync<int>(stmt, vObj);
                            if (result > 0)
                            {
                                var existingGuid = $"SELECT InternalID FROM {obj.GetType().Name} WHERE {name} = ?";
                                var guidResult = await conn.ExecuteScalarAsync<Guid>(existingGuid, vObj);
                                obj.CorrelationID = guidResult;
                                updates.Add(obj);
                            }
                            else
                            {
                                if (obj.CorrelationID == default(Guid))
                                {
                                    obj.CorrelationID = Guid.NewGuid();
                                }
                                inserts.Add(obj);
                            }
                        }
                    }

                    int totalInserted = 0;
                    if (inserts.Count > 0)
                        totalInserted = await conn.InsertAllAsync(inserts);

                    int totalUpdated = 0;
                    if (updates.Count > 0)
                        totalUpdated = await conn.UpdateAllAsync(updates);

                    if (totalUpdated == updates.Count && totalInserted == inserts.Count)
                        response.Success = true;

                    return response;
                }
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}
		}

		private bool IsDefaultValue<T>(T obj)
		{
			if (obj is string)
			{
				if (obj == null)
					return true;
				else
					return false;
			}
			else
			{
				return default(T).Equals(obj);
			}
		}

		public async Task<BooleanResponse> DeleteByInternalID<T>(Guid correlationId, bool softDelete = false) where T : class, ISqlDataModel, new()
		{

			var response = new BooleanResponse();
			try
			{
                using (await Mutex.LockAsync().ConfigureAwait(false))
                {
                    await ValidateSetup<T>();

                    var obj = await conn.Table<T>().Where(x => x.CorrelationID == correlationId).FirstOrDefaultAsync();
                    int rowsAffected = 0;
                    if (obj!=null)
                    {
                        if (softDelete)
                        {
                            obj.UTCTickStamp = DateTime.UtcNow.Ticks;
                            obj.MarkedForDelete = true;
                            rowsAffected = await conn.UpdateAsync(obj);
                        }
                        else
                        {
                            rowsAffected = await conn.DeleteAsync(obj);
                        }
                        response.Success = rowsAffected == 1 ? true : false;
                    }
                    return response;
                }
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}
		}
		public async Task<BooleanResponse> DeleteByQuery<T>(Expression<Func<T, bool>> exp, bool softDelete = false) where T : ISqlDataModel, new()
		{
			var response = new BooleanResponse();
			try
			{
                using (await Mutex.LockAsync().ConfigureAwait(false))
                {
                    await ValidateSetup<T>();

                    int rowsAffected = 0;
                    var obj = await conn.Table<T>().Where(exp).FirstOrDefaultAsync();
                    if (obj != null)
                    {
                        if (softDelete)
                        {
                            obj.UTCTickStamp = DateTime.UtcNow.Ticks;
                            obj.MarkedForDelete = true;
                            rowsAffected = await conn.UpdateAsync(obj);
                        }
                        else
                        {
                            rowsAffected = await conn.DeleteAsync(obj);
                        }
                        response.Success = rowsAffected == 1 ? true : false;
                    }
                    return response;
                }
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}
		}

	}

}

