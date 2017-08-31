#if __ANDROID__
using System;
using System.Linq;
using Android.Content;
using Android.Graphics.Drawables;
using Android.Widget;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;
using Views = Android.Views;
using Graphics = Android.Graphics;
using System.ComponentModel;

[assembly: ExportRenderer(typeof(CoreUnderlineEntry), typeof(CoreUnderlineEntryRenderer))]
namespace Xamarin.Forms.CommonCore
{
	public class CoreUnderlineEntryRenderer : EntryRenderer
	{
		private CoreUnderlineEntry formControl;

		protected override void OnElementChanged(ElementChangedEventArgs<Xamarin.Forms.Entry> e)
		{
			base.OnElementChanged(e);

			if (e.NewElement != null)
			{
				formControl = (Element as CoreUnderlineEntry);

				var editText = (EditText)Control;
				editText.EditorAction += (obj, act) =>
				  {
					  formControl?.NextFocus?.Invoke();
				  };
				editText.Touch += (a, aa) =>
				{
					aa.Handled = false;
					var w = editText.Width;
					var wl = editText.CompoundPaddingLeft;
					var wr = w - editText.CompoundPaddingRight;
					var x = aa.Event.GetX();
					if (wr < x && aa.Event.Action == Views.MotionEventActions.Down)
					{
						if (formControl.PasswordRevealEnabled)
						{
							formControl.IsPassword = !formControl.IsPassword;
							var rightDrawable = formControl.IsPassword == true ? GetDrawable("passwordeye.png") : GetDrawable("passwordeyeslash.png");
							editText.SetCompoundDrawablesWithIntrinsicBounds(GetDrawable(formControl.Icon)?.Target as Drawable, null, rightDrawable?.Target as Drawable, null);
							editText.CompoundDrawablePadding = 20;
						}
					}

				};

				if (formControl != null && formControl.IsPassword && formControl.PasswordRevealEnabled)
				{
					var size = editText.TextSize;
					var rightDrawable = formControl.IsPassword == true ? GetDrawable("passwordeye.png") : null;

					editText.SetCompoundDrawablesWithIntrinsicBounds(GetDrawable(formControl.Icon)?.Target as Drawable, null, rightDrawable?.Target as Drawable, null);
					editText.CompoundDrawablePadding = 20;
					editText.Gravity = Views.GravityFlags.Bottom;

				}
				if (formControl != null && formControl.EntryColor != null)
				{
					editText.Background.Mutate().SetColorFilter(formControl.EntryColor.ToAndroid(), Graphics.PorterDuff.Mode.SrcAtop);
				}

				if ((Control != null) & (e.NewElement != null))
				{
					var entryExt = (e.NewElement as CoreUnderlineEntry);
					Control.ImeOptions = entryExt.ReturnKeyType.GetValueFromDescription();
					Control.SetImeActionLabel(entryExt.ReturnKeyType.ToString(), Control.ImeOptions);

				}

				if (!string.IsNullOrEmpty(e.NewElement?.StyleId) && Control != null)
				{
					var fileName = e.NewElement.StyleId + ".ttf";
					if (Resources.Assets.List("").Contains(fileName))
					{
						var font = Graphics.Typeface.CreateFromAsset(Forms.Context.ApplicationContext.Assets, fileName);
						Control.Typeface = font;
					}
				}
			}
		}


		protected override void OnElementPropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			base.OnElementPropertyChanged(sender, e);

			if (Control == null) return;

			if (e.PropertyName == CoreUnderlineEntry.ReturnKeyTypeProperty.PropertyName)
			{
				var entryExt = (sender as CoreUnderlineEntry);
				Control.ImeOptions = entryExt.ReturnKeyType.GetValueFromDescription();
				Control.SetImeActionLabel(entryExt.ReturnKeyType.ToString(), Control.ImeOptions);
			}


			if (formControl.HasError)
			{
				Device.BeginInvokeOnMainThread(() =>
				{
					Control?.Background?.ClearColorFilter();
					Control?.Background?.SetColorFilter(Graphics.Color.Red, Graphics.PorterDuff.Mode.SrcIn);
				});
			}
			else
			{
				Device.BeginInvokeOnMainThread(() =>
				{
					Control?.Background?.ClearColorFilter();
					Control?.Background?.SetColorFilter(formControl.EntryColor.ToAndroid(), Graphics.PorterDuff.Mode.SrcIn);
				});
			}

		}

		private WeakReference GetDrawable(string fileName)
		{
			if (String.IsNullOrEmpty(fileName))
				return null;
			var img = fileName.Replace(".png", "");
			var id = GetResourceIdByName(img);
			var drawable = new WeakReference((Drawable)Resources.GetDrawable(id));
			((Drawable)drawable.Target).SetColorFilter(formControl.EntryColor.ToAndroid(), Graphics.PorterDuff.Mode.SrcAtop);
			return drawable;
		}

		private int GetResourceIdByName(string name)
		{
			return Resources.GetIdentifier(name, "drawable", Context.PackageName);
		}

	}

}
#endif

