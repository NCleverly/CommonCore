using System;
namespace Xamarin.Forms.CommonCore
{
    public interface ILocalNotificationPermission
    {
        void RequestPermission(Action<bool> callBack);
    }
}
