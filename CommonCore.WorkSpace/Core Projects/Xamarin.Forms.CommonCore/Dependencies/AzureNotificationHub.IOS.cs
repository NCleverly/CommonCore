#if __IOS__
using System;
using Foundation;
using Xamarin.Forms.CommonCore;
using WindowsAzure.Messaging;


[assembly: Xamarin.Forms.Dependency(typeof(AzureNotificationHub))]
namespace Xamarin.Forms.CommonCore
{
	public class AzureNotificationHub : IAzureNotificationHub
	{
		public static SBNotificationHub HUB;

		public bool IsRegistered
		{
			get
			{
				return AzureNotificationHub.HUB != null;
			}
		}

		public void RegisterNotificationHub(string registrationId)
		{
			if (AzureNotificationHub.HUB == null)
				AzureNotificationHub.HUB = new SBNotificationHub(AppData.AzureListenConnection, AppData.AzureHubName);

			UpdateRegistrationHub(registrationId);
		}

		public void UpdateRegistrationHub(string registrationId)
		{
			var deviceToken = NSData.FromString(registrationId);

			AzureNotificationHub.HUB.UnregisterAllAsync(deviceToken, (error) =>
								{
									if (error != null)
									{
										Console.WriteLine("Error calling Unregister: {0}", error.ToString());
										return;
									}
//AppData.NotificationTags.ToArray()
									NSSet tags = new NSSet("referenceguide");
									AzureNotificationHub.HUB.RegisterNativeAsync(deviceToken, tags, (errorCallback) =>
													{
														if (errorCallback != null)
															Console.WriteLine("RegisterNativeAsync error: " + errorCallback.ToString());
													});
								});
		}
	}
}
#endif