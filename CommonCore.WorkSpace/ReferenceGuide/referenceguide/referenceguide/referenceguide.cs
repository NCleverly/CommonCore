using Xamarin.Forms.CommonCore;
using Xamarin.Forms;
using Plugin.Connectivity;
using Plugin.Connectivity.Abstractions;
using Microsoft.Azure.Mobile;
using Microsoft.Azure.Mobile.Analytics;
using Microsoft.Azure.Mobile.Crashes;

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
			var mobileCenterKeys = $"android={AppData.MobileCenter_HockeyAppAndroid};ios={AppData.MobileCenter_HockeyAppiOS}";
			MobileCenter.Start(mobileCenterKeys, typeof(Analytics), typeof(Crashes));
			
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
