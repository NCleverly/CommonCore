#if __ANDROID__
using System;
using System.Collections.Generic;
using System.Text;
using Android.App;
using Android.Content;
using Gcm.Client;
using WindowsAzure.Messaging;
using Droid = Android;

[assembly: Permission(Name = "@PACKAGE_NAME@.permission.C2D_MESSAGE")]
[assembly: UsesPermission(Name = "@PACKAGE_NAME@.permission.C2D_MESSAGE")]
[assembly: UsesPermission(Name = "com.google.android.c2dm.permission.RECEIVE")]
[assembly: UsesPermission(Name = "android.permission.INTERNET")]
[assembly: UsesPermission(Name = "android.permission.WAKE_LOCK")]
//GET_ACCOUNTS is only needed for android versions 4.0.3 and below
[assembly: UsesPermission(Name = "android.permission.GET_ACCOUNTS")]
namespace Xamarin.Forms.CommonCore
{

    [BroadcastReceiver(Permission = Gcm.Client.Constants.PERMISSION_GCM_INTENTS)]
    [IntentFilter(new string[] { Gcm.Client.Constants.INTENT_FROM_GCM_MESSAGE }, Categories = new string[] { "@PACKAGE_NAME@" })]
    [IntentFilter(new string[] { Gcm.Client.Constants.INTENT_FROM_GCM_REGISTRATION_CALLBACK }, Categories = new string[] { "@PACKAGE_NAME@" })]
    [IntentFilter(new string[] { Gcm.Client.Constants.INTENT_FROM_GCM_LIBRARY_RETRY }, Categories = new string[] { "@PACKAGE_NAME@" })]
    public class PushHandlerBroadcastReceiver : GcmBroadcastReceiverBase<GcmService>
    {
        public static string[] SENDER_IDS = new string[] { NotificationSettings.GoogleSenderID };
    }

    [Service]
    public class GcmService : GcmServiceBase
    {
        public static string RegistrationID { get; private set; }

        public GcmService()
            : base(PushHandlerBroadcastReceiver.SENDER_IDS) { }

        protected override void OnMessage(Context context, Intent intent)
        {
            var msg = new StringBuilder();

            if (intent != null && intent.Extras != null)
            {
                foreach (var key in intent.Extras.KeySet())
                    msg.AppendLine(key + "=" + intent.Extras.Get(key).ToString());
            }

            string messageText = intent.Extras.GetString("message");
            if (!string.IsNullOrEmpty(messageText))
            {
                createNotification("New hub message!", messageText);
            }
            else
            {
                createNotification("Unknown message details", msg.ToString());
            }
        }

        protected override void OnError(Context context, string errorId)
        {

        }

        protected override void OnRegistered(Context context, string registrationId)
        {
            var hub = new NotificationHub(NotificationSettings.NotificationHubName, NotificationSettings.DefaultListenSharedAccess,
                                        context);
            try
            {
                hub.UnregisterAll(registrationId);
            }
            catch (Exception ex)
            {
                var e = ex;
            }

            var tags = new List<string>() { NotificationSettings.Tag }; // create tags if you want

            try
            {
                var hubRegistration = hub.Register(registrationId, tags.ToArray());
            }
            catch (Exception ex)
            {
                var x = ex;
            }
        }

        protected override void OnUnRegistered(Context context, string registrationId)
        {

        }

        void createNotification(string title, string desc)
        {
			if (NotificationSettings.MainActivity == null)
				return;
			
            //Create notification
            var notificationManager = GetSystemService(Context.NotificationService) as NotificationManager;

            //Create an intent to show UI
            var uiIntent = new Intent(this, NotificationSettings.MainActivity);

            //Create the notification
            var notification = new Notification(Droid.Resource.Drawable.SymActionEmail, title);

            //Auto-cancel will remove the notification once the user touches it
            notification.Flags = NotificationFlags.AutoCancel;

            //Set the notification info
            //we use the pending intent, passing our ui intent over, which will get called
            //when the notification is tapped.
            notification.SetLatestEventInfo(this, title, desc, PendingIntent.GetActivity(Xamarin.Forms.Forms.Context, 0, uiIntent, 0));

            //Show the notification
            notificationManager.Notify(1, notification);
            dialogNotify(title, desc);
        }

        protected void dialogNotify(String title, String message)
        {
            Xamarin.Forms.Device.BeginInvokeOnMainThread(() =>
            {
                AlertDialog.Builder dlg = new AlertDialog.Builder(Xamarin.Forms.Forms.Context);
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
    }

}



#endif

