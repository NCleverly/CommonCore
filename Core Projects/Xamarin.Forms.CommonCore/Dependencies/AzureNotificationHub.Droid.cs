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
		public void RegisterNotificationHub(string registrationId)
		{
			
			var hub = new NotificationHub(AppData.AzureHubName, AppData.AzureListenConnection,
				Xamarin.Forms.Forms.Context);
			try
			{
				hub.UnregisterAll(registrationId);
				var hubRegistration = hub.Register(registrationId, AppData.NotificationTags.ToArray());
			}
			catch (Exception ex)
			{
				var e = ex;
			}
		}
	}
}
#endif
