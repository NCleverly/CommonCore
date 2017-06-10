using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using ModernHttpClient;

namespace Xamarin.Forms.CommonCore
{

	public class WebDownloadClient : INotifyPropertyChanged
	{
		private double progress;
		public string DownloadUrl { get; set; }
		public WebClient Client { get; set; }
		public Action<byte[]> FinishedEvent { get; set; }
		public Action<double> PercentageChanged { get; set; }

		public double Progress
		{
			get
			{
				return progress;
			}

			set
			{
				PercentageChanged?.Invoke(value);
				SetProperty(ref progress, value);
			}
		}
		public async Task StartDownload()
		{
			if (Client == null)
				Client = new WebClient();

			await Task.Run(() =>
			{
				Client.DownloadProgressChanged += DownprogressChanged;
				Client.DownloadDataCompleted += DownloadComplete;
				Client.DownloadDataAsync(new Uri(DownloadUrl));
			});

		}
		public void UnhookEvents()
		{
			Client.DownloadProgressChanged -= DownprogressChanged;
			Client.DownloadDataCompleted -= DownloadComplete;
		}
		private void DownloadComplete(object sender, DownloadDataCompletedEventArgs args)
		{
			FinishedEvent?.Invoke(args.Result);
		}
		private void DownprogressChanged(object sender, DownloadProgressChangedEventArgs args)
		{
			Progress = (float)args.BytesReceived / (float)args.TotalBytesToReceive;
		}

