#if __IOS__
using System;
using UIKit;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms.Platform.iOS;

[assembly: ExportRenderer(typeof(BaseTabbedPage), typeof(BaseTabbedPageRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class BaseTabbedPageRenderer: TabbedRenderer
    {
        BaseTabbedPage tabbedPage;
        protected override void OnElementChanged(VisualElementChangedEventArgs e)
        {
            base.OnElementChanged(e);

            tabbedPage = (BaseTabbedPage)Element;
            TabBar.BackgroundImage = new UIImage();
            TabBar.BackgroundColor = tabbedPage.TabBackgroundColor.ToUIColor();
            TabBar.TintColor = tabbedPage.TabForegroundColor.ToUIColor();
            TabBar.SelectedImageTintColor = tabbedPage.SelectedTabForegroundColor.ToUIColor();

		
            TabBar.BarTintColor = tabbedPage.TabForegroundColor.ToUIColor();
 
        }
    }
}
#endif
