#if __IOS__
using System;
using System.Reflection;
using AudioToolbox;
using CoreGraphics;
using Foundation;
using UIKit;

namespace Xamarin.Forms.CommonCore.Native
{
	public static class VPControllerExtensions
	{

		public static Nullable<T> ToPrimitive<T> (this UITextField txt)where T: struct
		{
			if (!string.IsNullOrEmpty (txt.Text)) {
				return TConverter.ChangeType<T> (txt.Text);  
			}
			return null;
		}


		public static void PushController (this UIApplicationDelegate appDelegate, string controllerName)
		{
			var nav = appDelegate.Window.RootViewController as UINavigationController;
			var ctrl = (UIViewController)nav.Storyboard.InstantiateViewController (controllerName);
			nav.PushViewController (ctrl, true);
		}

		public static void PushController (this UIApplicationDelegate appDelegate, string controllerName, string propName, object objValue)
		{
			var nav = appDelegate.Window.RootViewController as UINavigationController;
			var ctrl = (UIViewController)nav.Storyboard.InstantiateViewController (controllerName);
			var prop = ctrl.GetType ().GetProperty (propName);
			if (prop != null)
				prop.SetValue (ctrl, objValue);
			nav.PushViewController (ctrl, true);
		}

		public static void PushController (this UIViewController controller, string controllerName)
		{
			var ctrl = (UIViewController)controller.Storyboard.InstantiateViewController (controllerName);
			controller.NavigationController.PushViewController (ctrl, true);
		}

		public static void PushController (this UIViewController controller, string controllerName, string propName, object objValue)
		{
			var ctrl = (UIViewController)controller.Storyboard.InstantiateViewController (controllerName);
			var prop = ctrl.GetType ().GetProperty (propName);
			if (prop != null)
				prop.SetValue (ctrl, objValue);
			controller.NavigationController.PushViewController (ctrl, true);
		
		}

		public static void ModalController (this UIViewController controller, string controllerName)
		{
			var ctrl = (UIViewController)controller.Storyboard.InstantiateViewController (controllerName);
			controller.NavigationController.PresentViewController (ctrl, true, null);
		}

		public static T ModalController<T> (this UIViewController controller)
			where T: UIViewController
		{
			var ctrl = (T)controller.Storyboard.InstantiateViewController (typeof(T).Name);
			controller.NavigationController.PresentViewController (ctrl, true, null);
			return ctrl;
		}

		public static void RotateView (this UIViewController controller, UIInterfaceOrientation orientation)
		{
			var i = (int)orientation;
			var n = new NSNumber (nfloat.Parse (i.ToString ()));
			UIDevice.CurrentDevice.SetValueForKey (n, new NSString ("orientation"));
		}

			
	}

}
#endif
