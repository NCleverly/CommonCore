using System;
using System.IO;
using System.IO.IsolatedStorage;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{

	public class FileStore : IFileStore
    {
        private JsonSerializer _serializer;

        private static SemaphoreSlim fileStoreLock = new SemaphoreSlim(1);

        public FileStore()
        {
            _serializer = new JsonSerializer();
        }

        public async Task<GenericResponse<T>> GetAsync<T>(string contentName) where T : class, new()
        {
            await fileStoreLock.WaitAsync();
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
                    fileStoreLock.Release();
                }
                return response;
            });

        }

        public async Task<BooleanResponse> DeleteAsync(string contentName)
        {
            await fileStoreLock.WaitAsync();
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
                fileStoreLock.Release();
            }
            return response;
        }

        public async Task<BooleanResponse> SaveAsync<T>(string contentName, object obj)
        {
            await fileStoreLock.WaitAsync();
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
                    response.Error = ex;
                }
                finally
                {
                    fileStoreLock.Release();
                }
                return response;
            });

        }

        public async Task<StringResponse> GetStringAsync(string contentName)
        {
            await fileStoreLock.WaitAsync();
            var response = new StringResponse { Success = false };
            return await Task.Run(() =>
            {
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
                                    using (var sr = new StreamReader(s))
                                    {
                                        var content = sr.ReadToEnd();
                                        sr.Close();
                                        response.Success = true;
                                        response.Response = content;
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
                }
                finally
                {
                    fileStoreLock.Release();
                }
                return response;
            });
        }

        public async Task<BooleanResponse> SaveStringAsync(string contentName, string obj)
        {
            await fileStoreLock.WaitAsync();

            var response = new BooleanResponse() { Success = false };
            return await Task.Run(() =>
            {
                try
                {
                    using (var isoStorage = IsolatedStorageFile.GetUserStoreForApplication())
                    {
                        using (var s = isoStorage.OpenFile(contentName, FileMode.Create))
                        {
                            using (var sw = new StreamWriter(s))
                            {
                                sw.Write(obj);
                                sw.Flush();
                                sw.Close();
                                response.Success = true;
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    response.Error = ex;
                }
                finally
                {

                    fileStoreLock.Release();
                }
                return response;
            });
        }

    }
}

