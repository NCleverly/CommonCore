using System;
using System.Collections.Generic;
using Xamarin.Forms.CommonCore.Styles;

namespace Xamarin.Forms.CommonCore
{
    
	/// <summary>
	/// Observable view model.
	/// </summary>
	public abstract partial class ObservableViewModel : ObservableObject
	{
		private bool isLoadingHUD;
		private bool isLoadingOverlay;
		private string loadingMessageHUD;
		private string loadingMessageOverlay;
		private string pageTitle;

		#region ReadOnly AppData Settings
        public string AESEncryptionKey { get { return CoreSettings.Config.AESEncryptionKey; } }
		public Dictionary<string, string> WebApis { get { return CoreSettings.Config?.WebApi; } }
		public Dictionary<string, string> CustomSettings { get { return CoreSettings.Config?.CustomSettings; } }
        #endregion

        #region Injection Services (LAZY)
        private WeakReference<IHttpService> httpService;
		private WeakReference<IFileStore> fileStore;
		private WeakReference<IAccountService> accountService;
		private WeakReference<IEncryptionService> encryptionService;
		private WeakReference<ISqliteDb> sqliteDb;
        private WeakReference<IBackgroundTimer> backgroundTimer;
        private WeakReference<IAuthenticatorService> authenticatorService;
        private WeakReference<ILogService> log;

        public ILogService Log
        {
            get
            {
                if (log == null)
                    log = new WeakReference<ILogService>(InjectionManager.GetService<ILogService, LogService>(true));
                return log.ToObject<ILogService>();
            }
        }

		/// <summary>
		/// AuthenticatorService for Google, Facebook and Microsoft.
		/// </summary>
		/// <value>The authenticator service.</value>
		protected IAuthenticatorService AuthenticatorService
		{
			get
			{
				if (authenticatorService == null)
					authenticatorService = new WeakReference<IAuthenticatorService>(InjectionManager.GetService<IAuthenticatorService, AuthenticatorService>(true));
				return authenticatorService.ToObject<IAuthenticatorService>();
			}
		}
		/// <summary>
		/// Backgrounding event timer that fires an event specified in the future on a repeating basis.
		/// </summary>
		/// <value>The background timer.</value>
		protected IBackgroundTimer BackgroundTimer
		{
			get
			{
				if (backgroundTimer == null)
					backgroundTimer = new WeakReference<IBackgroundTimer>(InjectionManager.GetService<IBackgroundTimer, BackgroundTimer>(true));
				return backgroundTimer.ToObject<IBackgroundTimer>();
			}
		}
        /// <summary>
        /// Embedded local database with tables defined by the application configuration file
        /// </summary>
        /// <value>The sqlite db.</value>
		protected ISqliteDb SqliteDb
		{
			get
			{
				if (sqliteDb == null)
					sqliteDb = new WeakReference<ISqliteDb>(InjectionManager.GetService<ISqliteDb, SqliteDb>(true));
				return sqliteDb.ToObject<ISqliteDb>();
			}
		}
        /// <summary>
        /// Service that provides network calls over http.
        /// </summary>
        /// <value>The http service.</value>
		protected IHttpService HttpService
		{
			get
			{
				if (httpService == null)
					httpService = new WeakReference<IHttpService>(InjectionManager.GetService<IHttpService, HttpService>(true));
				return httpService.ToObject<IHttpService>();
			}
		}

        /// <summary>
        /// Embedded file store that allow objects to be json serialized.
        /// </summary>
        /// <value>The file store.</value>
		protected IFileStore FileStore
		{
			get
			{
				if (fileStore == null)
					fileStore = new WeakReference<IFileStore>(InjectionManager.GetService<IFileStore, FileStore>(true));
				return fileStore.ToObject<IFileStore>();
			}
		}

        /// <summary>
        /// Service that uses the OS account store to retrieve dictionary data
        /// </summary>
        /// <value>The account service.</value>
		protected IAccountService AccountService
		{
			get
			{
				if (accountService == null)
					accountService = new WeakReference<IAccountService>(InjectionManager.GetService<IAccountService, AccountService>(true));
				return accountService.ToObject<IAccountService>();
			}
		}

        /// <summary>
        /// AES encryption and Hash service.
        /// </summary>
        /// <value>The encryption service.</value>
		protected IEncryptionService EncryptionService
		{
			get
			{
				if (encryptionService == null)
					encryptionService = new WeakReference<IEncryptionService>(InjectionManager.GetService<IEncryptionService, EncryptionService>(true));
				return encryptionService.ToObject<IEncryptionService>();
			}
		}
		#endregion

