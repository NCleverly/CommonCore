using System;
using System.Collections.Generic;
using System.Net;
using Microsoft.Practices.Unity;
using Microsoft.Practices.ServiceLocation;
using Newtonsoft.Json;
using System.Reflection;

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

        public static T Get<T>(bool isSingleton = false) where T : class
        {
            if (_serviceLocator == null)
                InitializeServiceLocator();

            if (Container.IsRegistered<T>())
            {
                return Container.Resolve<T>();
            }
            else
            {
                return null;
            }

        }

        private static void InitializeServiceLocator()
        {
            _serviceLocator = new UnityServiceLocator(Container);
            ServiceLocator.SetLocatorProvider(() => _serviceLocator);
        }
    }

    public class AppStyles
    {
        public const string OverlayColor = "#000000";
        public const float OverlayOpacity = 0.85f;
    }

    public class AppBuid
    {
        public static string CurrentBuid { get; set; } = "dev";
    }
    public class AppData
    {
        public static AppData Instance = new AppData();
        public AppData()
        {
            Load();
        }
        public void Reload()
        {
            Load();
        }
        public string MobileCenter_HockeyAppiOS { get; set; }
        public string MobileCenter_HockeyAppAndroid { get; set; }
        public string MobileCenter_HockeyAppUWP { get; set; }

        public string AzureServiceBusName { get; set; }
        public string AzureServiceBusUrl { get; set; }
        public string AzureKey { get; set; }
        public string GoogleSenderId { get; set; }
        public string AzureHubName { get; set; }
        public string AzureListenConnection { get; set; }

        public string SqliteDbName { get; set; } = "appSqlite.db";
        public List<string> SqliteTableNames { get; set; } = new List<string>();

        public string Environment { get; set; } = "dev";
        public Dictionary<string, string> WebApis { get; set; } = new Dictionary<string, string>();

        public Dictionary<string, string> CustomSettings { get; set; } = new Dictionary<string, string>();

        public AuthenticationToken TokenBearer { get; set; }
        public NetworkCredential HttpCredentials { get; set; }
        public int HttpTimeOut { get; set; } = 0;
        public bool HttpAllowAutoRedirect { get; set; } = false;
        public string IOSHttpHandler { get; set; } = "Managed";
        public string AndroidHttpHandler { get; set; } = "Managed";

        public bool IsConnected { get; set; } = true;
        public INavigation AppNav { get; set; }
        public Size ScreenSize { get; set; }

        public List<string> NotificationTags { get; set; } = new List<string>();

        public bool TokenIsValid
        {
            get
            {
                return TokenBearer?.expires > DateTimeOffset.Now;
            }
        }

#if __ANDROID__
		public  int AppIcon { get; set; }
#endif

#if __IOS__

#endif

        private void Load()
        {
            string fileName = null;
            switch (AppBuid.CurrentBuid)
            {
                case "qa":
                    fileName = "config.qa.json";
                    break;
                case "prod":
                    fileName = "config.prod.json";
                    break;
                default:
                    fileName = "config.dev.json";
                    break;
            }

            string json = ResourceLoader.GetEmbeddedResourceString(Assembly.GetAssembly(typeof(ResourceLoader)), fileName);
            var root = JsonConvert.DeserializeObject<RootObject>(json);
            if (root != null)
            {
                if (root.AzureSettings != null)
                {
                    AzureHubName = root.AzureSettings.AzureHubName;
                    AzureKey = root.AzureSettings.AzureKey;
                    AzureListenConnection = root.AzureSettings.AzureListenConnection;
                    AzureServiceBusName = root.AzureSettings.AzureServiceBusName;
                    AzureServiceBusUrl = root.AzureSettings.AzureServiceBusUrl;
                }
                if (root.HttpSettings != null)
                {
                    HttpTimeOut = root.HttpSettings.HttpTimeOut;
                    HttpAllowAutoRedirect = root.HttpSettings.HttpAllowAutoRedirect;
                    IOSHttpHandler = root.HttpSettings.IOSHttpHandler;
                    AndroidHttpHandler = root.HttpSettings.AndroidHttpHandler;
                }
                if (root.GoogleSettings != null)
                {
                    GoogleSenderId = root.GoogleSettings.GoogleSenderId;
                }
                if (root.MobileCenter_HockeyApp != null)
                {
                    MobileCenter_HockeyAppiOS = root.MobileCenter_HockeyApp.IOSAppId;
                    MobileCenter_HockeyAppAndroid = root.MobileCenter_HockeyApp.AndroidAppId;
                    MobileCenter_HockeyAppUWP = root.MobileCenter_HockeyApp.UWPAppId;
                }
                if (root.SqliteSettings != null)
                {
                    SqliteDbName = root.SqliteSettings.SQLiteDatabase;
                    if (root.SqliteSettings.TableNames != null && root.SqliteSettings.TableNames.Count > 0)
                    {
                        root.SqliteSettings.TableNames.ForEach((obj) => { SqliteTableNames.Add(obj.tableName); });
                    }
                }
                if (root.WebApi != null && root.WebApi.Count > 0)
                {
                    root.WebApi.ForEach((obj) => { WebApis.Add(obj.name, obj.url); });
                }
                if (root.CustomSettings != null && root.CustomSettings.Count > 0)
                {
                    root.CustomSettings.ForEach((obj) => { CustomSettings.Add(obj.name, obj.value); });
                }

            }

        }
    }
}

