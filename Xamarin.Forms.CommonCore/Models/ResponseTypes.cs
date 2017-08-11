using System;
using System.IO;

namespace Xamarin.Forms.CommonCore
{
    public interface IReponse
    {
        Exception Error { get; set; }
    }

    public class GenericResponse<T>: IReponse 
        where T : class, new()
    {
        public string MetaData { get; set; }
        public Exception Error { get; set; }
        public bool Success { get; set; }
        public T Response { get; set; }
    }
    public class StringResponse: IReponse
    {
        public Exception Error { get; set; }
        public bool Success { get; set; }
        public string Response { get; set; }
    }
    public class BooleanResponse: IReponse
    {
        public Exception Error { get; set; }
        public bool Success { get; set; }
    }
	public class StreamResponse : IReponse
	{
        public Stream Response { get; set; }
		public Exception Error { get; set; }
		public bool Success { get; set; }
	}
}
