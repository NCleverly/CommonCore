//using System;
//using System.Collections.Generic;
//using System.Linq.Expressions;
//using System.Reflection;
//using System.Threading;
//using System.Threading.Tasks;
//using SQLite;

//namespace Xamarin.Forms.CommonCore
//{

//	/*
//	 * Additional Extension library https://bitbucket.org/twincoders/sqlite-net-extensions
//	*/

//	public class SqliteDb : ISqliteDb
//	{
//		protected SQLiteAsyncConnection conn;

//		private async Task<bool> InitializeConnection()
//		{
//			return await Task.Run(() =>
//			{
//				try
//				{
//					string folder = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
//					conn = new SQLiteAsyncConnection(System.IO.Path.Combine(folder, AppData.SqliteDbName));

//					var method = typeof(SQLiteAsyncConnection).GetMethod("CreateTableAsync");
//					foreach (var table in AppData.SqliteTableNames)
//					{
//						var t = Type.GetType(table);
//						var genericMethod = method.MakeGenericMethod(t);
//						genericMethod.Invoke(conn, new object[] { CreateFlags.None });
//					}
//					return true;
//				}
//				catch (Exception ex)
//				{
//					return false;
//				}

//			});
//		}

//		public async Task<GenericResponse<List<T>>> GetAll<T>() where T : class, new()
//		{

//			var response = new GenericResponse<List<T>>();
//			try
//			{
//				if (conn == null)
//					await InitializeConnection();

//				var query = conn.Table<T>();
//				response.Response = await query.ToListAsync();
//				response.Success = true;
//				return response;
//			}
//			catch (Exception ex)
//			{
//				response.Error = ex;
//				return response;
//			}

//		}

//		public async Task<BooleanResponse> TruncateAsync<T>() where T : class, new()
//		{
//			var response = new BooleanResponse();
//			try
//			{
//				await conn.RunInTransactionAsync(async (tran) =>
//				{
//					try
//					{
//						if (conn == null)
//							await InitializeConnection();

//						await conn.DropTableAsync<T>();
//						await conn.CreateTableAsync<T>();
//						tran.Commit();
//						response.Success = true;
//					}
//					catch (Exception ex)
//					{
//						response.Error = ex;
//						tran.Rollback();
//					}
//				});
//				return response;
//			}


//		}


//		public async Task<GenericResponse<List<T>>> GetByQuery<T>(Expression<Func<T, bool>> exp) where T : class, new()
//		{

//			var response = new GenericResponse<List<T>>();
//			try
//			{
//				if (conn == null)
//					await InitializeConnection();

//				var query = conn.Table<T>().Where(exp);
//				response.Response = await query.ToListAsync();
//				response.Success = true;
//				return response;
//			}
//			catch (Exception ex)
//			{
//				response.Error = ex;
//				return response;
//			}


//		}


//		public async Task<BooleanResponse> Add<T>(IEnumerable<T> collection) where T : class, new()
//		{

//			var response = new BooleanResponse();

//			try
//			{
//				if (conn == null)
//					await InitializeConnection();

//				var inserts = new List<T>();
//				var updates = new List<T>();
//				foreach (var obj in collection)
//				{

//					if (obj.CorrelationID != default(Guid))
//					{
//						updates.Add(obj);
//					}
//					else
//					{
//						obj.CorrelationID = Guid.NewGuid();
//						inserts.Add(obj);
//					}

//				}

//				var totalInserted = await conn.InsertAllAsync(inserts);
//				var totalUpdated = await conn.UpdateAllAsync(updates);

//				if (totalUpdated == updates.Count && totalInserted == inserts.Count)
//					response.Success = true;

//				return response;
//			}
//			catch (Exception ex)
//			{
//				response.Error = ex;
//				return response;
//			}

//		}
//		public async Task<BooleanResponse> Add<T>(T obj) where T : class, new()
//		{
//			var response = new BooleanResponse();
//			try{
//				if (conn == null)
//					await InitializeConnection();

//				int rowsAffected = await conn.InsertAsync(obj);

//				response.Success = rowsAffected == 1 ? true : false;
//				return response;
//			}
//			catch (Exception ex)
//			{
//				response.Error = ex;
//				return response;
//			}

//		}
//		public async Task<BooleanResponse> Update<T>(T obj) where T : class, new()
//		{
//			var response = new BooleanResponse();
//			try
//			{
//				if (conn == null)
//					await InitializeConnection();

//				int rowsAffected = await conn.UpdateAsync(obj);

//				response.Success = rowsAffected == 1 ? true : false;
//				return response;
//			}
//			catch (Exception ex)
//			{
//				response.Error = ex;
//				return response;
//			}

//		}

	
//		public async Task<BooleanResponse> DeleteByQuery<T>(Expression<Func<T, bool>> exp) where T : class, new()
//		{
//			var response = new BooleanResponse();
//			try
//			{
//				if (conn == null)
//					await InitializeConnection();

//				int rowsAffected = 0;
//				var obj = await conn.Table<T>().Where(exp).FirstOrDefaultAsync();
//				if (obj != null)
//				{
//					if (softDelete)
//					{
//						obj.TimeStamp = DateTime.Now;
//						obj.MarkedForDelete = softDelete;
//						rowsAffected = await conn.UpdateAsync(obj);
//					}
//					else
//					{
//						rowsAffected = await conn.DeleteAsync(obj);
//					}
//					response.Success = rowsAffected == 1 ? true : false;
//				}
//				return response;
//			}
//			catch (Exception ex)
//			{
//				response.Error = ex;
//				return response;
//			}

//		}

//	}

//}

