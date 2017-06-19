#if __ANDROID__
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms.Platform.Android;

[assembly: ExportRenderer(typeof(TelephonyPage), typeof(TelephonyPageRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class TelephonyPageRenderer : PageRenderer
    {


    }
}
#endif
