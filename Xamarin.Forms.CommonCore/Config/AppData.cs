using System;
using System.Collections.Generic;
using System.Net;
using Microsoft.Practices.Unity;
using Microsoft.Practices.ServiceLocation;

namespace Xamarin.Forms.CommonCore
{
	public class InjectionManager
	{
		private static UnityContainer _container;
		private static UnityServiceLocator _serviceLocator;

		public static UnityContainer Container
		{
			get
			{
				return _container ?? (_container = new UnityContainer());
			}
		}
		public static T GetViewModel<T>() where T : ObservableViewModel
		{
			if (_serviceLocator == null)
				InitializeServiceLocator();

			if (!Container.IsRegistered<T>())
				Container.RegisterType<T>(new ContainerControlledLifetimeManager());
			return Container.Resolve<T>();
		}

		public static void SendViewModelMessage(string key, object obj)
		{
			if (_serviceLocator == null)
				InitializeServiceLocator();

			foreach (ContainerRegistration item in Container.Registrations)
			{
				var instance = Container.Resolve(item.RegisteredType, item.Name);
				if (instance is ObservableViewModel)
				{
					((ObservableViewModel)instance).OnViewMessageReceived(key, obj);
				}
			}
		}

		public static void SendViewModelMessage<T>(string key, object obj) where T : ObservableViewModel
		{
			if (_serviceLocator == null)
				InitializeServiceLocator();

			if (Container.IsRegistered<T>())
			{
				Container.Resolve<T>().OnViewMessageReceived(key, obj);
			}
		}

		public static T GetService<T, K>(bool isSingleton = false) where K : T
		{
			if (_serviceLocator == null)
				InitializeServiceLocator();

			if (!Container.IsRegistered<T>())
			{
				if (isSingleton)
					Container.RegisterType<T, K>(new ContainerControlledLifetimeManager());
				else
					Container.RegisterType<T, K>();
			}

			return Container.Resolve<T>();
		}
		private static void InitializeServiceLocator()
		{
			_serviceLocator = new UnityServiceLocator(Container);
			ServiceLocator.SetLocatorProvider(() => _serviceLocator);
		}
	}
	public class AppVersion
	{
		public string Title { get; set; }
		public string Publisher { get; set; }
		public string Description { get; set; }
		public string Version { get; set; }
		public DateTime VersionDate { get; set; }
	}

	public class AppStyles
	{
		public const string OverlayColor = "#000000";
		public const float OverlayOpacity = 0.85f;
	}

	public class AppData
	{
		public static string MobileCenter_HockeyAppiOS { get; set; }
		public static string MobileCenter_HockeyAppAndroid { get; set; }
		public static string MobileCenter_HockeyAppUWP { get; set; }

		public static string AzureServiceBusName { get; set; }
		public static string AzureServiceBusUrl { get; set; }
		public static string AzureKey { get; set; }
		public static string GoogleSenderId { get; set; }
		public static string AzureHubName { get; set; }
		public static string AzureListenConnection { get; set; }

		public static string SqliteDbName { get; set; } = "appSqlite.db";
		public static List<string> SqliteTableNames { get; set; } = new List<string>();

		public static string Environment { get; set; } = "dev";
		public static Dictionary<string, string> WebApis { get; set; } = new Dictionary<string, string>();

		public static Dictionary<string, string> CustomSettings { get; set; } = new Dictionary<string, string>();

		public static AuthenticationToken TokenBearer { get; set; }
		public static NetworkCredential HttpCredentials { get; set; }
		public static int HttpTimeOut { get; set; } = 0;
		public static bool HttpAllowAutoRedirect { get; set; } = false;
		public static string IOSHttpHandler { get; set; } = "Managed";
		public static string AndroidHttpHandler { get; set; } = "Managed";

		public static bool IsConnected { get; set; } = true;
		public static INavigation AppNav { get; set; }
		public static Size ScreenSize { get; set; }

		public static bool TokenIsValid
		{
			get
			{
				return TokenBearer?.expires > DateTimeOffset.Now;
			}
		}

#if __ANDROID__
		public static int AppIcon { get; set; }
#endif

#if __IOS__

#endif
	}
}

