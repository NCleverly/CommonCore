using System;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

namespace Xamarin.Forms.CommonCore
{
	public interface IHttpService
	{
        void AddTokenHeader(string token);
        void AddTokenHeader(CoreAuthentication coreAuth);
        void AddNetworkCredentials(NetworkCredential cred);
        Task<(string Response, bool Success, Exception Error)> FormPost(string url, HttpContent content);
        Task<(T Response, bool Success, Exception Error)> Get<T>(string url) where T : class, new();
        Task<(T Response, bool Success, Exception Error)> Post<T>(string url, object obj) where T : class, new();
        Task<(T Response, bool Success, Exception Error)> Put<T>(string url, object obj) where T : class, new();
		Task<string> GetStringContent<T>(HttpResponseMessage response) where T : class, new();
        Task<(string Response, bool Success, Exception Error)> GetRaw(string url);
        WebDownloadClient GetWebDownloadClient();
        HttpClient Client { get; set; }
	}
}
