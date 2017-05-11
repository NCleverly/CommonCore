using System;
using System.Threading;
using System.Threading.Tasks;

namespace Xamarin.Forms.CommonCore
{
	public interface IFileStore
	{
		Task<GenericResponse<T>> GetAsync<T>(string contentName) where T : class, new();
		Task<BooleanResponse> DeleteAsync(string contentName);
		Task<BooleanResponse> SaveAsync<T>(string contentName, object obj);
		Task<StringResponse> GetStringAsync(string contentName);
		Task<BooleanResponse> SaveStringAsync(string contentName, string obj);
	}
}