		public event PropertyChangedEventHandler PropertyChanged;
		protected bool SetProperty<T>(
			ref T backingStore, T value,
			[CallerMemberName]string propertyName = "",
			Action onChanged = null)
		{
			if (EqualityComparer<T>.Default.Equals(backingStore, value))
				return false;

			backingStore = value;

			if (onChanged != null)
				onChanged();

			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

			return true;
		}
		public void Notify(string propName)
		{
			PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propName));
		}
	}


	public class HttpService : IHttpService
	{
		public string json;

		public WebClient GetWebClient()
		{
			var client = new WebClient();
			if (AppData.Instance.TokenBearer != null)
				client.Headers.Add(HttpRequestHeader.Authorization, "Bearer " + AppData.Instance.TokenBearer.access_token);
			return client;
		}

		private HttpClient GetClient()
		{
			HttpClient client = null;

#if __IOS__
			HttpMessageHandler handler;
			switch (AppData.Instance.IOSHttpHandler)
			{
				case "ModernHttpClient":
					handler = new NativeMessageHandler()
					{
						AllowAutoRedirect = AppData.Instance.HttpAllowAutoRedirect,
						Credentials = AppData.Instance.HttpCredentials
					};

					break;
				case "CFNetwork":
					handler = new CFNetworkHandler()
					{
						AllowAutoRedirect = AppData.Instance.HttpAllowAutoRedirect
					};
					break;
				case "NSURLSession":
					handler = new NSUrlSessionHandler()
					{
						AllowAutoRedirect = AppData.Instance.HttpAllowAutoRedirect,
						Credentials = AppData.Instance.HttpCredentials
					};
					break;
				default:
					handler = new HttpClientHandler()
					{
						AllowAutoRedirect = AppData.Instance.HttpAllowAutoRedirect,
						Credentials = AppData.Instance.HttpCredentials
					};

					break;
			}

#elif __ANDROID__
			HttpMessageHandler handler;
			switch (AppData.Instance.AndroidHttpHandler)
			{
				case "ModernHttpClient":
					handler = new NativeMessageHandler()
					{
						AllowAutoRedirect = AppData.Instance.HttpAllowAutoRedirect,
						Credentials = AppData.Instance.HttpCredentials
					};

					break;
				case "AndroidClientHandler":
					handler = new Xamarin.Android.Net.AndroidClientHandler()
					{
						AllowAutoRedirect = AppData.Instance.HttpAllowAutoRedirect
					};
					break;
				default:
					handler = new HttpClientHandler()
					{
						AllowAutoRedirect = AppData.Instance.HttpAllowAutoRedirect,
						Credentials = AppData.Instance.HttpCredentials
					};
					break;
			}
#else
			var handler = new HttpClientHandler();
#endif

			//handler.AllowAutoRedirect = AppData.HttpAllowAutoRedirect;

			//if (AppData.HttpCredentials != null)
			//	handler.Credentials = AppData.HttpCredentials;

			if (AppData.Instance.HttpTimeOut > 0)
			{
				client = new HttpClient(handler, true) { Timeout = new TimeSpan(0, 0, AppData.Instance.HttpTimeOut) };
			}
			else
			{
				client = new HttpClient(handler, true);
			}

			if (AppData.Instance.TokenBearer != null)
				client.DefaultRequestHeaders.TryAddWithoutValidation("Authorization", "Bearer " + AppData.Instance.TokenBearer.access_token);

			return client;
		}
		public async Task<StringResponse> FormPost(string url, HttpContent content)
		{
			var response = new StringResponse() { };

			if (!AppData.Instance.IsConnected)
			{
				response.Success = false;
				response.Error = new ApplicationException("Network Connection Error");
				return response;
			}


			try
			{
				using (var client = GetClient())
				{
					var postResponse = await client.PostAsync(url, content);
					postResponse.Content.Headers.ContentType = new MediaTypeHeaderValue("application/x-www-form-urlencoded");
					postResponse.EnsureSuccessStatusCode();

					var raw = await postResponse.Content.ReadAsStringAsync();
					if (raw != null)
					{
						response.Response = raw;
						response.Success = true;
					}
				}
			}
			catch (Exception ex)
			{
				ex.ConsoleWrite();
				response.Error = ex;
			}
			return response;
		}

        public async Task<StringResponse> GetRaw(string url)
        {
			var response = new StringResponse() { };

			if (!AppData.Instance.IsConnected)
			{
				response.Success = false;
				response.Error = new ApplicationException("Network Connection Error");
				return response;
			}
			try
			{
				using (var client = GetClient())
				{
					using (var srvResponse = client.GetAsync(url).Result)
					{
						var jsonResult = await srvResponse.Content.ReadAsStringAsync();
						response.Success = true;
					}
				}
			}
			catch (Exception ex)
			{
				ex.ConsoleWrite();
				response.Error = ex;
			}

			return response;
        }
		public async Task<GenericResponse<T>> Get<T>(string url) where T : class, new()
		{
			var response = new GenericResponse<T>() { };

			if (!AppData.Instance.IsConnected)
			{
				response.Success = false;
				response.Error = new ApplicationException("Network Connection Error");
				return response;
			}

			try
			{
				using (var client = GetClient())
				{
					using (var srvResponse = client.GetAsync(url).Result)
					{
						json = await GetStringContent<T>(srvResponse);
						response.Response = await DeserializeObject<T>(json);
						response.Success = true;
						json = string.Empty;
					}
				}
			}
			catch (Exception ex)
			{
				ex.ConsoleWrite();
				response.Error = ex;
				response.MetaData = json;
			}

			return response;
		}
		public async Task<GenericResponse<T>> Post<T>(string url, object obj) where T : class, new()
		{
			var response = new GenericResponse<T>() { };

			if (!AppData.Instance.IsConnected)
			{
				response.Success = false;
				response.Error = new ApplicationException("Network Connection Error");
				return response;
			}

			try
			{
				using (var client = GetClient())
				{
					var data = JsonConvert.SerializeObject(obj);
					using (var srvResponse = client.PostAsync(url, new StringContent(data, Encoding.UTF8, "application/json")).Result)
					{
						json = await GetStringContent<T>(srvResponse);
						response.Response = await DeserializeObject<T>(json);
						response.Success = true;
						json = string.Empty;
					}
				}
			}
			catch (Exception ex)
			{
				ex.ConsoleWrite();
				response.Error = ex;
				response.MetaData = json;
			}


			return response;

		}
		public async Task<GenericResponse<T>> Put<T>(string url, object obj) where T : class, new()
		{
			var response = new GenericResponse<T>() { };

			if (!AppData.Instance.IsConnected)
			{
				response.Success = false;
				response.Error = new ApplicationException("Network Connection Error");
				return response;
			}

			try
			{
				using (var client = GetClient())
				{
					var data = JsonConvert.SerializeObject(obj);
					using (var srvResponse = client.PutAsync(url, new StringContent(data, Encoding.UTF8, "application/json")).Result)
					{
						json = await GetStringContent<T>(srvResponse);
						response.Response = await DeserializeObject<T>(json);
						response.Success = true;
						json = string.Empty;
					}
				}
			}
			catch (Exception ex)
			{
				ex.ConsoleWrite();
				response.Error = ex;
				response.MetaData = json;
			}

			return response;
		}

		public async Task<string> GetStringContent<T>(HttpResponseMessage response) where T : class, new()
		{
			var jsonResult = await response.Content.ReadAsStringAsync();
#if DEBUG
			Console.WriteLine();
			Console.WriteLine();
			var name = typeof(T).Name;
			if (name == "List`1")
			{
				var types = typeof(T).GetGenericArguments();
				if (types != null && types.Length > 0)
				{
					var obj = types[0];
					name = "Collection of " + obj.Name;
				}

			}
			Console.WriteLine($"*-*-*-*-*-*-*-*-*-*-*-*- {name} - HTTP STRING RESULT *-*-*-*-*-*-*-*-*-*-*-*-*-");
			var formatted = await FormattedJson(jsonResult);
			Console.WriteLine(formatted);
			Console.WriteLine("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-");
			Console.WriteLine();
			Console.WriteLine();
#endif
			return jsonResult;
		}

		public async Task<bool> PingDomain(string url)
		{
			var host = new Uri(url).Host;
			var start = url.StartsWith("http", StringComparison.CurrentCultureIgnoreCase) ? "http" : "https";
			var nUrl = $"{start}://{host}";

			return await PingUrl(nUrl);
		}
		public async Task<bool> PingUrl(string url)
		{
			try
			{
				var request = (HttpWebRequest)HttpWebRequest.Create(url);
				request.Timeout = 3000;
				request.AllowAutoRedirect = false; // find out if this site is up and don't follow a redirector
				request.Method = "HEAD";
				var response = await request.GetResponseAsync();
				return true;
			}
			catch (Exception ex)
			{
				return false;
			}
		}

		private Task<string> FormattedJson(string jsonResult)
		{
			return Task.Run(() =>
			{
				var obj = JsonConvert.DeserializeObject(jsonResult);
				return JsonConvert.SerializeObject(obj, Formatting.Indented);
			});
		}

		private static Task<T> DeserializeObject<T>(string content) where T : class, new()
		{
			return Task.Run(() =>
			{
				return JsonConvert.DeserializeObject<T>(content);
			});
		}

	}

	public static class JsonDataExtension
	{
		public static T ConvertTo<T>(this StringResponse str) where T : struct
		{
			object result = null;
			var code = Type.GetTypeCode(typeof(T));
			switch (code)
			{
				case TypeCode.Int32:
					result = JsonConvert.DeserializeObject<int>(str.Response);
					break;
				case TypeCode.Int16:
					result = JsonConvert.DeserializeObject<short>(str.Response);
					break;
				case TypeCode.Int64:
					result = JsonConvert.DeserializeObject<long>(str.Response);
					break;
				case TypeCode.String:
					result = JsonConvert.DeserializeObject<string>(str.Response);
					break;
				case TypeCode.Boolean:
					result = JsonConvert.DeserializeObject<bool>(str.Response);
					break;
				case TypeCode.Double:
					result = JsonConvert.DeserializeObject<double>(str.Response);
					break;
				case TypeCode.Decimal:
					result = JsonConvert.DeserializeObject<decimal>(str.Response);
					break;
				case TypeCode.Byte:
					result = JsonConvert.DeserializeObject<Byte>(str.Response);
					break;
				case TypeCode.DateTime:
					result = JsonConvert.DeserializeObject<DateTime>(str.Response);
					break;
				case TypeCode.Single:
					result = JsonConvert.DeserializeObject<Single>(str.Response);
					break;
			}
			return (T)result;
		}
	}
}

