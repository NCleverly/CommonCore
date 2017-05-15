using System;
using System.ComponentModel;
using System.Windows.Input;
using Xamarin.Forms.CommonCore.Styles;

namespace Xamarin.Forms.CommonCore
{
	public class RelayCommand : ICommand, IDisposable
	{
		private Action<object> _execute;
		private Func<bool> _validator;
		private INotifyPropertyChanged _npc;
		public event EventHandler CanExecuteChanged;

		public bool CanExecute(object parameter)
		{
			return _validator != null ? _validator.Invoke() : true;
		}

		public RelayCommand(Action<object> execute, Func<bool> validator = null, INotifyPropertyChanged npc = null)
		{
			_execute = execute;
			_validator = validator;
			_npc = npc;

			if (_npc != null)
			{
				_npc.PropertyChanged += PropertyChangedEvent;
			}
		}
		private void PropertyChangedEvent(object sender, PropertyChangedEventArgs args)
		{
			CanExecuteChanged?.Invoke(this, null);
		}

		public void Execute(object parameter)
		{
			_execute(parameter);
		}

		~RelayCommand()
		{
			if (_npc != null)
				_npc.PropertyChanged -= PropertyChangedEvent;
		}
		public void Dispose()
		{
			if (_npc != null)
				_npc.PropertyChanged -= PropertyChangedEvent;
		}
	}

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


		protected IBackgroundTimer BackgroundTimer
		{
			get { return backgroundTimer ?? (backgroundTimer = InjectionManager.GetService<IBackgroundTimer, BackgroundTimer>(true)); }
		}

		protected ISqliteDb SqliteDb
		{
			get { return sqliteDb ?? (sqliteDb = InjectionManager.GetService<ISqliteDb, SqliteDb>(true)); }
		}

		protected IHttpService HttpService
		{
			get { return httpService ?? (httpService = InjectionManager.GetService<IHttpService, HttpService>(true)); }
		}


		protected IFileStore FileStore
		{
			get { return fileStore ?? (fileStore = InjectionManager.GetService<IFileStore, FileStore>(true)); }
		}


		protected IAccountService AccountService
		{
			get { return accountService ?? (accountService = InjectionManager.GetService<IAccountService, AccountService>(true)); }
		}


		protected IEncryptionService EncryptionService
		{
			get { return encryptionService ?? (encryptionService = InjectionManager.GetService<IEncryptionService, EncryptionService>(true)); }
		}
		#endregion

		public string PageTitle
		{
			get { return pageTitle; }
			set { SetProperty(ref pageTitle, value); }
		}

		public INavigation Navigation
		{
			get { return AppData.Instance.AppNav; }
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
					DependencyService.Get<IOverlayDependency>().ShowOverlay(loadingMessageOverlay, color, CoreStyles.OverlayOpacity);
				}
				else
				{
					DependencyService.Get<IOverlayDependency>().HideOverlay();
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
                        DependencyService.Get<IProgressIndicator>().ShowProgress(loadingMessageHUD);
                    }
                    else
                    {
                        DependencyService.Get<IProgressIndicator>().Dismiss();
                    }
                });
			}
		}

		protected void ShowMessage(Prompt prompt)
		{
            Device.BeginInvokeOnMainThread(() => { 
                DependencyService.Get<IDialogPrompt>().ShowMessage(prompt);
            });
			
		}

		protected void ShowActionSheet(string title, string message, string[] options, Action<int> callback)
		{
            Device.BeginInvokeOnMainThread(() =>
            {
                DependencyService.Get<IDialogPrompt>().ShowActionSheet(title, message, options, callback);
            });
		}



		protected void ShowNotification(LocalNotification notification)
		{
			DependencyService.Get<ILocalNotify>().RequestPermission((permit) =>
			{
				if (permit)
				{
					Device.BeginInvokeOnMainThread(() =>
					{
						DependencyService.Get<ILocalNotify>().Show(notification);
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