		#region Dependencies
		/// <summary>
		/// DependencyService for IAudioPlayer.
		/// </summary>
		/// <value>The audio player.</value>
		public IAudioPlayer AudioPlayer
        {
            get { return DependencyService.Get<IAudioPlayer>(); }
        }
		/// <summary>
		/// DependencyService for IAzureNotificationHub.
		/// </summary>
		/// <value>The audio player.</value>
		public IAzureNotificationHub AzureNotificationHub
		{
			get { return DependencyService.Get<IAzureNotificationHub>(); }
		}
		/// <summary>
		/// DependencyService for IBlurOverlay.
		/// </summary>
		/// <value>The audio player.</value>
		public IBlurOverlay BlurOverlay
		{
			get { return DependencyService.Get<IBlurOverlay>(); }
		}
		/// <summary>
		/// DependencyService for ICalendarEvent.
		/// </summary>
		/// <value>The audio player.</value>
		public ICalendarEvent CalendarEvent
		{
			get { return DependencyService.Get<ICalendarEvent>(); }
		}
		/// <summary>
		/// DependencyService for ICommunication.
		/// </summary>
		/// <value>The audio player.</value>
		public ICommunication Communication
		{
			get { return DependencyService.Get<ICommunication>(); }
		}
		/// <summary>
		/// DependencyService for IDeviceInfo.
		/// </summary>
		/// <value>The audio player.</value>
		public IDeviceInfo DeviceInfo
		{
			get { return DependencyService.Get<IDeviceInfo>(); }
		}
		/// <summary>
		/// DependencyService for IDialogPrompt.
		/// </summary>
		/// <value>The audio player.</value>
		public IDialogPrompt DialogPrompt
		{
			get { return DependencyService.Get<IDialogPrompt>(); }
		}
		/// <summary>
		/// DependencyService for ILocalNotify.
		/// </summary>
		/// <value>The audio player.</value>
		public ILocalNotify LocalNotify
		{
			get { return DependencyService.Get<ILocalNotify>(); }
		}
		/// <summary>
		/// DependencyService for IMapNavigate.
		/// </summary>
		/// <value>The audio player.</value>
		public IMapNavigate MapNavigate
		{
			get { return DependencyService.Get<IMapNavigate>(); }
		}
		/// <summary>
		/// DependencyService for IOverlayDependency.
		/// </summary>
		/// <value>The audio player.</value>
		public IOverlayDependency OverlayDependency
		{
			get { return DependencyService.Get<IOverlayDependency>(); }
		}
		/// <summary>
		/// DependencyService for IProgressIndicator.
		/// </summary>
		/// <value>The audio player.</value>
		public IProgressIndicator ProgressIndicator
		{
			get { return DependencyService.Get<IProgressIndicator>(); }
		}
		/// <summary>
		/// DependencyService for ISnackBar.
		/// </summary>
		/// <value>The audio player.</value>
		public ISnackBar SnackBar
		{
			get { return DependencyService.Get<ISnackBar>(); }
		}
		/// <summary>
		/// DependencyService for IViewStack.
		/// </summary>
		/// <value>The audio player.</value>
		public IViewStack ViewStack
		{
			get { return DependencyService.Get<IViewStack>(); }
		}

		#endregion

		public string PageTitle
		{
			get { return pageTitle; }
			set { SetProperty(ref pageTitle, value); }
		}

        /// <summary>
        /// Gets or sets the navigation.
        /// </summary>
        /// <value>The navigation.</value>
		public INavigation Navigation
		{
			get { return CoreSettings.AppNav; }
            set { CoreSettings.AppNav = value; }
		}


		public string LoadingMessageOverlay
		{
			get
			{
				return loadingMessageOverlay;
			}

			set
			{
				SetProperty(ref loadingMessageOverlay, value);
			}
		}

		public string LoadingMessageHUD
		{
			get
			{
				return loadingMessageHUD;
			}

			set
			{
				SetProperty(ref loadingMessageHUD, value);
			}
		}

		public bool IsLoadingOverlay
		{
			get
			{
				return isLoadingOverlay;
			}

			set
			{
				SetProperty(ref isLoadingOverlay, value);
				if (value)
				{
					var color = Color.FromHex(CoreStyles.OverlayColor);
					OverlayDependency.ShowOverlay(loadingMessageOverlay, color, CoreStyles.OverlayOpacity);
				}
				else
				{
					OverlayDependency.HideOverlay();
				}
			}
		}

		public bool IsLoadingHUD
		{
			get
			{
				return isLoadingHUD;
			}

			set
			{
				SetProperty(ref isLoadingHUD, value);
                //Ensure that this action is performed on the UI thread
                Device.BeginInvokeOnMainThread(() =>
                {
                    if (value)
                    {
                        ProgressIndicator.ShowProgress(loadingMessageHUD);
                    }
                    else
                    {
                        ProgressIndicator.Dismiss();
                    }
                });
			}
		}


		protected void ShowNotification(LocalNotification notification)
		{
			LocalNotify.RequestPermission((permit) =>
			{
				if (permit)
				{
					Device.BeginInvokeOnMainThread(() =>
					{
						LocalNotify.Show(notification);
					});

				}
			});

		}


		/// <summary>
		/// Broadcast message to all view model instances
		/// </summary>
		/// <param name="key">Key.</param>
		/// <param name="obj">Object.</param>
		protected void SendViewMessage(string key, object obj)
		{
			InjectionManager.SendViewModelMessage(key, obj);
		}
		/// <summary>
		/// Broadcast message to a particular view model instance
		/// </summary>
		/// <param name="key">Key.</param>
		/// <param name="obj">Object.</param>
		/// <typeparam name="T">The 1st type parameter.</typeparam>
		protected void SendViewMessage<T>(string key, object obj) where T : ObservableViewModel
		{
			InjectionManager.SendViewModelMessage<T>(key, obj);
		}

		protected bool IsEmtpyOrNull(params string[] properties)
		{
			foreach (var prop in properties)
			{
				if (string.IsNullOrEmpty(prop))
					return true;
			}
			return false;
		}

		public virtual void OnViewMessageReceived(string key, object obj) { }

		/// <summary>
		/// //false is default value when system call back press
		/// </summary>
		/// <returns></returns>
		public virtual bool OnBackButtonPressed()
		{
			//false is default value when system call back press
			return false;
		}

		/// <summary>
		/// called when page need override soft back button
		/// </summary>
		public virtual void OnSoftBackButtonPressed() { }

        /// <summary>
        /// Loads the view model resources. Do not perform blocking calls in this method!
        /// 
        /// </summary>
        public virtual void LoadResources(string parameter=null){}
        /// <summary>
        /// Releads the view model resources.
        /// </summary>
        public virtual void ReleaseResources(string parameter = null){}

	}

}

