using System;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

namespace Xamarin.Forms.CommonCore
{
	public interface IHttpService
	{
		//WebClient GetWebClient();
		Task<StringResponse> FormPost(string url, HttpContent content);
		Task<GenericResponse<T>> Get<T>(string url) where T : class, new();
		Task<GenericResponse<T>> Post<T>(string url, object obj) where T : class, new();
		Task<GenericResponse<T>> Put<T>(string url, object obj) where T : class, new();
		Task<string> GetStringContent<T>(HttpResponseMessage response) where T : class, new();
		Task<bool> PingDomain(string url);
		Task<bool> PingUrl(string url);
        Task<StringResponse> GetRaw(string url);
        WebClient GetWebClient();
        WebDownloadClient GetWebDownloadClient();
	}
}
