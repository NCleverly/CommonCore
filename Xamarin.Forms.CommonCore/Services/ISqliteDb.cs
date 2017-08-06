using System;
using System.Collections.Generic;
using System.Linq.Expressions;
using System.Threading.Tasks;
using SQLite;

namespace Xamarin.Forms.CommonCore
{
	public interface ISqliteDb
	{
		Task<GenericResponse<List<T>>> GetAll<T>() where T : ISqlDataModel, new();
		Task<BooleanResponse> TruncateAsync<T>() where T : ISqlDataModel, new();
		Task<GenericResponse<T>> GetByInternalId<T>(Guid CorrelationID) where T : class, ISqlDataModel, new();
		Task<GenericResponse<List<T>>> GetByQuery<T>(Expression<Func<T, bool>> exp) where T : ISqlDataModel, new();
		Task<BooleanResponse> SyncExternalObject<T, P>(T obj, Expression<Func<T, P>> exp) where T : ISqlDataModel, new();
		Task<BooleanResponse> AddOrUpdate<T>(T obj) where T : ISqlDataModel, new();
		Task<BooleanResponse> AddOrUpdate<T>(IEnumerable<T> collection) where T : ISqlDataModel, new();
		Task<BooleanResponse> SyncExternalCollection<T, P>(List<T> collection, Expression<Func<T, P>> exp) where T : ISqlDataModel, new();
		Task<BooleanResponse> DeleteByInternalID<T>(Guid ID, bool softDelete = false) where T : class, ISqlDataModel, new();
		Task<BooleanResponse> DeleteByQuery<T>(Expression<Func<T, bool>> exp, bool softDelete = false) where T : ISqlDataModel, new();
	}
}
