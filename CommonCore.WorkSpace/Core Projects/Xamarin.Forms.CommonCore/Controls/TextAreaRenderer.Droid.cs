#if __ANDROID__
using System;
using Android.Text.Method;
using Android.Text.Util;
using Android.Widget;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;
using Droid = Android;

[assembly: ExportRenderer(typeof(TextArea), typeof(TextAreaRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class TextAreaRenderer : ViewRenderer<TextArea, TextView>
    {
        private TextView txtView;
        private TextArea parent;

        protected override void OnElementChanged(ElementChangedEventArgs<TextArea> e)
        {
            base.OnElementChanged(e);
            if (e.NewElement != null)
                parent = e.NewElement;

            if (txtView == null)
            {
                txtView = new TextView(Forms.Context);
                txtView.Text = e.NewElement.Text;

                var textColor = Droid.Graphics.Color.Black;
                if (((int)parent.TextColor.R) != -1)
                    textColor = e.NewElement.TextColor.ToAndroid();

                if (parent.LinksEnabled)
                    Linkify.AddLinks(txtView, MatchOptions.All);

                txtView.SetTextSize(Droid.Util.ComplexUnitType.Sp, (float)parent.FontSize);
                txtView.SetTextColor(textColor);
                SetNativeControl(txtView);
            }
        }
    }
}
#endif

