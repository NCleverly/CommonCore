#if __ANDROID__
using System;
using Android.Content;
using Android.Graphics.Drawables;
using Android.Widget;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;
using Droid = Android;

[assembly: ExportRenderer(typeof(EntryUnderline), typeof(EntryUnderlineRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class EntryUnderlineRenderer : EntryRenderer
    {
        private EntryUnderline formControl;

        protected override void OnElementChanged(ElementChangedEventArgs<Entry> e)
        {
            base.OnElementChanged(e);

            formControl = (Element as EntryUnderline);

            var editText = (EditText)Control;
            editText.Touch += (a, aa) =>
            {
                aa.Handled = false;
                var w = editText.Width;
                var wl = editText.CompoundPaddingLeft;
                var wr = w - editText.CompoundPaddingRight;
                var x = aa.Event.GetX();
                if (wr < x && aa.Event.Action == Droid.Views.MotionEventActions.Down)
                {
                    formControl.IsPassword = !formControl.IsPassword;
                }

            };

            if (formControl.Icon != null)
            {
                var size = editText.TextSize;
                //var rightDrawable = formControl.IsPassword == true ? GetDrawable("view.png") : null;
                //editText.SetCompoundDrawablesWithIntrinsicBounds(GetDrawable(formControl.Icon)?.Target as Drawable, null, rightDrawable?.Target as Drawable, null);
                editText.CompoundDrawablePadding = 20;
                editText.Gravity = Droid.Views.GravityFlags.Bottom;
                editText.Background.Mutate().SetColorFilter(formControl.EntryColor.ToAndroid(), Droid.Graphics.PorterDuff.Mode.SrcAtop);
            }
        }

        private WeakReference GetDrawable(string fileName)
        {
            var img = fileName.Replace(".png", "");
            var id = GetResourceIdByName(img);
            var drawable = new WeakReference((Drawable)Resources.GetDrawable(id));
            ((Drawable)drawable.Target).SetColorFilter(formControl.EntryColor.ToAndroid(), Droid.Graphics.PorterDuff.Mode.SrcAtop);
            return drawable;
        }

        private int GetResourceIdByName(string name)
        {
            return Resources.GetIdentifier(name, "drawable", Context.PackageName);
        }


    }
}
#endif

