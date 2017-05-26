#if __ANDROID__
using System;
using System.Threading.Tasks;
using Android;
using Android.App;
using Android.Content;
using Android.Support.Design.Widget;
using Android.Telephony;
using Android.Widget;
using Droid = Android;
using Xamarin.Forms.CommonCore;
using Android.Content.PM;
using Android.Support.V4.App;

[assembly: UsesPermission(Name = "android.permission.CALL_PHONE")]
[assembly: UsesPermission(Name = "android.permission.READ_PHONE_STATE")]
[assembly: Xamarin.Forms.Dependency(typeof(PhoneCall))]
namespace Xamarin.Forms.CommonCore
{
    public class PhoneCall : IPhoneCall
    {
        private TelephonyManager telephonyManager;
        private PhoneCallListener phoneListener;
        private string callBackKey;

        public Context Ctx
        {
            get { return Xamarin.Forms.Forms.Context; }
        }


        public void PlaceCall(string phoneNumber)
        {
            try
            {
                var intent = new Intent(Intent.ActionCall);
                var uri = global::Android.Net.Uri.Parse("tel:" + CoreExtensions.CleanPhoneNumber(phoneNumber));
                intent.SetData(uri);
                Ctx.StartActivity(intent);
            }
            catch (Exception ex)
            {
                var toast = Toast.MakeText(Ctx, "This activity is not supported", ToastLength.Long);
                toast.Show();
            }

        }

        public void PlaceCallWithCallBack(string phoneNumber, string callBackKey)
        {
            try
            {
                this.callBackKey = callBackKey;
                phoneListener = new PhoneCallListener();
                telephonyManager = (TelephonyManager)Ctx.GetSystemService(Context.TelephonyService);
                phoneListener.CallEndedEvent += PhoneCallEnded;

                telephonyManager.Listen(phoneListener, PhoneStateListenerFlags.CallState);
                var intent = new Intent(Intent.ActionCall);
                var uri = global::Android.Net.Uri.Parse("tel:" + CoreExtensions.CleanPhoneNumber(phoneNumber));
                intent.SetData(uri);
                Ctx.StartActivity(intent);
            }
            catch (Exception ex)
            {
                var toast = Toast.MakeText(Xamarin.Forms.Forms.Context, "This activity is not supported", ToastLength.Long);
                toast.Show();
            }
        }

        private void PhoneCallEnded(DateTime start, DateTime end)
        {
            if (phoneListener != null)
                phoneListener.CallEndedEvent -= PhoneCallEnded;
            telephonyManager.Listen(phoneListener, PhoneStateListenerFlags.None);
            phoneListener = null;
            InjectionManager.SendViewModelMessage(callBackKey,true);
        }
    }

    public delegate void CallEndedEventHandle(DateTime startTime, DateTime endTime);
    public class PhoneCallListener : PhoneStateListener
    {
        private bool isPhoneCalling = false;
        public event CallEndedEventHandle CallEndedEvent;
        private DateTime startTime;

        public override void OnCallStateChanged(CallState state, string incomingNumber)
        {
            switch ((CallState)state)
            {
                case CallState.Ringing:
                    break;
                case CallState.Offhook:
                    isPhoneCalling = true;
                    startTime = DateTime.Now;
                    break;
                case CallState.Idle:
                    if (isPhoneCalling)
                    {
                        isPhoneCalling = false;
                        if (CallEndedEvent != null)
                        {
                            CallEndedEvent(startTime, DateTime.Now);
                        }
                    }
                    break;
            }
            base.OnCallStateChanged(state, incomingNumber);
        }
    }
}
#endif
