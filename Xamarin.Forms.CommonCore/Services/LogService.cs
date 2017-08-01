using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.IO.IsolatedStorage;
using System.Threading;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{
    public class LogService : ILogService
    {
        private SemaphoreSlim errorStoreLock;
        private SemaphoreSlim analyticStoreLock;
        private JsonSerializer _serializer;
        private int dayOfYear;
        private string errorFileName;
        private string analayticFileName;
        private List<AnalyticLog> analyticLogs;
        private List<ErrorLog> errorLogs;

        public LogService()
        {
            _serializer = new JsonSerializer();
            errorStoreLock = new SemaphoreSlim(1);
            analyticStoreLock = new SemaphoreSlim(1);
            dayOfYear = DateTime.Now.DayOfYear;
            errorFileName = $"error_{dayOfYear}";
            analayticFileName = $"analytic_{dayOfYear}";
        }

        public void LogAnalytics(string pageName, TrackingMetatData trackingData,  string metatData)
        {
            var aLog = new AnalyticLog()
            {
                UserId = CoreSettings.UserId,
                ViewName = pageName,
                TrackingInfo = trackingData,
                MetaData = metatData
            };

            if(analyticLogs==null){
				GetAsync<List<AnalyticLog>>(analayticFileName, analyticStoreLock).ContinueWith((t) =>
                {
                	if (t.Result.Success)
                	{
                		analyticLogs = t.Result.Response;
                	}
                	else
                	{
                		analyticLogs = new List<AnalyticLog>();
                	}
                    analyticLogs.Add(aLog);
                    SaveAsync<List<AnalyticLog>>(analayticFileName, analyticLogs, analyticStoreLock).ContinueWith((x) => { });
                });
            }
            else{
                analyticLogs.Add(aLog);
                SaveAsync<List<AnalyticLog>>(analayticFileName, analyticLogs, analyticStoreLock).ContinueWith((x) => { });
            }

        }

        public void LogException(Exception exception, string metatData)
        {
            var err = new ErrorLog()
            {
                ErrorMessage = exception.Message,
                ErrorType = exception.GetType().Name,
                InnerMessage = exception.InnerException?.Message,
                InnerType = exception.InnerException?.GetType().Name,
                StackTrace = exception.StackTrace,
                UTCTicks = DateTime.UtcNow.Ticks,
                UserId = CoreSettings.UserId,
                MetaData = metatData
            };

            if(errorLogs==null){
				GetAsync<List<ErrorLog>>(errorFileName, errorStoreLock).ContinueWith((t) =>
				{
				    if (t.Result.Success)
				    {
				        errorLogs = t.Result.Response;
				    }
				    else
				    {
				        errorLogs = new List<ErrorLog>();
				    }
					errorLogs.Add(err);
					SaveAsync<List<ErrorLog>>(errorFileName, errorLogs, errorStoreLock).ContinueWith((x) => { });
				});
			}
            else{
				errorLogs.Add(err);
				SaveAsync<List<ErrorLog>>(errorFileName, errorLogs, errorStoreLock).ContinueWith((x) => { });
            }

        }

        public void LogResponse(IReponse response, string metatData)
        {
            if (response.Error != null)
                LogException(response.Error, metatData);
        }

        public async Task ClearLogging(LogType logType)
        {
            if (logType == LogType.Analytic)
            {
                for (var x = 0; x < 15; x++)
                {
                    var doy = dayOfYear - x;
                    var doyfn = $"analytic_{doy}";
                    var result = await GetAsync<List<AnalyticLog>>(doyfn, analyticStoreLock);
                    if (result.Success)
                    {
                        await DeleteAsync(doyfn, analyticStoreLock);

                    }
                }
                analyticLogs = new List<AnalyticLog>();
            }
            else
            {
                for (var x = 0; x < 15; x++)
                {
                    var doy = dayOfYear - x;
                    var doyfn = $"error_{doy}";
                    var result = await GetAsync<List<ErrorLog>>(doyfn, errorStoreLock);
                    if (result.Success)
                    {

                        await DeleteAsync(doyfn, errorStoreLock);

                    }
                }
                errorLogs = new List<ErrorLog>();
            }
        }
        public async Task<IList> GetHistoricalLogs(LogType logType)
        {

            if (logType == LogType.Analytic)
            {
                var collection = new List<AnalyticLog>();
                for (var x = 0; x < 15; x++)
                {
                    var doy = dayOfYear - x;
                    var doyfn = $"analytic_{doy}";
                    var result = await GetAsync<List<AnalyticLog>>(doyfn, analyticStoreLock);
                    if (result.Success)
                    {
                        collection.AddRange(result.Response);
                    }
                }
                return collection;
            }
            else
            {
				var collection = new List<ErrorLog>();
				for (var x = 0; x < 15; x++)
				{
					var doy = dayOfYear - x;
					var doyfn = $"error_{doy}";
					var result = await GetAsync<List<ErrorLog>>(doyfn, errorStoreLock);
					if (result.Success)
					{
						collection.AddRange(result.Response);
					}
				}
				return collection;
            }

        }

		private async Task<GenericResponse<T>> GetAsync<T>(string contentName, SemaphoreSlim semaPhore) where T : class, new()
		{
			await semaPhore.WaitAsync();
			return await Task.Run(() =>
			{
				var response = new GenericResponse<T>() { Success = false };
				try
				{
					using (var isoStorage = IsolatedStorageFile.GetUserStoreForApplication())
					{
						if (isoStorage.FileExists(contentName))
						{
							try
							{
								using (var s = isoStorage.OpenFile(contentName, FileMode.OpenOrCreate))
								{
									using (var reader = new StreamReader(s))
									{
										using (var json = new JsonTextReader(reader))
										{
											response.Response = _serializer.Deserialize<T>(json);
											response.Success = true;
										}
									}
								}
							}
							catch (Exception ex)
							{
								response.Error = ex;
							}
						}
					}

				}
				catch (Exception ex)
				{
					response.Error = ex;
					ex.ConsoleWrite();
				}
				finally
				{
					semaPhore.Release();
				}
				return response;
			});

		}


		private async Task<BooleanResponse> SaveAsync<T>(string contentName, object obj, SemaphoreSlim semaPhore)
		{
			await semaPhore.WaitAsync();
			return await Task.Run(() =>
			{
				var response = new BooleanResponse() { Success = false };
				try
				{
					using (var isoStorage = IsolatedStorageFile.GetUserStoreForApplication())
					{
						using (var s = isoStorage.OpenFile(contentName, FileMode.Create))
						{
							using (var sw = new StreamWriter(s))
							{
								_serializer.Serialize(new JsonTextWriter(sw), obj);
								sw.Flush();
								sw.Close();
								response.Success = true;
							}
						}
					}

				}
				catch (Exception ex)
				{
					ex.ConsoleWrite(true);
				}
				finally
				{
					semaPhore.Release();
				}
				return response;
			});

		}

		private async Task<BooleanResponse> DeleteAsync(string contentName, SemaphoreSlim semaPhore)
		{
			await semaPhore.WaitAsync();
			var response = new BooleanResponse() { Success = false };
			try
			{
				await Task.Run(() =>
				{
					using (var isoStorage = IsolatedStorageFile.GetUserStoreForApplication())
					{
						if (isoStorage.FileExists(contentName))
						{
							isoStorage.DeleteFile(contentName);
						}
						response.Success = true;
					}
				});
			}
			catch (Exception ex)
			{
				response.Error = ex;
				ex.ConsoleWrite();
			}
			finally
			{
				semaPhore.Release();
			}
			return response;
		}
    }
}
