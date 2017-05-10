using System;
using SQLite;

namespace Xamarin.Forms.CommonCore
{
	public interface IDataModel
	{
		Guid CorrelationID { get; set; }
		long UTCTickStamp { get; set; }
		bool MarkedForDelete { get; set; }
	}
	public class DataModel : ObservableObject, IDataModel, ICloneable, IDisposable
	{
		[PrimaryKey]
		public Guid CorrelationID { get; set; }
		public long UTCTickStamp { get; set; }
		public bool MarkedForDelete { get; set; }

		public object Clone()
		{
			var obj = Activator.CreateInstance(this.GetType());
			foreach (var prop in this.GetType().GetProperties())
				prop.SetValue(obj, prop.GetValue(this));
			return obj;

		}

		public virtual void Dispose() { }

	}
}
