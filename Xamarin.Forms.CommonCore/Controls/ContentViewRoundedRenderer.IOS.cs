#if __IOS__
using System;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms;
using Xamarin.Forms.Platform.iOS;

[assembly: ExportRenderer(typeof(ContentViewRounded), typeof(ContentViewRoundedRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class ContentViewRoundedRenderer : VisualElementRenderer<ContentView>
    {
        protected override void OnElementChanged(ElementChangedEventArgs<ContentView> e)
        {
            base.OnElementChanged(e);

            if (e.OldElement != null)
            {
                return;
            }

            Layer.CornerRadius = (nfloat)((ContentViewRounded)Element).CornerRadius;
        }


    }
}
#endif

