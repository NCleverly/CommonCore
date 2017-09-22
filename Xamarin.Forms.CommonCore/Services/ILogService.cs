using System;
using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Xamarin.Forms.CommonCore
{
	public enum LogType
	{
		Error,
		Analytic
	}

    public class TrackingMetatData
    {
        public long StartUtc { get; set; }
        public long EndUtc { get; set; }
    }
	public class AnalyticLog
	{
		public string ViewName { get; set; }
        public TrackingMetatData TrackingInfo { get; set; }
		public string UserId { get; set; }
		public string MetaData { get; set; }

        public double OnTaskTime
        {
            get
            {
                if (TrackingInfo != null)
                {
                    var st = DateTime.FromFileTimeUtc(TrackingInfo.StartUtc).ToLocalTime();
					var et = DateTime.FromFileTimeUtc(TrackingInfo.StartUtc).ToLocalTime();
                    var diff = et - st;
                    var totalSeconds = (diff.TotalHours * 60 * 60) + (diff.TotalMinutes * 60) + (diff.TotalSeconds);
                    return totalSeconds;
                }
                else
                {
                    return 0.0;
                }
            }
        }
	}

    public class ErrorLog
    {
        public string ErrorMessage { get; set; }
        public string ErrorType { get; set; }
        public string InnerType { get; set; }
        public string InnerMessage { get; set; }
        public string StackTrace { get; set; }
        public long UTCTicks { get; set; }
        public string UserId { get; set; }
        public string MetaData { get; set; }

        public DateTime TimeStamp { get { return DateTime.FromFileTimeUtc(UTCTicks).ToLocalTime(); } }
    }

    public interface ILogService
    {
        /// <summary>
        /// Log error using Exception
        /// </summary>
        /// <param name="exception">Exception.</param>
        void LogException(Exception exception, string metatData = null);
        /// <summary>
        /// Track analytics by page name
        /// </summary>
        /// <param name="pageName">Page name.</param>
        void LogAnalytics(string pageName, TrackingMetatData trackingData = null, string metatData=null);
        /// <summary>
        /// Retrieve historical logs by type
        /// </summary>
        /// <returns>The historical logs.</returns>
        /// <param name="logType">Log type.</param>
        Task<IList> GetHistoricalLogs(LogType logType);

        /// <summary>
        /// Removes historical and in memory logs
        /// </summary>
        /// <returns>The logging.</returns>
        /// <param name="logType">Log type.</param>
        Task ClearLogging(LogType logType);
    }
}
