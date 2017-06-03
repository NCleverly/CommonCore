#if __ANDROID__
using Android.App;
using Android.Content;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;

namespace PushNotification.Plugin
{
    [BroadcastReceiver]
    [IntentFilter(new[] { Android.Content.Intent.ActionBootCompleted })]
    public class AppUpdateReceiver : BroadcastReceiver
    {
        public override void OnReceive(Context context, Intent intent)
        {
            if (CrossPushNotification.IsInitialized)
                CrossPushNotification.Current.Register();

        }
    }
}
#endif