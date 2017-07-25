#if __IOS__
using System;
using UIKit;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms.Platform.iOS;
using FormColor = Xamarin.Forms.Color;

[assembly: Xamarin.Forms.ExportRenderer(typeof(SwitchControl), typeof(SwitchControlRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class SwitchControlRenderer : SwitchRenderer
    {
        private SwitchControl ctrl;
        private UISwitch switchControl;
		private FormColor falseColor;
		private FormColor trueColor;

        protected override void OnElementChanged(ElementChangedEventArgs<Switch> e)
        {
            base.OnElementChanged(e);
            if (this.Control != null)
            {
				switchControl = Control as UISwitch;
				ctrl = (SwitchControl)e.NewElement;
				trueColor = ctrl.TrueColor;
				falseColor = ctrl.FalseColor;

				switchControl.TintColor = UIColor.FromRGBA((nfloat)falseColor.R,
										   (nfloat)falseColor.G,
										   (nfloat)falseColor.B,
										   0.50f);
				// see example code for caveat about changing background colour...

				switchControl.OnTintColor = UIColor.FromRGBA((nfloat)trueColor.R,
															 (nfloat)trueColor.G,
															 (nfloat)trueColor.B,
															 0.50f);


                SetThumbTint();
            }

           
        }

        protected override void OnElementPropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            base.OnElementPropertyChanged(sender, e);

            SetThumbTint();
        }

        private void SetThumbTint()
        {
			if (ctrl.IsToggled)
			{
				switchControl.ThumbTintColor = UIColor.FromRGBA((nfloat)trueColor.R,
																(nfloat)trueColor.G,
																(nfloat)trueColor.B,
																1.0f);
			}
			else
			{
				switchControl.ThumbTintColor = UIColor.FromRGBA((nfloat)falseColor.R,
											 (nfloat)falseColor.G,
											 (nfloat)falseColor.B,
											 1.0f);
			}
        }
       
    }
}
#endif
