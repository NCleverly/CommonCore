#if __ANDROID__
using System;
using Android.Content;
using Xamarin.Forms.CommonCore;
using Provider = Android.Provider;

[assembly: Xamarin.Forms.Dependency(typeof(CalendarEvent))]
namespace Xamarin.Forms.CommonCore
{
    public class CalendarEvent : ICalendarEvent
    {

        public void CreateCalendarEvent(CalendarEventModel calEvent, Action<bool> callback)
        {
            try
            {
                Intent intent = new Intent(Intent.ActionInsert);
                intent.SetData(Provider.CalendarContract.Events.ContentUri);
                intent.PutExtra(Provider.CalendarContract.ExtraEventBeginTime, CurrentTimeMillis(calEvent.StartTime));
                intent.PutExtra(Provider.CalendarContract.EventsColumns.AllDay, false);
                intent.PutExtra(Provider.CalendarContract.EventsColumns.HasAlarm, calEvent.HasReminder);
                intent.PutExtra(Provider.CalendarContract.EventsColumns.EventLocation, calEvent.Location);
                intent.PutExtra(Provider.CalendarContract.EventsColumns.Description, calEvent.Description);
                intent.PutExtra(Provider.CalendarContract.ExtraEventEndTime, CurrentTimeMillis(calEvent.EndTime));
                intent.PutExtra(Provider.CalendarContract.EventsColumns.Title, calEvent.Title);
                Xamarin.Forms.Forms.Context.StartActivity(intent);
				callback?.Invoke(true);
            }
            catch (Exception ex)
            {
				callback?.Invoke(false);
            }

        }

        private static readonly DateTime Jan1st1970 = new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc);

        public long CurrentTimeMillis(DateTime date)
        {
            return (long)(date.ToUniversalTime() - Jan1st1970).TotalMilliseconds;
        }

    }
}
#endif

