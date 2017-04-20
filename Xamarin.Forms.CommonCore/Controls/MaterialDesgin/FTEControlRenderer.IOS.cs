//#if __IOS__
//using System;
//using Xamarin.Forms.CommonCore;
//using CoreAnimation;
//using CoreGraphics;
//using Foundation;
//using UIKit;
//using Xamarin.Forms;
//using Xamarin.Forms.Platform.iOS;

//[assembly: ExportRenderer(typeof(FTEControl), typeof(FTEControlRenderer))]
//namespace Xamarin.Forms.CommonCore
//{

//	public partial class FTEControlRenderer : ViewRenderer<FTEControl, FloatingTextEntry>
//	{
//		private FloatingTextEntry fte;

//		protected override void OnElementChanged(ElementChangedEventArgs<FTEControl> e)
//		{
//			base.OnElementChanged(e);

//			if (this.Control == null)
//			{
//				fte = new FloatingTextEntry();
//				fab.Frame = new CoreGraphics.CGRect(0, 0, 24, 24);

//				this.SetNativeControl(fte);

		
//			}

//			if (e.NewElement != null)
//			{
				
//			}

//			if (e.OldElement != null)
//			{
				
//			}
//		}

//		protected override void OnElementPropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
//		{

//		}


//	}


//}
//#endif

