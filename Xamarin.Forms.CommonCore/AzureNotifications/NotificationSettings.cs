using System;
using Xamarin.Forms;
namespace Xamarin.Forms.CommonCore
{
    public class NotificationSettings
    {
        public const string DefaultListenSharedAccess = "Endpoint=sb://pushdemolbrown.servicebus.windows.net/;SharedAccessKeyName=DefaultListenSharedAccessSignature;SharedAccessKey=diKHL5+Nq8N1cbnLmRLfvDinBpbNYyMXeC7vROyWv+o=";
        public const string NotificationHubName = "pushdemolbrown";
        public const string GoogleSenderID = "168741369960";
        public static string Tag { get; set; }
		public static Type MainActivity { get; set; }
    }
}
