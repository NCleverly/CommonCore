#if __ANDROID__
using System;
using Android.Content.Res;
using Android.Graphics.Drawables;
using Android.Graphics.Drawables.Shapes;
using Android.Support.V4.View;
using Android.Util;
using Droid = Android;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;

[assembly: ExportRenderer(typeof(GradientButton), typeof(GradientButtonRenderer))]
namespace Xamarin.Forms.CommonCore
{
	public class GradientButtonRenderer : ButtonRenderer
	{
		GradientButton caller;

		protected override void OnElementChanged(ElementChangedEventArgs<Button> e)
		{


			base.OnElementChanged(e);

			if (Control != null)
			{
				caller = e.NewElement as GradientButton;

				//            var gradient = new GradientDrawable(GradientDrawable.Orientation.TopBottom, new[] {
				//                caller.StartColor.ToAndroid().ToArgb(),
				//                caller.EndColor.ToAndroid().ToArgb()
				//            });
				//gradient.SetCornerRadius(caller.CornerRadius.ToDevicePixels());

				SetButtonDisableState();


				//if (caller.ShadowOpacity > 0.0)
				//{
				//	Control.SetShadowLayer(10f, 5f, 5f, Color.Red.ToAndroid());
				//}

				Control.SetBackground(CreateGradientDrawable());
				Control.Elevation = 105f;
				Control.TranslationZ = 105f;
				//Control.SetShadowLayer(
			}
		}

		private LayerDrawable GetLayerDrawable()
		{
			var shape = new GradientDrawable();
			shape.SetCornerRadius(caller.CornerRadius.ToDevicePixels());

			var c = Color.FromHex("#50CCCCCC").ToAndroid();

			shape.SetColor(c);


			Drawable[] layers = { shape, CreateGradientDrawable() };
			var layer = new LayerDrawable(layers);
			layer.SetLayerInset(1, -5, -5, 5, 5);
			return layer;
		}

		private GradientDrawable CreateGradientDrawable()
		{
			var gradient = new GradientDrawable(GradientDrawable.Orientation.TopBottom, new[] {
					caller.StartColor.ToAndroid().ToArgb(),
					caller.EndColor.ToAndroid().ToArgb()
				});
			gradient.SetCornerRadius(caller.CornerRadius.ToDevicePixels());
			return gradient;
		}
		private void SetButtonDisableState()
		{

         
			int[][] states = new int[][] {
				new int[] { Droid.Resource.Attribute.StateEnabled }, // enabled
                new int[] {-Droid.Resource.Attribute.StateEnabled }, // disabled
                new int[] {-Droid.Resource.Attribute.StateChecked }, // unchecked
                new int[] { Droid.Resource.Attribute.StatePressed }  // pressed
            };
			int[] colors = new int[] {
				caller.TextColor.ToAndroid(),
				caller.DisabledTextColor.ToAndroid(),
				caller.TextColor.ToAndroid(),
				caller.TextColor.ToAndroid()
			};
			var buttonStates = new ColorStateList(states, colors);
			Control.SetTextColor(buttonStates);
			Control.ClipToOutline = true;
		}

		protected override void OnElementPropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
		{
			Control.Elevation = 100f;

			if (e.PropertyName == GradientButton.IsEnabledProperty.PropertyName)
			{
				var gradient = new GradientDrawable(GradientDrawable.Orientation.TopBottom, new[] {
					caller.StartColor.ToAndroid().ToArgb(),
					caller.EndColor.ToAndroid().ToArgb()
				});
				gradient.SetCornerRadius(caller.CornerRadius);
				Control.SetBackground(gradient);
			}
			base.OnElementPropertyChanged(sender, e);
		}
	}
}
#endif

