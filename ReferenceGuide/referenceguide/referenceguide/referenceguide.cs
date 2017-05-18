using Xamarin.Forms.CommonCore;
using Xamarin.Forms;
using Plugin.Connectivity;
using Plugin.Connectivity.Abstractions;
using Microsoft.Azure.Mobile;
using Microsoft.Azure.Mobile.Analytics;
using Microsoft.Azure.Mobile.Crashes;
using System;

namespace referenceguide
{
	public class App : Application
	{
		public App()
		{
			AppData.Instance.NotificationTags.Add("referenceguide");
			AppSettings.AESEncryptionKey = "8675309";

            if (string.IsNullOrEmpty(AppSettings.InstallationId))
                AppSettings.InstallationId = Guid.NewGuid().ToString();

            var x = AppSettings.InstallationId;
			MainPage = new MainPage();
		}

		private void ConnectivityChanged(object sender, ConnectivityChangedEventArgs args)
		{
			AppData.Instance.IsConnected = args.IsConnected;
		}

		protected override void OnStart()
		{
			var mobileCenterKeys = $"android={AppData.Instance.MobileCenter_HockeyAppAndroid};ios={AppData.Instance.MobileCenter_HockeyAppiOS}";
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
