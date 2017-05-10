using System;
using System.Diagnostics;
using Newtonsoft.Json.Linq;
using PushNotification.Plugin;
using PushNotification.Plugin.Abstractions;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{

	public class CrossPushNotificationListener : IPushNotificationListener
	{
		//Here you will receive all push notification messages
		//Messages arrives as a dictionary, the device type is also sent in order to check specific keys correctly depending on the platform.
		void IPushNotificationListener.OnMessage(JObject parameters, DeviceType deviceType)
		{
			DependencyService.Get<ILocalNotify>().RequestPermission((success) =>
			{
				if (success)
				{
					//Device.BeginInvokeOnMainThread(() =>
					//{
					//	var paramterName = deviceType == DeviceType.Android ? "message" : "alert";
					//	DependencyService.Get<ILocalNotify>().Show(new LocalNotification()
					//	{
					//		Title = "Azure Hub Notification",
					//		Message = parameters[paramterName].ToString(),
					//		Icon = "icon.png"

					//	});

					//});

				}

			});
		}
		//Gets the registration token after push registration
		void IPushNotificationListener.OnRegistered(string Token, DeviceType deviceType)
		{
			var azureHub = DependencyService.Get<IAzureNotificationHub>();
			if (azureHub.IsRegistered)
				azureHub.UpdateRegistrationHub(Token);
			else
				azureHub.RegisterNotificationHub(Token);
		

			//then save info to backing api service
		}
		//Fires when device is unregistered
		void IPushNotificationListener.OnUnregistered(DeviceType deviceType)
		{
			Debug.WriteLine("Push Notification - Device Unnregistered");

		}

		//Fires when error
		void IPushNotificationListener.OnError(string message, DeviceType deviceType)
		{
			Debug.WriteLine(string.Format("Push notification error - {0}", message));
		}

		//Enable/Disable Showing the notification
		bool IPushNotificationListener.ShouldShowNotification()
		{
			return true;
		}
	}
}
