using System;
using System.Reflection;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{
	public class ConfigurationLoader
	{
		public static Task Load()
		{
			string fileName = null;
			switch (AppData.Environment)
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
			return Task.Run(() =>
			{
				string json = ResourceLoader.GetEmbeddedResourceString(Assembly.GetAssembly(typeof(ResourceLoader)), fileName);
				var root = JsonConvert.DeserializeObject<RootObject>(json);
				if (root != null)
				{
					if (root.AzureSettings != null)
					{
						AppData.AzureHubName = root.AzureSettings.AzureHubName;
						AppData.AzureKey = root.AzureSettings.AzureKey;
						AppData.AzureListenConnection = root.AzureSettings.AzureListenConnection;
						AppData.AzureServiceBusName = root.AzureSettings.AzureServiceBusName;
						AppData.AzureServiceBusUrl = root.AzureSettings.AzureServiceBusUrl;
					}
					if (root.HttpSettings != null)
					{
						AppData.HttpTimeOut = root.HttpSettings.HttpTimeOut;
						AppData.HttpAllowAutoRedirect = root.HttpSettings.HttpAllowAutoRedirect;
						AppData.IOSHttpHandler = root.HttpSettings.IOSHttpHandler;
						AppData.AndroidHttpHandler = root.HttpSettings.AndroidHttpHandler;
					}
					if (root.GoogleSettings != null)
					{
						AppData.GoogleSenderId = root.GoogleSettings.GoogleSenderId;
					}
					if (root.MobileCenter_HockeyApp != null)
					{
						AppData.MobileCenter_HockeyAppiOS = root.MobileCenter_HockeyApp.IOSAppId;
						AppData.MobileCenter_HockeyAppAndroid = root.MobileCenter_HockeyApp.AndroidAppId;
						AppData.MobileCenter_HockeyAppUWP = root.MobileCenter_HockeyApp.UWPAppId;
					}
					if (root.SqliteSettings != null)
					{
						AppData.SqliteDbName = root.SqliteSettings.SQLiteDatabase;
						if (root.SqliteSettings.TableNames != null && root.SqliteSettings.TableNames.Count > 0)
						{
							root.SqliteSettings.TableNames.ForEach((obj) => { AppData.SqliteTableNames.Add(obj.tableName); });
						}
					}
					if (root.WebApi != null && root.WebApi.Count > 0)
					{
						root.WebApi.ForEach((obj) => { AppData.WebApis.Add(obj.name, obj.url); });
					}
					if (root.CustomSettings != null && root.CustomSettings.Count > 0)
					{
						root.CustomSettings.ForEach((obj) => { AppData.CustomSettings.Add(obj.name, obj.value); });
					}

				}
			});
		}
	}
}