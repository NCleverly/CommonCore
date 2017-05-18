﻿#if __IOS__
using System;
using UIKit;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms.Platform.iOS;

[assembly: ExportRenderer(typeof(ContentPage), typeof(BasePageRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class BasePageRenderer : PageRenderer
    {
        private string backgroundImage;

       protected override void OnElementChanged(VisualElementChangedEventArgs e)
        {
            var page = Element as ContentPage;
            backgroundImage = page.BackgroundImage;
            base.OnElementChanged(e);
        }
		public override void ViewWillAppear(bool animated)
		{
            
			base.ViewWillAppear(false);

            if (backgroundImage != null)
            {
                UIGraphics.BeginImageContext(this.View.Frame.Size);
                UIImage i = UIImage.FromFile(backgroundImage);
                i = i.Scale(this.View.Frame.Size);

                this.View.BackgroundColor = UIColor.FromPatternImage(i);
            }

		}
    }
}
#endif
