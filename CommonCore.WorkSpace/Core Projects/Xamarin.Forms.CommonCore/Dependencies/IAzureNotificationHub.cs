using System;
namespace Xamarin.Forms.CommonCore
{
	public interface IAzureNotificationHub
	{
		void RegisterNotificationHub(string registrationId);
		void UpdateRegistrationHub(string registrationId);
		bool IsRegistered { get; }
	}
}
