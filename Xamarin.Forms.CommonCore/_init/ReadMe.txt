In this document when you see comments inside of /* comment */ 

Android SDK Manager - > Extras
 - Android Support Repository
 - Google Play Services

 Mac IDE - > Add-ins - Gallery - IDE Extensions
 - Nuget Package Explorer
 - Nuget Package Management Extensions

 ******** QUICKSTART *********
 nuget packets listed below can be imported using the following:
 https://www.nuget.org/packages/Xamarin.Form.CommonCore.Droid/1.0.5
 https://www.nuget.org/packages/Xamarin.Form.CommonCore.IOS/1.0.5
 *****************************

Required Nuget Installs
 - sqlite-net-pcl
 - ModernHttpClient
 - Newtonsoft.Json
 - PCLCrypto
 - Plugin.Permissions
 - Xam.Plugin.Connectivity
 - Xam.Plugins.Settings
 - PropertyChanged.Fody  /* https://github.com/Fody/PropertyChanged  includes documentation in wiki */
 - Xamarin.FFImageLoading.Forms
 - Xamarin.FFImageLoading.Transformations
 - Xamarin.Auth
 - Xamarin.Auth.XamarinForms

(Optional - if you are using Microsoft Authentication)
 - Microsoft.Identity.Client
 - Microsoft.Graph

(Optional - if you are using Mobile Center)
- Mobile Center Analytics
- Mobile Center Crashes

 - Platform Specific Installs:
    - iOS   -> BTProgressHud
            -> TTGSnackbar
         	-> Xamarin.Azure.NotificationHubs.iOS
    - Droid -> AndHud
            -> Refractored.FloatingActionButton
            -> Xamarin.Azure.NotificationHubs.Android
            -> Xamarin.GooglePlayServices.Gcm

Suggested
- Iconize /* https://github.com/jsmarcus/Xamarin.Plugins/tree/master/Iconize */
- CarouselView.FormsPlugin /* see https://github.com/alexrainman/CarouselView to implement */
- Humanizer /* Displaying strings, enums, dates, times, timespans */
- Plugin.Fingerprint /* https://github.com/smstuebe/xamarin-fingerprint */
- Plugin.Share
- NodaTime /* Date and time API */
- Refractored.XamForms.PullToRefresh
- AIDatePickerController /* IOS DateTime Picker */
- iOSCharts /* IOS Charting Controls */
- MPAndroidChart /* Android Charting Controls */
- Xamarin.Plugin.ImageEdit /* https://github.com/muak/Xamarin.Plugin.ImageEdit */
- Android Bottom Tabs /* https://medium.com/naxam-blogs/bottomtabbedpage-bottom-navigation-for-xamarin-forms-on-android-325a1506e216 */
Setup Tasks:

Step 1: 
    Create a folder in your application called Config and copy the config.dev.txt file to it.  Change
    the extension to json. Make the file build action embedded resource. Update the settings as needed. Also 
    create a config.qa.json and config.prod.json file.

    FYI: 
        HTTPSettings Handler Options:  
                IOS -> "Managed", "CFNetwork", "NSURLSession", "ModernHttpClient"
                DROID -> "Managed", "AndroidClientHandler", "ModernHttpClient"

        HttpTimeOut: zero means there is no timeout

   
Step 2 (enabling push notifications) -> see readme under PushNotifications

Step 3 (optional OAuth Setup) -> see readme.authentication.txt nested file under IAuthenticatorService 
in the Services folder. /* CustomTab for Android has issues with Xamarin.Android.Support version 25 */

Step 4 (Setup Fody) ->  Make sure the FodyWeavers.xml file installed from PropertyChanged.Fody nuget has the following:
<?xml version="1.0" encoding="utf-8" ?>
<Weavers>
    <PropertyChanged/>
</Weavers>

