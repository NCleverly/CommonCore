using System;
using System.Threading.Tasks;
using FFImageLoading.Forms.Touch;
using Foundation;
using PushNotification.Plugin; //Xam.Plugin.PushNotification from nuget or get from github and compile to latest version
using UIKit;
using Xamarin.Forms.CommonCore;

namespace referenceguide.iOS
{
    [Register("AppDelegate")]
    public partial class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
    {

        public override bool FinishedLaunching(UIApplication app, NSDictionary options)
        {
            
#if DEBUG
            AppBuid.CurrentBuid = "dev";
#elif QA
            AppBuid.CurrentBuid = "qa";
#elif RELEASE
			AppBuid.CurrentBuid = "prod";
#endif

			global::Xamarin.Forms.Forms.Init();

			CachedImageRenderer.Init();

			CrossPushNotification.Initialize<CrossPushNotificationListener>();

			LoadApplication(new App());

			return base.FinishedLaunching(app, options);
		}

		public override void RegisteredForRemoteNotifications(UIApplication application, NSData deviceToken)
		{
            AppData.Instance.DeviceToken = deviceToken; 
			if (CrossPushNotification.Current is IPushNotificationHandler)
			{
				((IPushNotificationHandler)CrossPushNotification.Current).OnRegisteredSuccess(deviceToken);
			}

		}

		public override void DidRegisterUserNotificationSettings(UIApplication application, UIUserNotificationSettings notificationSettings)
		{
			application.RegisterForRemoteNotifications();
		}

		// Uncomment if using remote background notifications. To support this background mode, enable the Remote notifications option from the Background modes section of iOS project properties. (You can also enable this support by including the UIBackgroundModes key with the remote-notification value in your app’s Info.plist file.)
		public override void DidReceiveRemoteNotification(UIApplication application, NSDictionary userInfo, Action<UIBackgroundFetchResult> completionHandler)
		{
			if (CrossPushNotification.Current is IPushNotificationHandler)
			{
				((IPushNotificationHandler)CrossPushNotification.Current).OnMessageReceived(userInfo);
			}
		}


		public override void ReceivedRemoteNotification(UIApplication application, NSDictionary userInfo)
		{

			if (CrossPushNotification.Current is IPushNotificationHandler)
			{
				((IPushNotificationHandler)CrossPushNotification.Current).OnMessageReceived(userInfo);
			}
		}

	}
}
