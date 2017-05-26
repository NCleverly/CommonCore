﻿using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;
using SQLite;

namespace Xamarin.Forms.CommonCore
{

	/*
	 * Additional Extension library https://bitbucket.org/twincoders/sqlite-net-extensions
	*/

	public class SqliteDb : ISqliteDb
	{
		protected SQLiteAsyncConnection conn;

		private async Task<bool> InitializeConnection()
		{
			return await Task.Run(() =>
			{
				try
				{
					string folder = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
					conn = new SQLiteAsyncConnection(System.IO.Path.Combine(folder, AppData.Instance.SqliteDbName));

					var method = typeof(SQLiteAsyncConnection).GetMethod("CreateTableAsync");
					foreach (var table in AppData.Instance.SqliteTableNames)
					{
						var t = Type.GetType(table);
						var genericMethod = method.MakeGenericMethod(t);
						genericMethod.Invoke(conn, new object[] { CreateFlags.None });
					}
					return true;
				}
				catch (Exception ex)
				{
					return false;
				}

			});
		}

		public async Task<GenericResponse<List<T>>> GetAll<T>(bool includeDeleted = false) where T : IDataModel, new()
		{

			var response = new GenericResponse<List<T>>();
			try
			{
				if (conn == null)
					await InitializeConnection();
				AsyncTableQuery<T> query;
				if (!includeDeleted)
					query = conn.Table<T>().Where(x => x.MarkedForDelete == false);
				else
					query = conn.Table<T>();
				response.Response = await query.ToListAsync();
				response.Success = true;
				return response;
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}

		}

		public async Task<BooleanResponse> TruncateAsync<T>() where T : IDataModel, new()
		{
			var response = new BooleanResponse();

			await conn.RunInTransactionAsync(async (tran) =>
			{
				try
				{
					if (conn == null)
						await InitializeConnection();

					await conn.DropTableAsync<T>();
					await conn.CreateTableAsync<T>();
					tran.Commit();
					response.Success = true;
				}
				catch (Exception ex)
				{
					response.Error = ex;
					tran.Rollback();
				}
			});
			return response;


		}

		public async Task<GenericResponse<T>> GetByInternalId<T>(Guid CorrelationID, bool includeDeleted = false) where T : class, IDataModel, new()
		{
			var response = new GenericResponse<T>();
			try
			{
				if (conn == null)
					await InitializeConnection();

				AsyncTableQuery<T> query;

				if (!includeDeleted)
					query = conn.Table<T>().Where(x => x.CorrelationID == CorrelationID && x.MarkedForDelete == false);
				else
					query = conn.Table<T>().Where(x => x.CorrelationID == CorrelationID);

				response.Response = await query.FirstOrDefaultAsync();
				response.Success = true;
				return response;
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}


		}
		public async Task<GenericResponse<List<T>>> GetByQuery<T>(Expression<Func<T, bool>> exp) where T : IDataModel, new()
		{

			var response = new GenericResponse<List<T>>();
			try
			{
				if (conn == null)
					await InitializeConnection();

				var query = conn.Table<T>().Where(exp);

				response.Response = await query.ToListAsync();
				response.Success = true;
				return response;
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}


		}

		public async Task<BooleanResponse> SyncExternalObject<T, P>(T obj, Expression<Func<T, P>> exp) where T : IDataModel, new()
		{

			var response = new BooleanResponse();

			int rowsAffected = 0;
			obj.UTCTickStamp = DateTime.UtcNow.Ticks;
			try
			{
				if (conn == null)
					await InitializeConnection();

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
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}


		}
		public async Task<BooleanResponse> AddOrUpdate<T>(IEnumerable<T> collection) where T : IDataModel, new()
		{

			var response = new BooleanResponse();

			try
			{
				if (conn == null)
					await InitializeConnection();

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
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}

		}
		public async Task<BooleanResponse> AddOrUpdate<T>(T obj) where T : IDataModel, new()
		{

			var response = new BooleanResponse();

			int rowsAffected = 0;
			obj.UTCTickStamp = DateTime.UtcNow.Ticks;

			try
			{
				if (conn == null)
					await InitializeConnection();


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
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}

		}

		public async Task<BooleanResponse> SyncExternalCollection<T, P>(List<T> collection, Expression<Func<T, P>> exp) where T : IDataModel, new()
		{

			var st = DateTime.Now;

			var response = new BooleanResponse();
			collection.ForEach((obj) => obj.UTCTickStamp = DateTime.UtcNow.Ticks);
			try
			{
				if (conn == null)
					await InitializeConnection();

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

		public async Task<BooleanResponse> DeleteByInternalID<T>(Guid ID, bool softDelete = true) where T : class, IDataModel, new()
		{

			var response = new BooleanResponse();
			try
			{
				if (conn == null)
					await InitializeConnection();

				var obj = await GetByInternalId<T>(ID);
				int rowsAffected = 0;
				if (obj.Success)
				{
					if (softDelete)
					{
						obj.Response.UTCTickStamp = DateTime.UtcNow.Ticks;
						obj.Response.MarkedForDelete = softDelete;
						rowsAffected = await conn.UpdateAsync(obj.Response);
					}
					else
					{
						rowsAffected = await conn.DeleteAsync(obj.Response);
					}
					response.Success = rowsAffected == 1 ? true : false;
				}
				return response;
			}
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}


		}
		public async Task<BooleanResponse> DeleteByQuery<T>(Expression<Func<T, bool>> exp, bool softDelete = true) where T : IDataModel, new()
		{
			var response = new BooleanResponse();
			try
			{
				if (conn == null)
					await InitializeConnection();

				int rowsAffected = 0;
				var obj = await conn.Table<T>().Where(exp).FirstOrDefaultAsync();
				if (obj != null)
				{
					if (softDelete)
					{
						obj.UTCTickStamp = DateTime.UtcNow.Ticks;
						obj.MarkedForDelete = softDelete;
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
			catch (Exception ex)
			{
				response.Error = ex;
				return response;
			}

		}

	}

}

