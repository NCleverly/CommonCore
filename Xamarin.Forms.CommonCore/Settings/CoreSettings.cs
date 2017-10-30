using System;
using System.Collections.Generic;
using System.Net;
using Plugin.Settings;
using Plugin.Settings.Abstractions;
using Newtonsoft.Json;
using System.Reflection;
using Newtonsoft.Json.Converters;

#if __ANDROID__
using Android.Widget;
#endif
#if __IOS__
using Foundation;
#endif

namespace Xamarin.Forms.CommonCore
{
    public enum NavType
    {
        MasterDetail,
        Tabbed,
        Stacked,
        Undermined
    }
    public class CoreSettings
    {
        private static ISettings _appSettings
        {
            get
            {
                return CrossSettings.Current;
            }
        }

        public static ConfigurationModel Config
        {
            get { return AppData.Settings; }
        }

        /// <summary>
        /// Application Installation ID
        /// </summary>
        /// <value>The installation identifier.</value>
		public static string InstallationId
        {
            get
            {
                var id = _appSettings.GetValueOrDefault("InstallationId", null);

                if (string.IsNullOrEmpty(id))
                {
                    id = Guid.NewGuid().ToString();
                    _appSettings.AddOrUpdateValue("InstallationId", id);
                }

                return id;
            }
            set { _appSettings.AddOrUpdateValue("InstallationId", value); }
        }


        /// <summary>
        /// Application Data Sync Time for offline sync with sql
        /// </summary>
        /// <value>The installation identifier.</value>
        public static long SyncTimeStamp
        {
            get
            {
                var id = _appSettings.GetValueOrDefault("SyncTimeStamp", 0L);

                if (id == default(long))
                {
                    id = DateTime.UtcNow.Ticks;
                    _appSettings.AddOrUpdateValue("SyncTimeStamp", id);
                }

                return id;
            }
            set { _appSettings.AddOrUpdateValue("SyncTimeStamp", value); }
        }

        /// <summary>
        /// Gets or sets the current buid.
        /// </summary>
        /// <value>The current buid.</value>
        public static string CurrentBuid { get; set; } = "dev";
        public static string UserId { get; set; }
        public static AuthenticationToken TokenBearer { get; set; }
        public static NetworkCredential HttpCredentials { get; set; }

        public static bool IsConnected { get; set; } = true;
        public static INavigation AppNav { get; set; }
        public static Size ScreenSize { get; set; }
        public static List<string> NotificationTags { get; set; } = new List<string>();

        public static bool TokenIsValid
        {
            get
            {
                return TokenBearer?.expires > DateTimeOffset.Now;
            }
        }

        #region Message Constants
        public const string MasterDetailIsPresented = "IsPresented";
        #endregion

#if __ANDROID__
        public  static int AppIcon { get; set; }
        public static int SearchView { get; set; }
        public static string DeviceToken { get; set; }
#endif

#if __IOS__
        public static NSData DeviceToken { get; set; }
#endif

        internal class AppData
        {
            //public static AppData Instance = new AppData();
            static AppData()
            {
                Load();
            }

            public static void Reload()
            {
                InjectionManager.DisposeServices();
                InjectionManager.ReleaseAllResources();
                Load();
                InjectionManager.ReloadAllResources();
            }

            public static ConfigurationModel Settings { get; private set; }


            private static void Load()
            {
                Settings = new ConfigurationModel();
                string fileName = null;
                fileName = $"config.{CoreSettings.CurrentBuid}.json";

                var response = ResourceLoader.GetEmbeddedResourceString(Assembly.GetAssembly(typeof(ResourceLoader)), fileName);
                if (response.Error==null)
                {
                    try
                    {
                        var root = JsonConvert.DeserializeObject<ConfigurationModel>(response.Response);
                        if (root != null)
                            Settings = root;
                    }
                    catch (Exception ex)
                    {
                        ex.ConsoleWrite();
                    }

                }
                else
                {
                    response.Error?.ConsoleWrite();
                }
            }
        }

    }

}
