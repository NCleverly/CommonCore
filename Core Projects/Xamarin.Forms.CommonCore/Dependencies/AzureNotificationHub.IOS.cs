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

        public void RegisterNotificationHub(string registrationId)
        {
            if (AzureNotificationHub.HUB == null)
                AzureNotificationHub.HUB = new SBNotificationHub(AppData.Instance.AzureListenConnection, AppData.Instance.AzureHubName);

			var deviceToken = NSData.FromString($"<{registrationId}>");

			AzureNotificationHub.HUB.UnregisterAllAsync(deviceToken, (error) =>
								{
									if (error != null)
									{
										Console.WriteLine("Error calling Unregister: {0}", error.ToString());
										return;
									}
									NSSet tags = new NSSet(AppData.Instance.NotificationTags.ToArray());
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