#if __ANDROID__
using System;
using System.Collections.Generic;
using Xamarin.Forms.CommonCore;
using WindowsAzure.Messaging;

[assembly: Xamarin.Forms.Dependency(typeof(AzureNotificationHub))]
namespace Xamarin.Forms.CommonCore
{
	public class AzureNotificationHub : IAzureNotificationHub
	{
		public static NotificationHub Hub { get; set; }

		public void RegisterNotificationHub(string registrationId)
		{
			if (AzureNotificationHub.Hub==null)
				AzureNotificationHub.Hub = new NotificationHub(AppData.Instance.AzureHubName, AppData.Instance.AzureListenConnection, Xamarin.Forms.Forms.Context);

			try
			{
				AzureNotificationHub.Hub.UnregisterAll(registrationId);
				var hubRegistration = AzureNotificationHub.Hub.Register(registrationId, AppData.Instance.NotificationTags.ToArray());
			}
			catch (Exception ex)
			{
				var e = ex;
			}
		}

	}
}
#endif
