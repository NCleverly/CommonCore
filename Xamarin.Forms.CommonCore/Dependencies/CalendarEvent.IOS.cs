#if __IOS__
using System;
using Xamarin.Forms.CommonCore;
using EventKit;
using Foundation;
using UIKit;
using System.Threading.Tasks;

[assembly: Xamarin.Forms.Dependency(typeof(CalendarEvent))]
namespace Xamarin.Forms.CommonCore
{
	public class CalendarEvent : ICalendarEvent
	{
		public static EKEventStore eventStore;

		public void CreateCalendarEvent(CalendarEventModel calEvent, Action<bool> callback)
		{
			if (CalendarEvent.eventStore == null)
				CalendarEvent.eventStore = new EKEventStore();

			RequestAccess(EKEntityType.Event, () =>
			{
				EKEvent newEvent = EKEvent.FromStore(CalendarEvent.eventStore);

				if (calEvent.HasReminder)
					newEvent.AddAlarm(EKAlarm.FromDate(ToNSDate(calEvent.StartTime.AddHours(-1))));

				newEvent.StartDate = ToNSDate(calEvent.StartTime);
				newEvent.EndDate = ToNSDate(calEvent.EndTime);
				newEvent.Title = calEvent.Title;
				newEvent.Notes = calEvent.Description;
				newEvent.Calendar = CalendarEvent.eventStore.DefaultCalendarForNewEvents;

				NSError e;
				CalendarEvent.eventStore.SaveEvent(newEvent, EKSpan.ThisEvent, out e);
				if (e != null)
				{
					callback?.Invoke(false);
				}
				else
				{
					callback?.Invoke(true);
				}

				// to retrieve the event you can call
				EKEvent mySavedEvent = CalendarEvent.eventStore.EventFromIdentifier(newEvent.EventIdentifier);
				Console.WriteLine("Retrieved Saved Event: " + mySavedEvent.Title);
			});
		}

		protected void RequestAccess(EKEntityType type, Action completion)
		{
			CalendarEvent.eventStore.RequestAccess(type,
				(bool granted, NSError e) =>
				{
					Xamarin.Forms.Device.BeginInvokeOnMainThread(() =>
					{
						if (granted)
							completion.Invoke();
						else
							new UIAlertView("Access Denied", "User Denied Access to Calendars/Reminders", null, "ok", null).Show();
					});
				});
		}
		public NSDate ToNSDate(DateTime date)
		{
			DateTime newDate = TimeZone.CurrentTimeZone.ToLocalTime(
				new DateTime(2001, 1, 1, 0, 0, 0));
			return NSDate.FromTimeIntervalSinceReferenceDate(
				(date - newDate).TotalSeconds);
		}

	}

}
#endif

