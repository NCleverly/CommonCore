#if __IOS__
using System;
using Xamarin.Forms.CommonCore;
using UserNotifications;

[assembly: Xamarin.Forms.Dependency(typeof(LocalNotificationPermission))]
namespace Xamarin.Forms.CommonCore
{
    public class LocalNotificationPermission : ILocalNotificationPermission
    {
        public void RequestPermission(Action<bool> callBack)
        {

            // Get current notification settings
            UNUserNotificationCenter.Current.GetNotificationSettings((settings) =>
            {
                UNUserNotificationCenter.Current.Delegate = new UserNotificationCenterDelegate();
                var alertsAllowed = (settings.AlertSetting == UNNotificationSetting.Enabled);
                if (!alertsAllowed)
                {
                    // Request notification permissions from the user
                    UNUserNotificationCenter.Current.RequestAuthorization(UNAuthorizationOptions.Alert, (approved, err) =>
                    {
                        callBack?.Invoke(approved);
                    });
                }
                else
                {
                    callBack?.Invoke(alertsAllowed);
                }
            });

        }
    }

    public class UserNotificationCenterDelegate : UNUserNotificationCenterDelegate
    {
        #region Constructors
        public UserNotificationCenterDelegate()
        {
        }
        #endregion

        #region Override Methods
        public override void WillPresentNotification(UNUserNotificationCenter center, UNNotification notification, Action<UNNotificationPresentationOptions> completionHandler)
        {
            // Do something with the notification
            Console.WriteLine("Active Notification: {0}", notification);

            // Tell system to display the notification anyway or use
            // `None` to say we have handled the display locally.
            completionHandler(UNNotificationPresentationOptions.Alert);
        }
        #endregion
    }
}

#endif
