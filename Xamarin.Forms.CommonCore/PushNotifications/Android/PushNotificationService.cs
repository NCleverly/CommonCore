#if __ANDROID__
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace PushNotification.Plugin
{
    [Service]
    public class PushNotificationService : Service
    {
        public Context Ctx
        {
            get { return Xamarin.Forms.Forms.Context; }
        }
        public override void OnCreate()
        {
            base.OnCreate();

            System.Diagnostics.Debug.WriteLine("Push Notification Service - Created");
        }

        public override StartCommandResult OnStartCommand(Android.Content.Intent intent, StartCommandFlags flags, int startId)
        {
            System.Diagnostics.Debug.WriteLine("Push Notification Service - Started");
            // return StartCommandResult.Sticky;
            return StartCommandResult.RedeliverIntent;
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

   //     public override void OnTaskRemoved(Intent rootIntent)
   //     {
   //         var pushIntent = new Intent(Ctx, typeof(PushNotificationService));
			//var alarm = (AlarmManager)Ctx.GetSystemService(Context.AlarmService);
        //    var pending = PendingIntent.GetService(Ctx, 0, pushIntent, PendingIntentFlags.UpdateCurrent);
        //    alarm.Set(AlarmType.ElapsedRealtimeWakeup, 1000, pending);

        //    base.OnTaskRemoved(rootIntent);
        //}
    }
}
#endif