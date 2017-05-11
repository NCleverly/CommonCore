using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{
	public class DataExampleViewModel : ObservableViewModel
	{
		private string clearText;
		private string encryptedText;
		private string clearHash1;
		private string clearHash2;
		private string hashMatchMessage;
        private string backgroundButtonTitle;
		private ObservableCollection<RandomUser> randomUsers;
		private ObservableCollection<Appointment> appointments;

		public ObservableCollection<Appointment> Appointments
		{
			get { return appointments ?? (appointments = new ObservableCollection<Appointment>()); }
			set { SetProperty(ref appointments, value); }
		}

		public ObservableCollection<RandomUser> RandomUsers
		{
			get { return randomUsers ?? (randomUsers = new ObservableCollection<RandomUser>()); }
			set { SetProperty(ref randomUsers, value); }
		}

		public string HashMatchMessage
		{
			get { return hashMatchMessage; }
			set { SetProperty(ref hashMatchMessage, value); }
		}
		public string ClearHash1
		{
			get { return clearHash1; }
			set { SetProperty(ref clearHash1, value); }
		}
		public string ClearHash2
		{
			get { return clearHash2; }
			set { SetProperty(ref clearHash2, value); }
		}

		public string ClearText
		{
			get { return clearText; }
			set { SetProperty(ref clearText, value); }
		}
		public string EncryptedText
		{
			get { return encryptedText; }
			set { SetProperty(ref encryptedText, value); }
		}

		public string BackgroundButtonTitle 
        { 
			get { return backgroundButtonTitle; }
			set { SetProperty(ref backgroundButtonTitle, value); }
        }


		public ICommand EncryptText { get; set; }
		public ICommand HashText { get; set; }
		public ICommand HttpDownloadStart { get; set; }
		public ICommand SqliteLoadStart { get; set; }
		public ICommand LoadMoreCommand { get; set; }
        public ICommand StartBackgrounding { get; set; }
       

        public DataExampleViewModel()
		{
            BackgroundButtonTitle = "Background Timer";
			Appointments = new ObservableCollection<Appointment>();
			RandomUsers = new ObservableCollection<RandomUser>();

			HashText = new RelayCommand((obj) =>
			{
				if (!string.IsNullOrEmpty(ClearHash1) && !string.IsNullOrEmpty(ClearHash2))
				{
					var h1 = this.EncryptionService.GetHashString(ClearHash1);
					var h2 = this.EncryptionService.GetHashString(ClearHash2);
					var isMatch = h1.Equals(h2);
					if (isMatch)
						HashMatchMessage = string.Empty;
					else
						HashMatchMessage = "The entries do not match";
				}

			});
			EncryptText = new RelayCommand((obj) =>
			{
				if (string.IsNullOrEmpty(EncryptedText))
				{
					if (!string.IsNullOrEmpty(ClearText))
					{
						EncryptedText = this.EncryptionService.AesEncrypt(ClearText, AppSettings.AESEncryptionKey);
						ClearText = string.Empty;
					}
				}
				else
				{
					ClearText = this.EncryptionService.AesDecrypt(EncryptedText, AppSettings.AESEncryptionKey);
					EncryptedText = string.Empty;
				}
			});

			HttpDownloadStart = new RelayCommand(async (obj) =>
			{
				await GetRandomUsers();
			});

			SqliteLoadStart = new RelayCommand(async (obj) =>
			{
				await GetDbAppointments();
			});

            StartBackgrounding = new RelayCommand((obj) =>
			{
                if (BackgroundButtonTitle.StartsWith("Stop", System.StringComparison.OrdinalIgnoreCase))
                {
                    this.BackgroundTimer.Stop();
                    BackgroundButtonTitle = "Background Timer";
                }
                else
                {
                    var timerService = InjectionManager.GetService<IIntervalCallback, TimerCallbackService>(true);
                    this.BackgroundTimer.Start(1, timerService);
                    BackgroundButtonTitle = $"Stop {BackgroundButtonTitle}";
                }
			});

		}

		public async Task GetDbAppointments()
		{
			this.LoadingMessageHUD = "Sqlite loading...";
			this.IsLoadingHUD = true;

			var result = await this.SqliteDb.GetByQuery<Appointment>((x) => x.MarkedForDelete == false);

			this.IsLoadingHUD = false;
			if (result.Success)
			{
				Appointments = result.Response.ToObservable();
			}

		}

		private async Task GetRandomUsers()
		{
			this.LoadingMessageHUD = "Performing download...";
			this.IsLoadingHUD = true;

			var url = AppData.WebApis["randomuser"];

			//var isAvailable = await this.HttpService.PingDomain(url);

			var result = await this.HttpService.Get<RootObject>(url);
			this.IsLoadingHUD = false;
			if (result.Success)
			{
				RandomUsers = result.Response.results.ToRandomUserCollection().ToObservable();
			}

		}

		public override void OnViewMessageReceived(string key, object obj)
		{
			if (key == AppSettings.RefreshAppoints)
			{
				GetDbAppointments().ContinueWith((t) => { });
			}
		}
	}
}
