#if __IOS__
using CoreGraphics;
using Xamarin.Forms;
using Xamarin.Forms.Platform.iOS;
using MaterialControls;
using Xamarin.Forms.CommonCore.MaterialDesign;

[assembly: ExportRenderer(typeof(FTEControl), typeof(FTEControlRenderer))]
namespace Xamarin.Forms.CommonCore.MaterialDesign
{
	public class FTETextField : MDTextField
	{
		public override CGSize SizeThatFits(CGSize size)
		{
			return new CGSize(size.Width, 50);
		}
	}
	public class FTEControlRenderer : ViewRenderer<FTEControl, FTETextField>
	{
		private FTETextField fte;

		protected override void OnElementChanged(ElementChangedEventArgs<FTEControl> e)
		{
			base.OnElementChanged(e);

			if (this.Control == null)
			{
				fte = new FTETextField()
				{
					ErrorMessage = Element.ErrorText,
					ErrorColor = Element.ErrorColor.ToUIColor(),
					SingleLine = false,
					Label = Element.Placeholder,
					FloatingLabel = true,
					MaxVisibleLines = 1,
				};
				this.SetNativeControl(fte);
			}

		}

		protected override void OnElementPropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
		{
			base.OnElementPropertyChanged(sender, e);

			if (e.PropertyName == "IsValid")
			{
				if (Element != null && fte != null)
				{
					if (Element.IsValid)
						fte.HasError = false;
					else
						fte.HasError = true;
				}
			}
		}

	}
}
#endif

