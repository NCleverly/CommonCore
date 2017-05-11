using System.Collections.ObjectModel;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;
using System.Linq;
using Xamarin.Forms.CommonCore;
using PushNotification.Plugin; //Xam.Plugin.PushNotification from nuget or get from github and compile to latest version

namespace referenceguide
{
	public class SimpleViewModel : ObservableViewModel
	{
		private string firstName;
		private string pushButtonLabel;
		private ObservableCollection<string> words;

		public string FirstName
		{
			get { return firstName; }
			set { SetProperty(ref firstName, value); }

		}
		public ObservableCollection<string> Words
		{
			get { return words ?? (words = new ObservableCollection<string>()); }
			set { SetProperty(ref words, value); }
		}

		public string PushButtonLabel
		{
			get { return pushButtonLabel; }
			set { SetProperty(ref pushButtonLabel, value); }
		}


		public ICommand DialogClick { get; set; }
		public ICommand NotificationClick { get; set; }
		public ICommand OverlayClick { get; set; }
		public ICommand Blur { get; set; }
		public ICommand CreateCalendar { get; set; }
		public ICommand PushRegister { get; set; }


		public SimpleViewModel()
		{
			PushButtonLabel = "Register Push Notification";

			var lst = new string[]{
			  "mono",
			  "monodroid",
			  "monotouch",
			  "monorail",
			  "monodevelop",
			  "monotone",
			  "monopoly",
			  "monomodal",
			  "mononucleosis"
			};
			lst.ToList().ForEach((item) => Words.Add(item));

			DialogClick = new RelayCommand((obj) =>
			{
				this.ShowMessage(new Prompt()
				{
					Title = "Test",
					Message = "This is just a message"
				});
			});

			NotificationClick = new RelayCommand((obj) =>
			{
				this.ShowNotification(new LocalNotification()
				{
					Id = 1,
					Title = "Test",
					Message = "This is just a message"
				});


			});

			OverlayClick = new RelayCommand(async (obj) =>
			{
				LoadingMessageOverlay = "Loading Overlay Data...";
				IsLoadingOverlay = true;
				await Task.Delay(2000);
				IsLoadingOverlay = false;
			});

			Blur = new RelayCommand((obj) =>
			{
				DependencyService.Get<IBlurOverlay>().Show();

				Device.BeginInvokeOnMainThread(() =>
				{
					this.ShowMessage(new Prompt()
					{
						Title = "Blurred Background",
						Message = "Click okay to close",
						Callback = (result) =>
						{
							DependencyService.Get<IBlurOverlay>().Hide();
						}
					});

				});

			});

			CreateCalendar = new RelayCommand(async (obj) =>
			{
				await Navigation.PushAsync(new CalendarEventPage() { DevicePersistOnly = true });
			});

			PushRegister = new RelayCommand((obj) =>
			{
				var di = DependencyService.Get<IDeviceInfo>().GetDeviceInformation();

				if (Device.RuntimePlatform.ToUpper() == "IOS" &&
				   di.DeviceType == DeviceState.Simulator)
				{
					this.ShowMessage(new Prompt()
					{
						Title = "Simulator",
						Message = "Push Notifications Unavailable"
					});
				}
				else
				{
					CrossPushNotification.Current.Register();
					PushButtonLabel = "** Notifications Registered **";
				}


			});
		}

		public void DisplayNotification(LocalNotification note)
		{
			Device.BeginInvokeOnMainThread(() =>
			{
				this.ShowNotification(note);
			});
		}
	}
}


