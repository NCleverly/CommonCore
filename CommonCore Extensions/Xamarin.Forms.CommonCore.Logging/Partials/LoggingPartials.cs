using System;
namespace Xamarin.Forms.CommonCore
{

    public partial class CoreBusiness
    {
        public ILogService Log
        {
            get
            {
                return (ILogService)CoreDependencyService.GetService<ILogService, LogService>(true);
            }
        }  
    }
    public static partial class CoreExtensions
    {
        private static long appearingUTC;
        private static ILogService Log
        {
          get
          {
              return CoreDependencyService.GetService<ILogService, LogService>(true);
          }
        }

        public static void LogException(this Exception ex,string metatData = null)
        {
            Log.LogException(ex,metatData);
        }

        public static void SetAnalyticsTimeStamp(this ContentPage page)
        {
            appearingUTC = DateTime.UtcNow.Ticks;
        }
        public static void SaveAnalyticsDetails(this ContentPage page, string metaData=null)
        {
            Log.LogAnalytics(page.GetType().FullName, new TrackingMetatData()
            {
                StartUtc = appearingUTC,
                EndUtc = DateTime.UtcNow.Ticks
            }, metaData);
        }
    }
}
