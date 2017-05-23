#if __ANDROID__
using System;
using System.ComponentModel;
using Android.Content.Res;
using Android.Support.Design.Widget;
using Android.Support.V4.View;
using Xamarin.Forms;
using Droid = Android;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms.Platform.Android;
using Xamarin.Forms.Platform.Android.AppCompat;

[assembly: ExportRenderer(typeof(BaseTabbedPage), typeof(BaseTabbedPageRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class BaseTabbedPageRenderer :TabbedPageRenderer
    {
		bool setup;
		ViewPager pager;
		TabLayout layout;
        BaseTabbedPage tabbedPage;

		protected override void OnElementPropertyChanged(object sender, PropertyChangedEventArgs e)
		{
			base.OnElementPropertyChanged(sender, e);

			if (setup)
				return;

			if (e.PropertyName == "Renderer")
			{
                tabbedPage = (BaseTabbedPage)Element;
				pager = (ViewPager)ViewGroup.GetChildAt(0);
				layout = (TabLayout)ViewGroup.GetChildAt(1);
				setup = true;

				ColorStateList colors = CreateColorState();

				for (int i = 0; i < layout.TabCount; i++)
				{
					var tab = layout.GetTabAt(i);
					var icon = tab.Icon;
					if (icon != null)
					{
						icon = Droid.Support.V4.Graphics.Drawable.DrawableCompat.Wrap(icon);
						Droid.Support.V4.Graphics.Drawable.DrawableCompat.SetTintList(icon, colors);
					}
				}

			}
		}
		private ColorStateList CreateColorState()
		{
			int[][] states = new int[][] {
				new int[] { Droid.Resource.Attribute.StateSelected }, // enabled
                new int[] { -Droid.Resource.Attribute.StateSelected } // disabled
			};
			int[] colors = new int[] {
               
				tabbedPage.SelectedTabForegroundColor.ToAndroid(),
				tabbedPage.TabForegroundColor.ToAndroid()
			};
			return new ColorStateList(states, colors);
		}
    }
}
#endif