Step 5 (Optional) -> You may want to setup the Forms Application page to include the following within override lifecyle methods:

        protected override void OnStart()
        {
            MainPage.SizeChanged += AppScreenSizeChanged;
            CrossConnectivity.Current.ConnectivityChanged += ConnectivityChanged;
        }

        protected override void OnSleep()
        {
            MainPage.SizeChanged -= AppScreenSizeChanged;
            CrossConnectivity.Current.ConnectivityChanged -= ConnectivityChanged;
            this.SaveViewModelState();
        }

        protected override void OnResume()
        {
            MainPage.SizeChanged += AppScreenSizeChanged;
            CrossConnectivity.Current.ConnectivityChanged += ConnectivityChanged;
            this.LoadViewModelState();
        }

        private void ConnectivityChanged(object sender, ConnectivityChangedEventArgs args)
        {
            CoreSettings.IsConnected = args.IsConnected;
        }

        private void AppScreenSizeChanged(object sender, EventArgs args)
        {
            CoreSettings.ScreenSize = new Size(MainPage.Width, MainPage.Height);
        }


Step 6 (Optional) -> In order to use differnet configuration files across dev environments, you need to modify build settings.
    * Right click on the solution and selection options
    * In the dialog box under Build select Configuration
    * Out of the box there should be Debug and Release.  You can add QA or any other custom name you want.
    * When finished...open iOS and Android projects and select options.
    * In the dialog box under Build select Compiler. Add appropriate environments names to Define Symbols for each configuration
    * Add the following code:
        * iOS -> AppDelegate -> FinishedLaunching
        * android -> MainApplication -> OnCreate

        #if DEBUG
            AppSettings.CurrentBuid = "dev";
        #elif QA
            AppSettings.CurrentBuid = "qa";
        #elif RELEASE
            AppSettings.CurrentBuid = "prod";
        #endif

Step 7 (XAML projects only)
    * Projects Options -> Output-> Assembly Name (make the same for both Android and iOS projects)
    * Add the following xmlns to your pages:
        xmlns:core="clr-namespace:Xamarin.Forms.CommonCore;assembly=yourassemblyname" 
    * Define your pages with BoundPage and Set ViewModel property to fully qualified ViewModel name (example):

    <?xml version="1.0" encoding="UTF-8"?>
    <core:BoundPage xmlns="http://xamarin.com/schemas/2014/forms" 
        ViewModel="fullyqualifiedNamespace.AppViewModel" 
        xmlns:core="clr-namespace:Xamarin.Forms.CommonCore;assembly=yourassemblyname" 
        xmlns:x="http://schemas.microsoft.com/winfx/2009/xaml" 
        x:Class="fullyqualifiedNamespace.BehaviorsPage" 
        Title="Core Behaviors">
        <StackLayout>
        </StackLayout>
    </core:BoundPage>

    * Copy Application.Resources from the _init/Styles/AppStyles.xaml.txt file into your App.xaml as a starter for styles.

*** Search View ***
IOS uses the Search bar as a control in the UI but Android generally expects it in the Actionbar.
In Order to accomplish this, add the following to the Toolbar.xml file and implement the ISearchProvider on the ViewModel.
    <SearchView
        android:minWidth="25px"
        android:minHeight="25px"
        android:layout_width="wrap_content"
        android:layout_height="match_parent"
        android:layout_gravity="right"
        android:visibility="gone"
        android:id="@+id/searchView" />

In the MainActivity in the OnCreate method set:
     CoreSettings.SearchView = Resource.Id.searchView;

*** Background Page Image / Splash Screen ***
http://apetools.webprofusion.com/tools/imagegorilla  -> create icons and screens


*** REMEMBER ***
Grant Access In Android & IOS to Access Resource Like Calendar, Contacts (Internet)

Additional References: 


TLS explanation : https://blog.xamarin.com/securing-web-requests-with-tls-1-2/
Icon tool: http://apetools.webprofusion.com/tools/imagegorilla


*** MAC Helps ***
Configure Mac 127.0.0.1 to use a custom name so simulators/emulators will see the service. 
i.e
Alter Host File
127.0.0.1   TestDev
and then save....Open Terminal use the following commands in the terminal:

sudo nano /etc/hosts

*****************



