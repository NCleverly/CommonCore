using System;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

namespace Xamarin.Forms.CommonCore
{
	public interface IHttpService
	{
		Task<(string Response, Exception Error)> FormPost(string url, HttpContent content);
		Task<(T Response, Exception Error)> Get<T>(string url) where T : class, new();
		Task<(T Response, Exception Error)> Post<T>(string url, object obj) where T : class, new();
		Task<(T Response, Exception Error)> Put<T>(string url, object obj) where T : class, new();
		Task<string> GetStringContent<T>(HttpResponseMessage response) where T : class, new();
        Task<(string Response, Exception Error)> GetRaw(string url);
        WebClient GetWebClient();
        WebDownloadClient GetWebDownloadClient();
	}
}
