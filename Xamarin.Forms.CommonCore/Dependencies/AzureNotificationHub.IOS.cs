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
            if (AppData.Instance.DeviceToken == null)
            {
                "Push notification token has not been set".ConsoleWrite("Missing Token", true);
                return;
            }
            
            var registrationId = AppData.Instance.DeviceToken;

            if (AzureNotificationHub.HUB == null)
                AzureNotificationHub.HUB = new SBNotificationHub(AppData.Instance.AzureListenConnection, AppData.Instance.AzureHubName);


            AzureNotificationHub.HUB.UnregisterAllAsync(registrationId, (error) =>
            {
                if (error != null)
                {
                    Console.WriteLine("Error calling Unregister: {0}", error.ToString());
                    return;
                }
                NSSet tags = new NSSet(AppData.Instance.NotificationTags.ToArray());
                AzureNotificationHub.HUB.RegisterNativeAsync(registrationId, tags, (errorCallback) =>
                {
                    if (errorCallback != null)
                        Console.WriteLine("RegisterNativeAsync error: " + errorCallback.ToString());
                });
            });
        }

    }
}
#endif