#if __ANDROID__
using System;
using Xamarin.Forms.CommonCore;

[assembly: Xamarin.Forms.Dependency(typeof(LocalNotificationPermission))]
namespace Xamarin.Forms.CommonCore
{
    public class LocalNotificationPermission : ILocalNotificationPermission
    {
        public void RequestPermission(Action<bool> callBack)
        {
            callBack?.Invoke(true);
        }
    }
}
#endif
