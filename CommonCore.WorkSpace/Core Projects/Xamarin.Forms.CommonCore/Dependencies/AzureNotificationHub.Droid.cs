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

		public bool IsRegistered
		{
			get
			{
				return AzureNotificationHub.Hub != null;
			}
		}

		public void RegisterNotificationHub(string registrationId)
		{
			if (!IsRegistered)
				AzureNotificationHub.Hub = new NotificationHub(AppData.AzureHubName, AppData.AzureListenConnection, Xamarin.Forms.Forms.Context);

			UpdateRegistrationHub(registrationId);
		}

		public void UpdateRegistrationHub(string registrationId)
		{
			try
			{
				AzureNotificationHub.Hub.UnregisterAll(registrationId);
				var hubRegistration = AzureNotificationHub.Hub.Register(registrationId, AppData.NotificationTags.ToArray());
			}
			catch (Exception ex)
			{
				var e = ex;
			}
		}
	}
}
#endif
