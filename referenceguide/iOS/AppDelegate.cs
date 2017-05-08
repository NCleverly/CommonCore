using System;
using System.Threading.Tasks;
using FFImageLoading.Forms.Touch;
using Foundation;
using PushNotification.Plugin;
using UIKit;
using Xamarin.Forms.CommonCore;

namespace referenceguide.iOS
{
	[Register("AppDelegate")]
	public partial class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
	{

		public override bool FinishedLaunching(UIApplication app, NSDictionary options)
		{

			Task.Run(async () =>
			{
				await ConfigurationLoader.Load();
			});

			global::Xamarin.Forms.Forms.Init();

			CachedImageRenderer.Init();

			CrossPushNotification.Initialize<CrossPushNotificationListener>();

			LoadApplication(new App());

			return base.FinishedLaunching(app, options);
		}

	}
}
