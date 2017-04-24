#if __IOS__
using System;
using System.Collections.Generic;
using Foundation;
using UIKit;
using UserNotifications;
using WindowsAzure.Messaging;

namespace Xamarin.Forms.CommonCore
{
    /*
    Documentation:
    https://docs.microsoft.com/en-us/azure/notification-hubs/notification-hubs-ios-apple-push-notification-apns-get-started

    https://docs.microsoft.com/en-us/azure/notification-hubs/notification-hubs-aspnet-backend-ios-apple-apns-notification

    Cordova:
    https://docs.microsoft.com/en-us/azure/app-service-mobile/app-service-mobile-cordova-get-started-push

    LocalNotification Documentation
    https://developer.xamarin.com/guides/ios/platform_features/introduction-to-ios10/user-notifications/enhanced-user-notifications/
    
    */
    public class APNSService
    {
        public static SBNotificationHub HUB;
        public static void RequestRemoteNotifications()
        {
            var notificationTypes = UIUserNotificationType.Badge
                        | UIUserNotificationType.Sound
                        | UIUserNotificationType.Alert;

            var notificationSettings = UIUserNotificationSettings.GetSettingsForTypes(notificationTypes, null);

            UIApplication.SharedApplication.RegisterUserNotificationSettings(notificationSettings);
        }
        public static void RequestLocalNotifications()
        {
            // Get current notification settings
            UNUserNotificationCenter.Current.GetNotificationSettings((settings) =>
            {
                var alertsAllowed = (settings.AlertSetting == UNNotificationSetting.Enabled);
                if (!alertsAllowed)
                {
                    // Request notification permissions from the user
                    UNUserNotificationCenter.Current.RequestAuthorization(UNAuthorizationOptions.Alert, (approved, err) =>
                    {
                        // Handle approval
                    });
                }

                UNUserNotificationCenter.Current.Delegate = new UserNotificationCenterDelegate();
            });
        }
        public static void Register(NSData deviceToken)
        {
            APNSService.HUB = new SBNotificationHub(NotificationSettings.DefaultListenSharedAccess, NotificationSettings.NotificationHubName);

            APNSService.HUB.UnregisterAllAsync(deviceToken, (error) =>
            {
                if (error != null)
                {
                    Console.WriteLine("Error calling Unregister: {0}", error.ToString());
                    return;
                }

                NSSet tags = new NSSet(NotificationSettings.Tag);
                APNSService.HUB.RegisterNativeAsync(deviceToken, tags, (errorCallback) =>
                {
                    if (errorCallback != null)
                        Console.WriteLine("RegisterNativeAsync error: " + errorCallback.ToString());
                });
            });
        }
        public static void ProcessNotification(NSDictionary userInfo, bool fromFinishedLaunching)
        {
            var notification = userInfo.ToLocalNotification();
            if (notification.Title != null && !fromFinishedLaunching)
            {
                //foreach (var vmName in AppData.ViewModels.Keys)
                //{
                //    ((ObservableViewModel)AppData.ViewModels[vmName]).OnViewMessageReceived("localNotification", notification);
                //}
            }
        }
    }

}
#endif
