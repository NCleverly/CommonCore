using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using SQLite;

namespace Xamarin.Forms.CommonCore
{
	public interface ISqliteDb
	{
		Task<GenericResponse<List<T>>> GetAll<T>(bool includeDeleted = false) where T : IDataModel, new();
		Task<BooleanResponse> TruncateAsync<T>() where T : IDataModel, new();
		Task<GenericResponse<T>> GetByInternalId<T>(Guid CorrelationID, bool includeDeleted = false) where T : class, IDataModel, new();
		Task<GenericResponse<List<T>>> GetByQuery<T>(Expression<Func<T, bool>> exp) where T : IDataModel, new();
		Task<BooleanResponse> SyncExternalObject<T, P>(T obj, Expression<Func<T, P>> exp) where T : IDataModel, new();
		Task<BooleanResponse> AddOrUpdate<T>(T obj) where T : IDataModel, new();
		Task<BooleanResponse> AddOrUpdate<T>(IEnumerable<T> collection) where T : IDataModel, new();
		Task<BooleanResponse> SyncExternalCollection<T, P>(List<T> collection, Expression<Func<T, P>> exp) where T : IDataModel, new();
		Task<BooleanResponse> DeleteByInternalID<T>(Guid ID, bool softDelete = true) where T : class, IDataModel, new();
		Task<BooleanResponse> DeleteByQuery<T>(Expression<Func<T, bool>> exp, bool softDelete = true) where T : IDataModel, new();
	}
}
