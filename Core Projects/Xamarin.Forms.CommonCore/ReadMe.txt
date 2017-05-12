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
 - Xam.Plugin.PushNotification (Not Required) /*Android may need to be downloaded from github and recompiled to latest SDK */
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

Step 1: 
    Create a folder in your application called Config and copy the config.dev.txt file to it.  Change
    the extension to json. Make the file build action embedded resource. Update the settings as needed. Also 
    create a config.qa.json and config.prod.json file.

    FYI: 
        HTTPSettings Handler Options:  "Managed", "CFNetwork", "NSURLSession", "ModernHttpClient"
        HttpTimeOut: zero means there is no timeout

   
Step 2 (enabling push notifications) -> see readme under AzureNotifications

*** REMEMBER ***
Grant Access In Android & IOS to Access Resource Like Calendar, Contacts (Internet)

Additional References: 


TLS explanation : https://blog.xamarin.com/securing-web-requests-with-tls-1-2/
Icon tool: http://apetools.webprofusion.com/tools/imagegorilla
