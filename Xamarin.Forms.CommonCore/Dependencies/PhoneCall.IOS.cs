#if __IOS__
using System;
using Foundation;
using UIKit;
using Xamarin.Forms.CommonCore;
using CoreTelephony;

[assembly: Xamarin.Forms.Dependency(typeof(PhoneCall))]
namespace Xamarin.Forms.CommonCore
{
    public class PhoneCall : IPhoneCall
    {
        //private CTCallCenter callCenter;
        //private bool callCenterIsListening;
        //private string callBackKey;

        public void PlaceCall(string phoneNumber)
        {
            var currentNumber = CoreExtensions.CleanPhoneNumber(phoneNumber);

            if (UIApplication.SharedApplication.CanOpenUrl(new NSUrl("telprompt://" + currentNumber)))
            {
                try
                {
                    UIApplication.SharedApplication.OpenUrl(new NSUrl("telprompt://" + currentNumber));
                }
                catch (Exception ex)
                {
                    var m = ex.Message;
                }
            }
            else {
                UIAlertView messageBox = new UIAlertView("Phone Not Enabled", "This device does not support phone calls", null, "Ok", null);
                messageBox.Show();
            }
        }

        public void PlaceCallWithCallBack(string phoneNumber, string callBackKey)
        {
            TelephoneManager.CallBackKey = callBackKey;
            var currentNumber = CoreExtensions.CleanPhoneNumber(phoneNumber);

            if (UIApplication.SharedApplication.CanOpenUrl(new NSUrl("telprompt://" + currentNumber)))
            {
                TelephoneManager.IsListening = true;
                try
                {
                    UIApplication.SharedApplication.OpenUrl(new NSUrl("telprompt://" + currentNumber));
                }
                catch (Exception ex)
                {
                    var m = ex.Message;
                }
            }
            else {
                UIAlertView messageBox = new UIAlertView("Phone Not Enabled", "This device does not support phone calls", null, "Ok", null);
                messageBox.Show();
            }
        }
    }


    //public class PhonePageRenderer : PageRenderer
    //{
    //    private CTCallCenter callCenter;
    //    private bool callCenterIsListening;

    //    public void CallEndedEvent(CTCall call)
    //    {
    //        var state = call.CallState;

    //        if (PhoneCallback.Instance.IsListening && state == "CTCallStateDisconnected")
    //        {
    //            PhoneCallback.Instance.IsListening = false;
    //            PhoneCallback.Instance.Complete(true);
    //        }

    //    }

    //    public override void ViewDidDisappear(bool animated)
    //    {
    //        base.ViewDidDisappear(animated);
    //        callCenter.CallEventHandler -= CallEndedEvent;
    //    }

    //    protected override void OnElementChanged(VisualElementChangedEventArgs e)
    //    {
    //        base.OnElementChanged(e);

    //        if (callCenter == null)
    //        {
    //            callCenter = new CTCallCenter();
    //            callCenter.CallEventHandler += CallEndedEvent;
    //        }
    //    }
    //}
}
#endif
