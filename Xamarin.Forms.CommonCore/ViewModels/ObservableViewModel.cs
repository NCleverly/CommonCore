using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using Xamarin.Forms.CommonCore.Styles;

namespace Xamarin.Forms.CommonCore
{

    /// <summary>
    /// Observable view model.
    /// </summary>
    public partial class ObservableViewModel : ObservableObject
    {
        private bool isLoadingHUD;
        private bool isLoadingOverlay;

        public string LoadingMessageOverlay { get; set; }
        public string LoadingMessageHUD { get; set; }

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

        #region Dependencies
        /// <summary>
        /// DependencyService for IAudioPlayer.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public IAudioPlayer AudioPlayer
        {
            get { return DependencyService.Get<IAudioPlayer>(); }
        }
        /// <summary>
        /// DependencyService for IAzureNotificationHub.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public IAzureNotificationHub AzureNotificationHub
        {
            get { return DependencyService.Get<IAzureNotificationHub>(); }
        }
        /// <summary>
        /// DependencyService for IBlurOverlay.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public IBlurOverlay BlurOverlay
        {
            get { return DependencyService.Get<IBlurOverlay>(); }
        }
        /// <summary>
        /// DependencyService for ICalendarEvent.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public ICalendarEvent CalendarEvent
        {
            get { return DependencyService.Get<ICalendarEvent>(); }
        }
        /// <summary>
        /// DependencyService for ICommunication.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public ICommunication Communication
        {
            get { return DependencyService.Get<ICommunication>(); }
        }

        /// <summary>
        /// DependencyService for IDialogPrompt.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public IDialogPrompt DialogPrompt
        {
            get { return DependencyService.Get<IDialogPrompt>(); }
        }
        /// <summary>
        /// DependencyService for ILocalNotify.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public ILocalNotify LocalNotify
        {
            get { return DependencyService.Get<ILocalNotify>(); }
        }
        /// <summary>
        /// DependencyService for IMapNavigate.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public IMapNavigate MapNavigate
        {
            get { return DependencyService.Get<IMapNavigate>(); }
        }
        /// <summary>
        /// DependencyService for IOverlayDependency.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public IOverlayDependency OverlayDependency
        {
            get { return DependencyService.Get<IOverlayDependency>(); }
        }
        /// <summary>
        /// DependencyService for IProgressIndicator.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public IProgressIndicator ProgressIndicator
        {
            get { return DependencyService.Get<IProgressIndicator>(); }
        }
        /// <summary>
        /// DependencyService for ISnackBar.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public ISnackBar SnackBar
        {
            get { return DependencyService.Get<ISnackBar>(); }
        }
        /// <summary>
        /// DependencyService for IViewStack.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public IViewStack ViewStack
        {
            get { return DependencyService.Get<IViewStack>(); }
        }

        #endregion

        public string PageTitle { get; set; }

        /// <summary>
        /// Gets or sets the navigation.
        /// </summary>
        /// <value>The navigation.</value>
        [JsonIgnore]
        public INavigation Navigation
        {
            get { return CoreSettings.AppNav; }
            set { CoreSettings.AppNav = value; }
        }

        [JsonIgnore]
        public bool IsLoadingOverlay
        {
            get
            {
                return isLoadingOverlay;
            }

            set
            {

                isLoadingOverlay = value;
                OnPropertyChanged("IsLoadingOverlay");
                if (value)
                {
                    var color = Color.FromHex(CoreStyles.OverlayColor);
                    OverlayDependency.ShowOverlay(LoadingMessageOverlay, color, CoreStyles.OverlayOpacity);
                }
                else
                {
                    OverlayDependency.HideOverlay();
                }

            }
        }

        [JsonIgnore]
        public bool IsLoadingHUD
        {
            get
            {
                return isLoadingHUD;
            }

            set
            {
                if (isLoadingHUD != value)
                {
                    isLoadingHUD = value;
                    OnPropertyChanged("IsLoadingHUD");
                    //Ensure that this action is performed on the UI thread
                    Device.BeginInvokeOnMainThread(() =>
                    {
                        if (value)
                        {
                            ProgressIndicator.ShowProgress(LoadingMessageHUD);
                        }
                        else
                        {
                            ProgressIndicator.Dismiss();
                        }
                    });
                }
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

        /// <summary>
        /// Method to receive viewmodel messages.  (NO BASE IMPLEMENTATION)
        /// </summary>
        /// <param name="key">Key.</param>
        /// <param name="obj">Object.</param>
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
        /// called when page need override soft back button.  (NO BASE IMPLEMENTATION)
        /// </summary>
        public virtual void OnSoftBackButtonPressed() { }

        /// <summary>
        /// Loads the view model resources. Do not perform blocking calls in this method!  (NO BASE IMPLEMENTATION)
        /// </summary>
        public virtual void LoadResources(string parameter = null) { }
        /// <summary>
        /// Releads the view model resources.  (NO BASE IMPLEMENTATION)
        /// </summary>
        public virtual void ReleaseResources(string parameter = null) { }

        /// <summary>
        /// Saves the state of the viewmodel. (NO BASE IMPLEMENTATION)
        /// </summary>
        public virtual void SaveState() { }

        /// <summary>
        /// Loads viewmodel from some persisted state. (NO BASE IMPLEMENTATION)
        /// </summary>
        public virtual void LoadState() { }
    }

}

