#if __IOS__
using System;
using Foundation;
using MSMU;
using WindowsAzure.Messaging;


[assembly: Xamarin.Forms.Dependency(typeof(AzureNotificationHub))]
namespace MSMU
{
	public class AzureNotificationHub : IAzureNotificationHub
	{
		public static SBNotificationHub HUB;
		public void RegisterNotificationHub(string registrationId)
		{
			var deviceToken =NSData.FromString(registrationId);
			AzureNotificationHub.HUB = new SBNotificationHub(NotificationSettings.DefaultListenSharedAccess, NotificationSettings.NotificationHubName);

			AzureNotificationHub.HUB.UnregisterAllAsync(deviceToken, (error) =>
					{
						if (error != null)
						{
							Console.WriteLine("Error calling Unregister: {0}", error.ToString());
							return;
						}

						NSSet tags = new NSSet(NotificationSettings.Tag);
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