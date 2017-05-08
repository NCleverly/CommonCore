using Xamarin.Forms.CommonCore;
using Xamarin.Forms;
using Plugin.Connectivity;
using Plugin.Connectivity.Abstractions;
using Microsoft.Practices.Unity;
using PushNotification.Plugin;

namespace referenceguide
{
	public class App : Application
	{
		public App()
		{
			AppData.NotificationTags.Add("referenceguide");
			AppSettings.AESEncryptionKey = "8675309";
			MainPage = new MainPage();
		}

		private void ConnectivityChanged(object sender, ConnectivityChangedEventArgs args)
		{
			AppData.IsConnected = args.IsConnected;
		}

		protected override void OnStart()
		{
			CrossConnectivity.Current.ConnectivityChanged += ConnectivityChanged;
		}

		protected override void OnSleep()
		{
			CrossConnectivity.Current.ConnectivityChanged -= ConnectivityChanged;
		}

		protected override void OnResume()
		{
			CrossConnectivity.Current.ConnectivityChanged += ConnectivityChanged;
		}
	}
}
