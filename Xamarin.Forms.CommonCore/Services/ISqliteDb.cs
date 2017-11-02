using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using SQLite;

namespace Xamarin.Forms.CommonCore
{
	public interface ISqliteDb
	{
        Task<(List<T> Response, bool Success, Exception Error)> GetAll<T>() where T : ISqlDataModel, new();
		Task<(bool Success, Exception Error)> TruncateAsync<T>() where T : ISqlDataModel, new();
        Task<(T Response, bool Success, Exception Error)> GetByCorrelationID<T>(Guid CorrelationID) where T : class, ISqlDataModel, new();
        Task<(List<T> Response, bool Success, Exception Error)> GetByQuery<T>(Expression<Func<T, bool>> exp) where T : ISqlDataModel, new();
		Task<(bool Success, Exception Error)> AddOrUpdate<T>(T obj) where T : ISqlDataModel, new();
		Task<(bool Success, Exception Error)> AddOrUpdate<T>(IEnumerable<T> collection) where T : ISqlDataModel, new();
		Task<(bool Success, Exception Error)> DeleteByCorrelationID<T>(Guid CorrelationId, bool softDelete = false) where T : class, ISqlDataModel, new();
		Task<(bool Success, Exception Error)> DeleteByQuery<T>(Expression<Func<T, bool>> exp, bool softDelete = false) where T : ISqlDataModel, new();
	}
}
