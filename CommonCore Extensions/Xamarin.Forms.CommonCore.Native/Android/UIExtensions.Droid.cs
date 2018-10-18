#if __ANDROID__
using System;
using System.Collections.Generic;
using System.Net;
using System.Threading;
using Android.App;
using Android.Graphics;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Java.Lang;
using Java.Net;
using DroidView = Android.Views.View;
using DroidResources = Android.Content.Res.Resources;
using DroidApplication = Android.App.Application;
using DroidListView = Android.Widget.ListView;
using Android.Content;

namespace Xamarin.Forms.CommonCore.Native
{

    [Preserve (AllMembers = true)]
	public static class VPControlExtensions
	{
        public static void NavigateActivity<T>(this Fragment context, bool finish = false) where T : Activity
        {
            context.Activity.NavigateActivity<T>(finish);
        }

        public static void NavigateActivity<T>(this Fragment context, string propName, object objValue, bool finish = false) where T : Activity
        {
            context.Activity.NavigateActivity<T>(propName, objValue, finish);
        }

        public static void NavigateActivity<T>(this Fragment context, Action<T> action, bool finish = false) where T : Activity
        {
            context.Activity.NavigateActivity<T>(action, finish);
        }

        public static void NavigateActivityByExtra<T>(this Fragment context, string putName, string putValue, bool finish = false) where T : Activity
        {
            context.Activity.NavigateActivityByExtra<T>(putName, putValue, finish);
        }

        public static void NavigateActivity<T>(this Activity context, bool finish = false) where T : Activity
        {
            var intent = new Intent(context, typeof(T));
            context.StartActivity(intent);
            if (finish)
                context.Finish();

        }

        public static void NavigateActivity<T>(this Activity context, Action<T> action, bool finish = false) where T : Activity
        {
            var intent = new Intent(context, typeof(T));
            ActivityBridge.FinishedLoading = pageLoaded => {
                action.Invoke((T)pageLoaded);
            };
            context.StartActivity(intent);
            if (finish)
                context.Finish();
        }

        public static void NavigateActivity<T>(this Activity context, string propName, object objValue, bool finish = false) where T : Activity
        {
            var intent = new Intent(context, typeof(T));
            ActivityBridge.FinishedLoading = pageLoaded => {
                var obj = (T)pageLoaded;
                var prop = typeof(T).GetProperty(propName);
                if (prop != null)
                    prop.SetValue(obj, objValue);
            };
            context.StartActivity(intent);
            if (finish)
                context.Finish();
        }

        public static void NavigateActivityByExtra<T>(this Activity context, string putName, string putValue, bool finish = false) where T : Activity
        {
            var intent = new Intent(context, typeof(T));
            intent.PutExtra(putName, putValue);
            context.StartActivity(intent);
            if (finish)
                context.Finish();
        }

        public static void CreateBridge(this Activity context)
        {
            if (ActivityBridge.FinishedLoading != null)
            {
                ActivityBridge.FinishedLoading(context);
                ActivityBridge.FinishedLoading = null;
            }
        }

        public static void SetDialogTitleDivider(this Activity dialog, string hexColor)
        {
            var decorView = (ViewGroup)dialog.Window.DecorView;
            var windowContentView = ViewGroupIndexOf<ViewGroup>(decorView, 0);
            var titleDivider = ViewGroupIndexOf<DroidView>(windowContentView, 1);
            titleDivider.SetBackgroundColor(global::Android.Graphics.Color.ParseColor(hexColor));
        }

        private static T ViewGroupIndexOf<T>(ViewGroup grp, int index) where T : DroidView
        {
            return (T)grp.GetChildAt(index);
        }

		public static void LoadUrl (this ImageView img, Activity activity, string url)
		{
			Bitmap imageBitmap = null;
			using (var webClient = new WebClient ()) {
				var imageBytes = webClient.DownloadData (url);
				if (imageBytes != null && imageBytes.Length > 0) {
					imageBitmap = BitmapFactory.DecodeByteArray (imageBytes, 0, imageBytes.Length);
				}
			}
			img.SetImageBitmap (imageBitmap);
			Runnable run = new Runnable (img.Invalidate);
			activity.RunOnUiThread (run);
		}
		public static void LoadUrlBySynchronizationContext (this ImageView img, string url)
		{
			Bitmap imageBitmap = null;
			using (var webClient = new WebClient ()) {
				var imageBytes = webClient.DownloadData (url);
				if (imageBytes != null && imageBytes.Length > 0) {
					imageBitmap = BitmapFactory.DecodeByteArray (imageBytes, 0, imageBytes.Length);
				}
			}
			img.SetImageBitmap (imageBitmap);
            DroidApplication.SynchronizationContext.Post (_ => {
				img.SetImageBitmap (imageBitmap);
				img.Invalidate();
			}, null);
		}

        public static void ResetHeight (this DroidListView listView)
		{
			if (listView == null || listView.Adapter == null) {
				return;
			}
			try {
				var row = 0;
				int totalHeight = listView.PaddingTop + listView.PaddingBottom;
				for (int i = 0; i < listView.Count; i++) {
					var listItem = listView.Adapter.GetView (i, null, listView);
					var p = listItem.LayoutParameters;
					var v = ((ViewGroup)listItem);
					if (listItem.GetType () == typeof(ViewGroup)) {
						listItem.LayoutParameters = new LinearLayout.LayoutParams (ViewGroup.LayoutParams.MatchParent, ViewGroup.LayoutParams.WrapContent);
					}
					listItem.Measure (0, 0);
					row = listItem.MeasuredHeight;
				}

				listView.LayoutParameters.Height = (row * listView.Count) + (listView.DividerHeight * (listView.Count - 1));
				listView.RequestLayout ();
			} catch (System.Exception ex) {
				#if DEBUG
				Console.WriteLine (ex.Message);
				#endif
			}
		}
	}
}
#endif