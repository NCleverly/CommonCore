In this document when you see comments inside of /* comment */ 

Android SDK Manager - > Extras
 - Android Support Repository
 - Google Play Services

 Mac IDE - > Add-ins - Gallery - IDE Extensions
 - Nuget Package Explorer
 - Nuget Package Management Extensions
  

Required Nuget Installs
 - Unity /* Microsoft's dependency injection framework */
 - sqlite-net-pcl
 - ModernHttpClient
 - Newtonsoft.Json
 - Xam.Plugin.Connectivity
 - Xam.Plugins.Settings
 - Plugin.Permissions
 - Xamarin.FFImageLoading.Forms
 - Xamarin.FFImageLoading.Transformations
 - Xamarin.Auth
 - Platform Specific Installs:
    - iOS   -> BTProgressHud
         	-> Xamarin.Azure.NotificationHubs.iOS
    - Droid -> AndHud
            -> Refractored.FloatingActionButton
            -> Xamarin.Azure.NotificationHubs.Android

Suggested
- Humanizer /* Displaying strings, enums, dates, times, timespans */
- Xam.Plugin.EmbeddedResource
- Xam.Plugins.Messaging
- Plugin.Share
- NodaTime /* Date and time API */
- Refractored.XamForms.PullToRefresh
- Xam.Plugins.Forms.ImageCircle
- Xamarin.Forms.CarouselView
- AIDatePickerController /* IOS DateTime Picker */
- TTGSnackbar /* IOS SnackBar */

Setup Tasks:

Step 1: Dependency Injection & Configuration Loader code -> MainActivity (SplashScreen) / AppDelegate:

	Task.Run(async () =>
	{
		await ConfigurationLoader.Load();
	});

Step 2: create config.dev.json, qa & prod //(means comment options):

	{
	    "AzureSettings": {
	        "AzureServiceBusName": "AzureServiceBusName",
			"AzureServiceBusUrl": "AzureServiceBusUrl",
			"AzureKey": "AzureKey",
			"AzureHubName": "AzureHubName",
			"AzureListenConnection": "AzureListenConnection"
	    },
	    "HttpSettings":{
	        "HttpTimeOut": 0, /* zero means there is no timeout */
			"HttpAllowAutoRedirect": false,
	        "IOSHttpHandler":"ModernHttpClient",   /* "Managed", "CFNetwork", "NSURLSession", "ModernHttpClient" */
	        "AndroidHttpHandler":"ModernHttpClient" /* "Managed", "AndroidClientHandler", "ModernHttpClient" */
	    },
		"GoogleSettings": {
	        "GoogleSenderId": "GoogleSenderId"
	    },
	    "SqliteSettings": {
	        "SQLiteDatabase": "db.db3",
	        "TableNames": 
				[
					{"tableName":"referenceguide.Person"}, 
					{"tableName":"referenceguide.Appointment"}
				]
	    },
		"MobileCenter_HockeyApp": {
	        "IOSAppId": "IOSAppId",
	        "AndroidAppId": "IOSAppId",
			"UWPAppId": "IOSAppId"
	    },
		"WebApi":[{"name":"demosite", "url":"http://com.company.test/api"}],
		"CustomSettings":[{"name":"", "value":""}]
	}



Additional References: 

The folder named AdditionalReferences contains code samples not yet implemented generally in the CommonCore framework

TLS explanation : https://blog.xamarin.com/securing-web-requests-with-tls-1-2/
Icon tool: http://apetools.webprofusion.com/tools/imagegorilla
