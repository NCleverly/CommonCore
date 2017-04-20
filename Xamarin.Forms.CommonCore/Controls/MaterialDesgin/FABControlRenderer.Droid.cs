#if __ANDROID__
using System;
using Android.Widget;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;
using com.refractored.fab;
using Android.Views;
using System.IO;
using Droid = Android;
using System.Threading.Tasks;
using Android.App;

[assembly: ExportRenderer(typeof(FABControl), typeof(FABControlRenderer))]
namespace Xamarin.Forms.CommonCore
{
	public class FABControlRenderer : ViewRenderer<FABControl, FrameLayout>
	{
		private const int MARGIN_DIPS = 16;
		private const int FAB_HEIGHT_NORMAL = 56;
		private const int FAB_HEIGHT_MINI = 40;
		private const int FAB_FRAME_HEIGHT_WITH_PADDING = (MARGIN_DIPS * 2) + FAB_HEIGHT_NORMAL;
		private const int FAB_FRAME_WIDTH_WITH_PADDING = (MARGIN_DIPS * 2) + FAB_HEIGHT_NORMAL;
		private const int FAB_MINI_FRAME_HEIGHT_WITH_PADDING = (MARGIN_DIPS * 2) + FAB_HEIGHT_MINI;
		private const int FAB_MINI_FRAME_WIDTH_WITH_PADDING = (MARGIN_DIPS * 2) + FAB_HEIGHT_MINI;
		private readonly FloatingActionButton fab;
		private readonly Droid.Content.Context context;


		public FABControlRenderer()
		{

			context = Xamarin.Forms.Forms.Context;

			float d = context.Resources.DisplayMetrics.Density;
			var margin = (int)(MARGIN_DIPS * d); // margin in pixels

			fab = new FloatingActionButton(context);
			var lp = new FrameLayout.LayoutParams(LayoutParams.WrapContent, LayoutParams.WrapContent);
			lp.Gravity = GravityFlags.CenterVertical | GravityFlags.CenterHorizontal;
			lp.LeftMargin = margin;
			lp.TopMargin = margin;
			lp.BottomMargin = margin;
			lp.RightMargin = margin;
			fab.LayoutParameters = lp;
		}

		protected override void OnElementChanged(ElementChangedEventArgs<FABControl> e)
		{

			base.OnElementChanged(e);

			if (e.OldElement != null || this.Element == null)
				return;

			if (e.OldElement != null)
				e.OldElement.PropertyChanged -= HandlePropertyChanged;

			if (this.Element != null)
			{
				//UpdateContent ();
				this.Element.PropertyChanged += HandlePropertyChanged;
			}

			Element.Show = Show;
			Element.Hide = Hide;

			SetFabImage(Element.ImageName);
			SetFabSize(Element.Size);

			fab.ColorNormal = Element.ColorNormal.ToAndroid();
			fab.ColorPressed = Element.ColorPressed.ToAndroid();
			fab.ColorRipple = Element.ColorRipple.ToAndroid();
			fab.HasShadow = Element.HasShadow;
			fab.Click += Fab_Click;

			var frame = new FrameLayout(context);
			frame.RemoveAllViews();
			frame.AddView(fab);

			SetNativeControl(frame);
		}

		public void Show(bool animate = true)
		{
			fab.Show(animate);
		}

		public void Hide(bool animate = true)
		{
			fab.Hide(animate);
		}

		void HandlePropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
		{
			if (e.PropertyName == "Content")
			{
				Tracker.UpdateLayout();
			}
			else if (e.PropertyName == FABControl.ColorNormalProperty.PropertyName)
			{
				fab.ColorNormal = Element.ColorNormal.ToAndroid();
			}
			else if (e.PropertyName == FABControl.ColorPressedProperty.PropertyName)
			{
				fab.ColorPressed = Element.ColorPressed.ToAndroid();
			}
			else if (e.PropertyName == FABControl.ColorRippleProperty.PropertyName)
			{
				fab.ColorRipple = Element.ColorRipple.ToAndroid();
			}
			else if (e.PropertyName == FABControl.ImageNameProperty.PropertyName)
			{
				SetFabImage(Element.ImageName);
			}
			else if (e.PropertyName == FABControl.SizeProperty.PropertyName)
			{
				SetFabSize(Element.Size);
			}
			else if (e.PropertyName == FABControl.HasShadowProperty.PropertyName)
			{
				fab.HasShadow = Element.HasShadow;
			}
		}

		void SetFabImage(string imageName)
		{
			if (!string.IsNullOrWhiteSpace(imageName))
			{
				try
				{
					Task.Run(async () =>
					{
						var source = FileImageSource.FromFile(imageName);
						var handler = source.GetHandler();
						var bm = await handler.LoadImageAsync(source, this.context);
						(this.context as Activity).RunOnUiThread(() =>
						{
							fab.SetImageBitmap(bm);
						});
					});
				}
				catch (Exception ex)
				{
					throw new FileNotFoundException("There was no Android Drawable by that name.", ex);
				}
			}
		}

		void SetFabSize(FABControlSize size)
		{
			if (size == FABControlSize.Mini)
			{
				fab.Size = FabSize.Mini;
				Element.WidthRequest = FAB_MINI_FRAME_WIDTH_WITH_PADDING;
				Element.HeightRequest = FAB_MINI_FRAME_HEIGHT_WITH_PADDING;
			}
			else
			{
				fab.Size = FabSize.Normal;
				Element.WidthRequest = FAB_FRAME_WIDTH_WITH_PADDING;
				Element.HeightRequest = FAB_FRAME_HEIGHT_WITH_PADDING;
			}
		}

		void Fab_Click(object sender, EventArgs e)
		{
			Element?.Command?.Execute(null);
			Element?.Clicked?.Invoke(sender, e);
		}
	}
}
#endif
