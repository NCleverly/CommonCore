#if __ANDROID__
using System;
using System.Reflection;
using Android.App;
using Android.Content;
using Android.Media;
using Android.Net;
using Android.Views;
using DroidView = Android.Views.View;
using DroidResources = Android.Content.Res.Resources;
using DroidApplication = Android.App.Application;

namespace Xamarin.Forms.CommonCore.Native
{
	public static class VPActivityExtensions
	{
		public static void ExitApplication (this Activity sender)
		{
			System.Environment.Exit (0);
		}

		public static void GoBack(this Activity context){
			context.OnBackPressed ();
		}
		public static void NavigateActivity<T> (this Activity context, bool finish = false)where T : Activity
		{
			var intent = new Intent (context, typeof(T));
			context.StartActivity (intent);
			if (finish)
				context.Finish ();

		}
			
		public static void NavigateActivity<T> (this Activity context, Action<T> action, bool finish = false) where T : Activity
		{
			var intent = new Intent (context, typeof(T));
			ActivityBridge.FinishedLoading = pageLoaded => {
				action.Invoke ((T)pageLoaded);
			};
			context.StartActivity (intent);
			if (finish)
				context.Finish ();
		}

		public static void NavigateActivity<T> (this Activity context, string propName, object objValue, bool finish = false) where T : Activity
		{
			var intent = new Intent (context, typeof(T));
			ActivityBridge.FinishedLoading = pageLoaded => {
				var obj = (T)pageLoaded;
				var prop = typeof(T).GetProperty (propName);
				if (prop != null)
					prop.SetValue (obj, objValue);
			};
			context.StartActivity (intent);
			if (finish)
				context.Finish ();
		}

		public static void NavigateActivityByExtra<T> (this Activity context, string putName, string putValue, bool finish = false) where T : Activity
		{
			var intent = new Intent (context, typeof(T));
			intent.PutExtra (putName, putValue);
			context.StartActivity (intent);
			if (finish)
				context.Finish ();
		}

		public static void CreateBridge (this Activity context)
		{
			if (ActivityBridge.FinishedLoading != null) {
				ActivityBridge.FinishedLoading (context);
				ActivityBridge.FinishedLoading = null;
			}
		}

		public static void SetDialogTitleDivider (this Activity dialog, string hexColor)
		{
			var decorView = (ViewGroup)dialog.Window.DecorView;
			var windowContentView = ViewGroupIndexOf<ViewGroup> (decorView, 0);
            var titleDivider = ViewGroupIndexOf<DroidView> (windowContentView, 1);
			titleDivider.SetBackgroundColor (global::Android.Graphics.Color.ParseColor (hexColor));
		}

		private static T ViewGroupIndexOf<T> (ViewGroup grp, int index) where T : DroidView
		{
			return (T)grp.GetChildAt (index);
		}


	}

}
#endif