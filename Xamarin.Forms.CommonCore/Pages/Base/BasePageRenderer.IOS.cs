#if __IOS__
using System;
using UIKit;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms.Platform.iOS;

[assembly: ExportRenderer(typeof(BasePages), typeof(BasePageRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class BasePageRenderer : PageRenderer
    {
        private string backgroundImage;
        private ContentPage page;
        private BasePages basePage;

        protected override void OnElementChanged(VisualElementChangedEventArgs e)
        {
  
            page = Element as ContentPage;

            if (page != null && page is BasePages)
            {
                basePage = (BasePages)page;
                backgroundImage = page.BackgroundImage;
            }


            base.OnElementChanged(e);
        }

        public override void ViewWillAppear(bool animated)
        {

            base.ViewWillAppear(false);
            try
            {
                if (!string.IsNullOrEmpty(backgroundImage))
                {
                    UIGraphics.BeginImageContext(this.View.Frame.Size);
                    UIImage i = UIImage.FromFile(backgroundImage);
                    i = i.Scale(this.View.Frame.Size);

                    this.View.BackgroundColor = UIColor.FromPatternImage(i);
                }
            }
            catch (Exception ex)
            {
                ex.ConsoleWrite();
            }

            if (this.NavigationController != null)
            {
                var isVisible = !this.NavigationController.TopViewController.NavigationItem.HidesBackButton;
                if (isVisible && basePage != null && basePage.OverrideBackButton)
                {
                    this.NavigationController.TopViewController.NavigationItem.SetHidesBackButton(true, false);

                    // Change back icon.
                    this.NavigationController.TopViewController.NavigationItem.LeftBarButtonItem =
                        new UIBarButtonItem(
                            basePage.OverrideBackText,
                            UIBarButtonItemStyle.Plain,
                            (sender, args) =>
                            {
                                if (basePage.NeedOverrideSoftBackButton)
                                {
                                    basePage.OnSoftBackButtonPressed();
                                }
                                else
                                {
                                    NavigationController.PopViewController(true);
                                }

                            });
                }
            }

        }
    }
}
#endif
