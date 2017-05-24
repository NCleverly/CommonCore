#if __IOS__
using System;
using CoreTelephony;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms.Platform.iOS;

[assembly: ExportRenderer(typeof(TelephonyBoundPage<ObservableViewModel>), typeof(TelephonyPageRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class TelephoneManager
    {
        public static string CallBackKey { get; set; }
        public static bool IsListening { get; set; }
    }
    public class TelephonyPageRenderer : PageRenderer
    {
		    private CTCallCenter callCenter;
		    private bool callCenterIsListening;

		    public void CallEndedEvent(CTCall call)
		    {
		        if (TelephoneManager.IsListening && call.CallState == "CTCallStateDisconnected")
		        {
		            TelephoneManager.IsListening = false;
                    InjectionManager.SendViewModelMessage(TelephoneManager.CallBackKey,true);
		        }

		    }

		    public override void ViewDidDisappear(bool animated)
		    {
		        base.ViewDidDisappear(animated);
		        callCenter.CallEventHandler -= CallEndedEvent;
		    }

		    protected override void OnElementChanged(VisualElementChangedEventArgs e)
		    {
		        base.OnElementChanged(e);

		        if (callCenter == null)
		        {
		            callCenter = new CTCallCenter();
		            callCenter.CallEventHandler += CallEndedEvent;
		        }
		    }
	}
}
#endif
