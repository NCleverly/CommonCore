
using System;
using System.Threading.Tasks;

namespace Xamarin.Forms.CommonCore
{
	public interface IAccountService
	{
		Task<BooleanResponse> SaveAccountStore<T>(string username, T obj) where T : class, new();
		Task<GenericResponse<T>> GetAccountStore<T>(string username) where T : class, new();
		Task<BooleanResponse> SaveAccountStore<T>(string username, string password, T obj) where T : class, new();
		Task<GenericResponse<T>> GetAccountStore<T>(string username, string password) where T : class, new();
	}
}
