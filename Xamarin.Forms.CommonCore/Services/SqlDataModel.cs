using System;
using SQLite;

namespace Xamarin.Forms.CommonCore
{
    [AttributeUsage(AttributeTargets.Property)]  
    public class EncryptedPropertyAttribute:Attribute{}

    public interface ISqlDataModel
    {
        Guid CorrelationID { get; set; }
        long UTCTickStamp { get; set; }
        bool MarkedForDelete { get; set; }
    }
    public class SqlDataModel : BindableObject, ISqlDataModel, ICloneable
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

        public object Clone()
        {
            var obj = Activator.CreateInstance(this.GetType());
            foreach (var prop in this.GetType().GetProperties())
                prop.SetValue(obj, prop.GetValue(this));
            return obj;

        }

        public void SetUtcTimeStampNow()
        {
            UTCTickStamp = DateTime.UtcNow.Ticks;
        }

    }
}
