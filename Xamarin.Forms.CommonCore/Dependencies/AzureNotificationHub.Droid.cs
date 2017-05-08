#if __ANDROID__
using System;
using System.Collections.Generic;
using MSMU;
using WindowsAzure.Messaging;

[assembly: Xamarin.Forms.Dependency(typeof(AzureNotificationHub))]
namespace MSMU
{
	public class AzureNotificationHub : IAzureNotificationHub
	{
		public void RegisterNotificationHub(string registrationId)
		{
			var hub = new NotificationHub(NotificationSettings.NotificationHubName, NotificationSettings.DefaultListenSharedAccess,
				Xamarin.Forms.Forms.Context);
			try
			{
				hub.UnregisterAll(registrationId);
				var tags = new List<string>() { NotificationSettings.Tag }; // create tags if you want
				var hubRegistration = hub.Register(registrationId, tags.ToArray());
			}
			catch (Exception ex)
			{
				var e = ex;
			}
		}
	}
}
#endif
