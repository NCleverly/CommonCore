#if __IOS__
using System;
using Xamarin.Forms.CommonCore;
using Foundation;
using UserNotifications;

[assembly: Xamarin.Forms.Dependency(typeof(LocalNotify))]
namespace Xamarin.Forms.CommonCore
{
    public class LocalNotify : ILocalNotify
    {
        public void Show(LocalNotification notification)
        {
            var content = new UNMutableNotificationContent();
            content.Title = notification.Title;
            content.Subtitle = notification.SubTitle;
            content.Body = notification.Message;
            if (!string.IsNullOrEmpty(notification.Sound))
            {
                content.Sound = UNNotificationSound.GetSound(notification.Sound);
            }
            if (notification.Badge.HasValue)
            {
                content.Badge = notification.Badge.Value;
            }

            var trigger = UNTimeIntervalNotificationTrigger.CreateTrigger(notification.SecondsOffSet, false);
            var requestID = notification.Id.ToString();
            var request = UNNotificationRequest.FromIdentifier(requestID, content, trigger);
            UNUserNotificationCenter.Current.AddNotificationRequest(request, (err) =>
            {
                if (err != null)
                {
                    // Do something with error...
                }
            });
        }
    }
}
#endif
