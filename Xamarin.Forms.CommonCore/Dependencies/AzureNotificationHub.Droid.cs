#if __ANDROID__
using System;
using System.Collections.Generic;
using Xamarin.Forms.CommonCore;
using WindowsAzure.Messaging;
using System.Threading.Tasks;

[assembly: Xamarin.Forms.Dependency(typeof(AzureNotificationHub))]
namespace Xamarin.Forms.CommonCore
{
	public class AzureNotificationHub : IAzureNotificationHub
	{
		public static NotificationHub Hub { get; set; }

		public void RegisterNotificationHub()
		{
            if (CoreSettings.DeviceToken == null)
            {
                "Push notification token has not been set".ConsoleWrite("Missing Token", true);
                return;
            }

            Task.Run(() => {
				var registrationId = CoreSettings.DeviceToken;

				if (AzureNotificationHub.Hub == null)
					AzureNotificationHub.Hub = new NotificationHub(CoreSettings.Config.AzureSettings.AzureHubName, CoreSettings.Config.AzureSettings.AzureListenConnection, Xamarin.Forms.Forms.Context);

				try
				{
					AzureNotificationHub.Hub.UnregisterAll(registrationId);
					var hubRegistration = AzureNotificationHub.Hub.Register(registrationId, CoreSettings.NotificationTags.ToArray());
				}
				catch (Exception ex)
				{
					ex.ConsoleWrite();
				}
            });

		}

	}
}
#endif
