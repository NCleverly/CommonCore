#if __ANDROID__
using System;
using System.Threading.Tasks;
using Android.App;
using Android.Content;
using Android.OS;
using Xamarin.Forms.CommonCore;

namespace Xamarin.Forms.CommonCore
{
	public class TimerBackground : IBackgroundTimer
	{
		private TimerBackgroundingServiceConnection timerServiceConnection;
		private TimerBackgroundingReceiver timerReceiver;
		public bool IsBound { get; set; } = false;
        public int intervalMilliseconds { get; set; } = 1000;
		public TimerBackgroundingServiceBinder Binder { get; set; }
		public Intent timerServiceIntent;

		public Context Ctx { get { return Xamarin.Forms.Forms.Context; } }

		public static TimerBackground Instance = new TimerBackground();

		public TimerBackground()
		{
			timerServiceIntent = new Intent(Ctx, typeof(TimerBackgroundService));
			timerReceiver = new TimerBackgroundingReceiver();
		}
		public void Start(int timeSpan, IIntervalCallback formsCallBack)
		{
            intervalMilliseconds = timeSpan;
			var intentFilter = new IntentFilter(TimerBackgroundService.TimerUpdatedAction) { Priority = (int)IntentFilterPriority.HighPriority };
			Ctx.RegisterReceiver(timerReceiver, intentFilter);

			timerServiceConnection = new TimerBackgroundingServiceConnection();
			Ctx.BindService(timerServiceIntent, timerServiceConnection, Bind.AutoCreate);

			//RegisterAlarmManager();
		}

		public void Stop()
		{
			if (IsBound)
			{
				Ctx.UnbindService(timerServiceConnection);

				IsBound = false;
			}

			Ctx.UnregisterReceiver(timerReceiver);
		}

		public void RegisterAlarmManager()
		{
			if (!IsAlarmSet())
			{
				var alarm = (AlarmManager)Ctx.GetSystemService(Context.AlarmService);

				var pendingServiceIntent = PendingIntent.GetService(Ctx, 0, timerServiceIntent, PendingIntentFlags.CancelCurrent);
				alarm.SetRepeating(AlarmType.Rtc, 0, 1000, pendingServiceIntent);

				//alarm.SetRepeating (AlarmType.Rtc, 0, AlarmManager.IntervalHalfHour, pendingServiceIntent);
			}
			else
			{
				Console.WriteLine("alarm already set");
			}
		}
		bool IsAlarmSet()
		{
			return PendingIntent.GetBroadcast(Ctx, 0, timerServiceIntent, PendingIntentFlags.NoCreate) != null;
		}


		public void TimerElapsedEvent()
		{
			if (IsBound)
			{
				Task.Run(() =>
			   {
				   Binder.GetTimerService();

			   });

			}
		}
	}

	[BroadcastReceiver]
	[IntentFilter(new string[] { TimerBackgroundService.TimerUpdatedAction }, Priority = (int)IntentFilterPriority.LowPriority)]
	public class TimerBackgroudNotificationReceiver : BroadcastReceiver
	{

		public override void OnReceive(Context context, Intent intent)
		{
			var nMgr = (NotificationManager)context.GetSystemService(Context.NotificationService);
			var notification = new Notification(AppData.AppIcon, "Timer has fired");
			var pendingIntent = PendingIntent.GetActivity(context, 0, new Intent(context, LocalNotify.MainType), 0);
			notification.SetLatestEventInfo(context, "Timer fired", "AlarmManager event has been triggered", pendingIntent);
			nMgr.Notify(0, notification);
		}
	}

	[Service]
	[IntentFilter(new String[] { "Xamarin.Forms.CommonCore.AzureDbBackgroundService" })]
	public class TimerBackgroundService : IntentService
	{
		public static bool IsProcessing { get; set; }
		private IBinder binder;
		private IIntervalCallback intervalManager;
		public const string TimerUpdatedAction = "TimerUpdatedAction";


		protected IIntervalCallback IntervalManager
		{
			get { return intervalManager ?? (intervalManager = InjectionManager.Get<IIntervalCallback>()); }
		}

		protected override void OnHandleIntent(Intent intent)
		{
			if (!TimerBackgroundService.IsProcessing)
			{
				TimerBackgroundService.IsProcessing = true;
                TimerElapsedEvent();
				var timerIntent = new Intent(TimerUpdatedAction);
				SendOrderedBroadcast(timerIntent, null);
				TimerBackgroundService.IsProcessing = false;
			}

		}

		public override IBinder OnBind(Intent intent)
		{
			binder = new TimerBackgroundingServiceBinder(this);
			return binder;
		}

		public void TimerElapsedEvent()
		{
            IntervalManager?.TimeElapsedEvent();
		}

	}

	public class TimerBackgroundingServiceBinder : Binder
	{
		TimerBackgroundService service;

		public TimerBackgroundingServiceBinder(TimerBackgroundService service)
		{
			this.service = service;
		}

		public TimerBackgroundService GetTimerService()
		{
			return service;
		}
	}

	public class TimerBackgroundingReceiver : BroadcastReceiver
	{
        public override void OnReceive(Context context, Intent intent)
        {
			  TimerBackground.Instance.TimerElapsedEvent();

			  InvokeAbortBroadcast();
		}

	}

	public class TimerBackgroundingServiceConnection : Java.Lang.Object, IServiceConnection
	{

		public void OnServiceConnected(ComponentName name, IBinder service)
		{
			var stockServiceBinder = service as TimerBackgroundingServiceBinder;
			if (stockServiceBinder != null)
			{
				var binder = (TimerBackgroundingServiceBinder)service;
				TimerBackground.Instance.Binder = binder;
				TimerBackground.Instance.IsBound = true;
			}
		}

		public void OnServiceDisconnected(ComponentName name)
		{
			TimerBackground.Instance.IsBound = false;
		}
	}
}
#endif
