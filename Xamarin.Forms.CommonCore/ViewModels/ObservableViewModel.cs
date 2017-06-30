using System;
using Xamarin.Forms.CommonCore.Styles;

namespace Xamarin.Forms.CommonCore
{
    
	/// <summary>
	/// Observable view model.
	/// </summary>
	public class ObservableViewModel : ObservableObject
	{
		private bool isLoadingHUD;
		private bool isLoadingOverlay;
		private string loadingMessageHUD;
		private string loadingMessageOverlay;
		private string pageTitle;

		#region Injection Services (LAZY)
		private IHttpService httpService;
		private IFileStore fileStore;
		private IAccountService accountService;
		private IEncryptionService encryptionService;
		private ISqliteDb sqliteDb;
        private IBackgroundTimer backgroundTimer;
        private IAuthenticatorService authenticatorService;
		/// <summary>
		/// AuthenticatorService for Google, Facebook and Microsoft.
		/// </summary>
		/// <value>The authenticator service.</value>
		protected IAuthenticatorService AuthenticatorService
		{
			get { return authenticatorService ?? (authenticatorService = InjectionManager.GetService<IAuthenticatorService, AuthenticatorService>(true)); }
		}
		/// <summary>
		/// Backgrounding event timer that fires an event specified in the future on a repeating basis.
		/// </summary>
		/// <value>The background timer.</value>
		protected IBackgroundTimer BackgroundTimer
		{
			get { return backgroundTimer ?? (backgroundTimer = InjectionManager.GetService<IBackgroundTimer, BackgroundTimer>(true)); }
		}
        /// <summary>
        /// Embedded local database with tables defined by the application configuration file
        /// </summary>
        /// <value>The sqlite db.</value>
		protected ISqliteDb SqliteDb
		{
			get { return sqliteDb ?? (sqliteDb = InjectionManager.GetService<ISqliteDb, SqliteDb>(true)); }
		}
        /// <summary>
        /// Service that provides network calls over http.
        /// </summary>
        /// <value>The http service.</value>
		protected IHttpService HttpService
		{
			get { return httpService ?? (httpService = InjectionManager.GetService<IHttpService, HttpService>(true)); }
		}

        /// <summary>
        /// Embedded file store that allow objects to be json serialized.
        /// </summary>
        /// <value>The file store.</value>
		protected IFileStore FileStore
		{
			get { return fileStore ?? (fileStore = InjectionManager.GetService<IFileStore, FileStore>(true)); }
		}

        /// <summary>
        /// Service that uses the OS account store to retrieve dictionary data
        /// </summary>
        /// <value>The account service.</value>
		protected IAccountService AccountService
		{
			get { return accountService ?? (accountService = InjectionManager.GetService<IAccountService, AccountService>(true)); }
		}

        /// <summary>
        /// AES encryption and Hash service.
        /// </summary>
        /// <value>The encryption service.</value>
		protected IEncryptionService EncryptionService
		{
			get { return encryptionService ?? (encryptionService = InjectionManager.GetService<IEncryptionService, EncryptionService>(true)); }
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
			get { return AppData.Instance.AppNav; }
            set { AppData.Instance.AppNav = value; }
		}

        /// <summary>
        /// Gets or sets the app data.
        /// </summary>
        /// <value>The app data.</value>
        public AppData AppData
        {
			get { return AppData.Instance; }
			set { AppData.Instance = value; }
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
	}

}

