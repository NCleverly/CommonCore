#if __ANDROID__
using Android.App;
using Android.Content;
using Android.OS;
using Plugin.CurrentActivity;

namespace PushNotification.Plugin
{
    [Service]
    public class PushNotificationService : Service
    {
        public Context Ctx
        {
            get => CrossCurrentActivity.Current.Activity;
        }
        public override void OnCreate()
        {
            base.OnCreate();

            System.Diagnostics.Debug.WriteLine("Push Notification Service - Created");
        }

        public override StartCommandResult OnStartCommand(Android.Content.Intent intent, StartCommandFlags flags, int startId)
        {
            System.Diagnostics.Debug.WriteLine("Push Notification Service - Started");

            return StartCommandResult.Sticky;
        }

        public override Android.OS.IBinder OnBind(Android.Content.Intent intent)
        {
            System.Diagnostics.Debug.WriteLine("Push Notification Service - Binded");
            return null;
        }

        public override void OnDestroy()
        {
            System.Diagnostics.Debug.WriteLine("Push Notification Service - Destroyed");
            base.OnDestroy();
        }

        public override void OnTaskRemoved(Intent rootIntent)
        {
            System.Diagnostics.Debug.WriteLine($"************** AlarmManager set to restart push service ******************");

            var restartServiceTask = new Intent(Application.Context, typeof(PushNotificationService));
            restartServiceTask.SetPackage(Application.PackageName);
            var restartPendingIntent = PendingIntent.GetService(Application.Context, 1, restartServiceTask, PendingIntentFlags.OneShot);
            var myAlarmService = (AlarmManager)Application.Context.GetSystemService(Context.AlarmService);
            myAlarmService.Set(AlarmType.ElapsedRealtime, SystemClock.ElapsedRealtime() + 1000, restartPendingIntent);

            base.OnTaskRemoved(rootIntent);
        }

    }
}
#endif