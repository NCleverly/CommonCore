﻿using System;
using System.IO;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using ModernHttpClient;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{

    public class HttpService : IHttpService, IDisposable
    {
        private HttpClient httpClient;
		private HttpMessageHandler handler;
        private JsonSerializer _serializer;

        public string json;

        public AuthenticationToken AuthToken
        {
            get { return CoreSettings.CurrentUser?.AuthToken; }
        }

        public WebClient GetWebClient()
        {
            var client = new WebClient();
            if (AuthToken!= null)
                client.Headers.Add(HttpRequestHeader.Authorization, "Bearer " + AuthToken.Token);
            return client;
        }

        public WebDownloadClient GetWebDownloadClient()
        {
            var client = new WebClient();
            if (AuthToken != null)
                client.Headers.Add(HttpRequestHeader.Authorization, "Bearer " + AuthToken.Token);
            return new WebDownloadClient() { Client = client };
        }

        public HttpClient Client
        {
            get
            {
                if (httpClient == null)
                {
                    _serializer = new JsonSerializer();

#if __IOS__
                   
                    switch (CoreSettings.Config.HttpSettings.IOSHttpHandler)
                    {
                        case "ModernHttpClient":
                            handler = new NativeMessageHandler()
                            {
                                AllowAutoRedirect = CoreSettings.Config.HttpSettings.HttpAllowAutoRedirect,
                                Credentials = CoreSettings.HttpCredentials
                            };

                            break;
                        case "CFNetwork":
                            handler = new CFNetworkHandler()
                            {
                                AllowAutoRedirect = CoreSettings.Config.HttpSettings.HttpAllowAutoRedirect
                            };
                            break;
                        case "NSURLSession":
                            handler = new NSUrlSessionHandler()
                            {
                                AllowAutoRedirect = CoreSettings.Config.HttpSettings.HttpAllowAutoRedirect,
                                Credentials = CoreSettings.HttpCredentials
                            };
                            break;
                        default:
                            handler = new HttpClientHandler()
                            {
                                AllowAutoRedirect = CoreSettings.Config.HttpSettings.HttpAllowAutoRedirect,
                                Credentials = CoreSettings.HttpCredentials
                            };

                            break;
                    }

#elif __ANDROID__
			switch (CoreSettings.Config.HttpSettings.AndroidHttpHandler)
			{
				case "ModernHttpClient":
					handler = new NativeMessageHandler()
					{
						AllowAutoRedirect = CoreSettings.Config.HttpSettings.HttpAllowAutoRedirect,
						Credentials = CoreSettings.HttpCredentials
					};

					break;
				case "AndroidClientHandler":
					handler = new Xamarin.Android.Net.AndroidClientHandler()
					{
						AllowAutoRedirect = CoreSettings.Config.HttpSettings.HttpAllowAutoRedirect
					};
					break;
				default:
					handler = new HttpClientHandler()
					{
						AllowAutoRedirect = CoreSettings.Config.HttpSettings.HttpAllowAutoRedirect,
						Credentials = CoreSettings.HttpCredentials
					};
					break;
			}
#else
			handler = new HttpClientHandler();
#endif


                    if (CoreSettings.Config.HttpSettings.HttpTimeOut > 0)
                    {
                        httpClient = new HttpClient(handler, true) { Timeout = new TimeSpan(0, 0, CoreSettings.Config.HttpSettings.HttpTimeOut) };
                    }
                    else
                    {
                        httpClient = new HttpClient(handler, true);
                    }

                    if (AuthToken != null)
                        httpClient.AddTokenHeader(AuthToken.Token);
                }

                //httpClient.DefaultRequestHeaders.AcceptEncoding.Add(new StringWithQualityHeaderValue("gzip"));

                return httpClient;
            }
            set { httpClient = value; }
        }

        public async Task<(string Response, bool Success, Exception Error)> FormPost(string url, HttpContent content)
        {
     
            if (!CoreSettings.IsConnected)
            {
                return (null, false, new ApplicationException("Network Connection Error"));
            }

            try
            {
                await new SynchronizationContextRemover();

                var postResponse = await Client.PostAsync(url, content).ConfigureAwait(false);
                postResponse.Content.Headers.ContentType = new MediaTypeHeaderValue("application/x-www-form-urlencoded");
                postResponse.EnsureSuccessStatusCode();

                var raw = await postResponse.Content.ReadAsStringAsync().ConfigureAwait(false);
                if (raw != null)
                {
                    return (raw, true, null);
                }
                else
                {
                    return (null, false, new ApplicationException("Return value is empty"));
                }


            }
            catch (Exception ex)
            {
                ex.ConsoleWrite();
                return (null, false, ex);
            }
        }

        public async Task<(string Response, bool Success, Exception Error)> GetRaw(string url)
        {
			if (!CoreSettings.IsConnected)
			{
				return (null, false, new ApplicationException("Network Connection Error"));
			}

            try
            {
                await new SynchronizationContextRemover();

                using (var srvResponse = await Client.GetAsync(url).ConfigureAwait(false))
                {
                    var jsonResult = await srvResponse.Content.ReadAsStringAsync().ConfigureAwait(false);
                    if (srvResponse.StatusCode == HttpStatusCode.OK){
                        return (jsonResult, true, null);
                    }
                    else{
                        return (null, false, new ApplicationException(jsonResult));
                    }

                }

            }
            catch (Exception ex)
            {
				ex.ConsoleWrite();
				return (null, false, ex);
            }

        }
        public async Task<(T Response, bool Success, Exception Error)> Get<T>(string url) where T : class, new()
        {
			if (!CoreSettings.IsConnected)
			{
				return (null, false, new ApplicationException("Network Connection Error"));
			}

            try
            {
                await new SynchronizationContextRemover();

                using (var srvResponse = await Client.GetAsync(url).ConfigureAwait(false))
                {
                    if(CoreSettings.Config.HttpSettings.DisplayRawJson){
						json = await GetStringContent<T>(srvResponse).ConfigureAwait(false);
                        var response = await DeserializeObject<T>(json).ConfigureAwait(false);
						json = string.Empty;
                        return (response, true, null);
					}
                    else{
						srvResponse.EnsureSuccessStatusCode();
						var response = await DeserializeStream<T>(srvResponse);
						return (response, true, null);
                    }
                }

            }
            catch (Exception ex)
            {
				ex.ConsoleWrite();
				return (null, false, ex);
            }
        }
        public async Task<(T Response, bool Success, Exception Error)> Post<T>(string url, object obj) where T : class, new()
        {
			if (!CoreSettings.IsConnected)
			{
				return (null, false, new ApplicationException("Network Connection Error"));
			}

            try
            {
                await new SynchronizationContextRemover();

                var data = JsonConvert.SerializeObject(obj);
                using (var srvResponse = await Client.PostAsync(url, new StringContent(data, Encoding.UTF8, "application/json")).ConfigureAwait(false))
                {
                    if (CoreSettings.Config.HttpSettings.DisplayRawJson)
                    {
                        json = await GetStringContent<T>(srvResponse).ConfigureAwait(false);
                        var response = await DeserializeObject<T>(json).ConfigureAwait(false);
						json = string.Empty;
						return (response, true, null);
                    }
                    else{
						srvResponse.EnsureSuccessStatusCode();
						var response = await DeserializeStream<T>(srvResponse);
						return (response, true, null);
                    }
                }

            }
            catch (Exception ex)
            {
				ex.ConsoleWrite();
				return (null, false, ex);
            }

        }
        public async Task<(T Response, bool Success, Exception Error)> Put<T>(string url, object obj) where T : class, new()
        {
			if (!CoreSettings.IsConnected)
			{
				return (null, false, new ApplicationException("Network Connection Error"));
			}

            try
            {
                await new SynchronizationContextRemover();

                var data = JsonConvert.SerializeObject(obj);
                using (var srvResponse = await Client.PutAsync(url, new StringContent(data, Encoding.UTF8, "application/json")))
                {
                    if (CoreSettings.Config.HttpSettings.DisplayRawJson)
                    {
                        json = await GetStringContent<T>(srvResponse);
                        var response = await DeserializeObject<T>(json);
						json = string.Empty;
						return (response, true, null);
                    }
                    else
                    {
						srvResponse.EnsureSuccessStatusCode();
                        var response = await DeserializeStream<T>(srvResponse);
						return (response, true, null);
                    }
                }

            }
            catch (Exception ex)
            {
				ex.ConsoleWrite();
				return (null, false, ex);
            }

        }

        public async Task<string> GetStringContent<T>(HttpResponseMessage response) where T : class, new()
        {
            var jsonResult = await response.Content.ReadAsStringAsync();
            if (CoreSettings.Config.HttpSettings.DisplayRawJson)
            {
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
            }
            return jsonResult;
        }

        private Task<string> FormattedJson(string jsonResult)
        {
            return Task.Run(() =>
            {
                var obj = JsonConvert.DeserializeObject(jsonResult);
                return JsonConvert.SerializeObject(obj, Formatting.Indented);
            });
        }

        private Task<T> DeserializeObject<T>(string content) where T : class, new()
        {
            return Task.Run(() =>
            {
                return JsonConvert.DeserializeObject<T>(content);
            });
        }

		private Task<T> DeserializeStream<T>(HttpResponseMessage response)
		{
            return Task.Run(async () =>
            {
                using (var stream = await response.Content.ReadAsStreamAsync())
                {
                    using (var reader = new StreamReader(stream))
                    {
                        using (var json = new JsonTextReader(reader))
                        {
                            return _serializer.Deserialize<T>(json);
                        }
                    }
                }
            });
		}

        public void Dispose()
        {
            if (!string.IsNullOrEmpty(json))
            {
                json = null;
            }

            if (httpClient != null)
            {
                httpClient.Dispose();
                handler.Dispose();
                _serializer = null;
            }

        }

    }

}

