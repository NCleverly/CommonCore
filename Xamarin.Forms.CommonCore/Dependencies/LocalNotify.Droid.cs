#if __ANDROID__
using System;
using Android;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Support.V4.App;
using Xamarin.Forms.CommonCore;
using Droid = Android;

[assembly: Xamarin.Forms.Dependency(typeof(LocalNotify))]
namespace Xamarin.Forms.CommonCore
{
    public class LocalNotify : ILocalNotify
    {
        public static Type MainType { get; set; }

        public Context Ctx
        {
            get { return Xamarin.Forms.Forms.Context; }
        }
        public void Show(LocalNotification notification)
        {
            // When the user clicks the notification, SecondActivity will start up.
            Intent resultIntent = new Intent(Ctx, MainType);

            if (!string.IsNullOrEmpty(notification.MetaData))
            {
                Bundle valuesForActivity = new Bundle();
                valuesForActivity.PutString("metadata", notification.MetaData);
                resultIntent.PutExtras(valuesForActivity);
            }

            // Construct a back stack for cross-task navigation:
            var stackBuilder = Droid.App.TaskStackBuilder.Create(Ctx);
            stackBuilder.AddParentStack(Java.Lang.Class.FromType(MainType));
            stackBuilder.AddNextIntent(resultIntent);

            // Create the PendingIntent with the back stack:            
            PendingIntent resultPendingIntent =
                stackBuilder.GetPendingIntent(0, PendingIntentFlags.UpdateCurrent);

            // Build the notification:
            NotificationCompat.Builder builder = new NotificationCompat.Builder(Ctx)
                .SetAutoCancel(true)                    // Dismiss from the notif. area when clicked
                .SetContentIntent(resultPendingIntent)  // Start 2nd activity when the intent is clicked.
                .SetContentTitle(notification.Title)      // Set its title
                                                          //.SetNumber(count)                       // Display the count in the Content Info
                .SetSmallIcon(GetResourceIdByName(notification.Icon))  // Display this icon
                .SetContentText(notification.Message); // The message to display.

            // Finally, publish the notification:
            NotificationManager notificationManager =
                (NotificationManager)Ctx.GetSystemService(Context.NotificationService);
            notificationManager.Notify(notification.Id, builder.Build());
        }

        protected void dialogNotify(String title, String message)
        {
            Xamarin.Forms.Device.BeginInvokeOnMainThread(() =>
            {
                AlertDialog.Builder dlg = new AlertDialog.Builder(Ctx);
                AlertDialog alert = dlg.Create();
                alert.SetTitle(title);
                alert.SetButton("Ok", delegate
                {
                    alert.Dismiss();
                });
                alert.SetMessage(message);
                alert.Show();
            });

        }



        private int GetResourceIdByName(string name)
        {
            if (!string.IsNullOrEmpty(name))
            {
                return Ctx.Resources.GetIdentifier(name, "drawable", Ctx.PackageName);
            }
            else
            {
                return Ctx.PackageManager.GetApplicationInfo(Ctx.PackageName, Droid.Content.PM.PackageInfoFlags.MetaData).Icon;
            }
        }
    }
}
#endif
