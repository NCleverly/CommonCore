using System;
using SQLite;

namespace Xamarin.Forms.CommonCore
{
    [AttributeUsage(AttributeTargets.Property)]  
    public class EncryptedPropertyAttribute:Attribute{}

    public interface ISqlDataModel
    {
        Guid CorrelationID { get; set; }
        long UTCTickStamp { get; set; } //can be set by DateTime.UtcNow.Ticks;
        bool MarkedForDelete { get; set; }
    }
    public class SqlDataModel : ObservableModel, ISqlDataModel
    {
        [PrimaryKey]
        public Guid CorrelationID { get; set; }
        public long UTCTickStamp { get; set; }
        public bool MarkedForDelete { get; set; }

        [Ignore]
        public DateTime LocalTimeStamp
        {
            get
            {
                var utcDateTime = new DateTime(UTCTickStamp, DateTimeKind.Utc);
                return utcDateTime.ToLocalTime();
            }
        }

    }
}
