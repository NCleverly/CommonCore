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

        public void RegisterNotificationHub()
        {
            if (CoreSettings.DeviceToken == null)
            {
                "Push notification token has not been set".ConsoleWrite("Missing Token", true);
                return;
            }

            if (AzureNotificationHub.HUB == null)
                AzureNotificationHub.HUB = new SBNotificationHub(CoreSettings.Config.AzureSettings.AzureListenConnection, CoreSettings.Config.AzureSettings.AzureHubName);


            AzureNotificationHub.HUB.UnregisterAllAsync(CoreSettings.DeviceToken, (error) =>
            {
                if (error != null)
                {
                    Console.WriteLine("Error calling Unregister: {0}", error.ToString());
                    return;
                }
                NSSet tags = new NSSet(CoreSettings.NotificationTags.ToArray());
                AzureNotificationHub.HUB.RegisterNativeAsync(CoreSettings.DeviceToken, tags, (errorCallback) =>
                {
                    if (errorCallback != null)
                        Console.WriteLine("RegisterNativeAsync error: " + errorCallback.ToString());
                });
            });
        }

    }
}
#endif