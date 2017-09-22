using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{
    public abstract class BusinessBase : IDisposable
    {
        #region ReadOnly AppData Settings
        [JsonIgnore]
        public string AESEncryptionKey { get { return CoreSettings.Config.AESEncryptionKey; } }
        [JsonIgnore]
        public Dictionary<string, string> WebApis { get { return CoreSettings.Config?.WebApi; } }
        [JsonIgnore]
        public Dictionary<string, string> CustomSettings { get { return CoreSettings.Config?.CustomSettings; } }
        #endregion

        #region Injection Services

        public ILogService Log
        {
            get
            {
                return (ILogService)InjectionManager.GetService<ILogService, LogService>(true);
            }
        }

        /// <summary>
        /// AuthenticatorService for Google, Facebook and Microsoft.
        /// </summary>
        /// <value>The authenticator service.</value>
        [JsonIgnore]
        protected IAuthenticatorService AuthenticatorService
        {
            get
            {
                return (IAuthenticatorService)InjectionManager.GetService<IAuthenticatorService, AuthenticatorService>(true);
            }
        }
        /// <summary>
        /// Backgrounding event timer that fires an event specified in the future on a repeating basis.
        /// </summary>
        /// <value>The background timer.</value>
        [JsonIgnore]
        protected IBackgroundTimer BackgroundTimer
        {
            get
            {
                return (IBackgroundTimer)InjectionManager.GetService<IBackgroundTimer, BackgroundTimer>(true);
            }
        }
        /// <summary>
        /// Embedded local database with tables defined by the application configuration file
        /// </summary>
        /// <value>The sqlite db.</value>
        [JsonIgnore]
        protected ISqliteDb SqliteDb
        {
            get
            {
                return (ISqliteDb)InjectionManager.GetService<ISqliteDb, SqliteDb>(true);
            }
        }
        /// <summary>
        /// Service that provides network calls over http.
        /// </summary>
        /// <value>The http service.</value>
        [JsonIgnore]
        protected IHttpService HttpService
        {
            get
            {
                return (IHttpService)InjectionManager.GetService<IHttpService, HttpService>(true);
            }
        }

        /// <summary>
        /// Embedded file store that allow objects to be json serialized.
        /// </summary>
        /// <value>The file store.</value>
        [JsonIgnore]
        protected IFileStore FileStore
        {
            get
            {
                return (IFileStore)InjectionManager.GetService<IFileStore, FileStore>(true);
            }
        }

        /// <summary>
        /// Service that uses the OS account store to retrieve dictionary data
        /// </summary>
        /// <value>The account service.</value>
        [JsonIgnore]
        protected IAccountService AccountService
        {
            get
            {
                return (IAccountService)InjectionManager.GetService<IAccountService, AccountService>(true);
            }
        }

        /// <summary>
        /// AES encryption and Hash service.
        /// </summary>
        /// <value>The encryption service.</value>
        [JsonIgnore]
        protected IEncryptionService EncryptionService
        {
            get
            {
                return (IEncryptionService)InjectionManager.GetService<IEncryptionService, EncryptionService>(true);
            }
        }

		#endregion

		public virtual void Dispose()
		{

		}
    }
}
