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

	public class AnalyticLog
	{
		public string ViewName { get; set; }
		public long UTCTicks { get; set; }
		public string UserId { get; set; }
		public string MetaData { get; set; }
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
	}

    public interface ILogService
    {
        /// <summary>
        /// Log error using response object
        /// </summary>
        /// <param name="response">Response.</param>
        void LogResponse(IReponse response, string metatData = null);
        /// <summary>
        /// Log error using Exception
        /// </summary>
        /// <param name="exception">Exception.</param>
        void LogException(Exception exception, string metatData = null);
        /// <summary>
        /// Track analytics by page name
        /// </summary>
        /// <param name="pageName">Page name.</param>
        void LogAnalytics(string pageName, string metatData=null);
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
