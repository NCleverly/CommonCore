#if __ANDROID__
using System;
using OS = Android.OS;
using Xamarin.Forms.CommonCore;

[assembly: Xamarin.Forms.Dependency(typeof(DeviceInfo))]
namespace Xamarin.Forms.CommonCore
{
    public class DeviceInfo : IDeviceInfo
    {
        public DeviceInformation GetDeviceInformation()
        {
            var di = new DeviceInformation();
            var serialNumber = OS.Build.Serial;
            if (string.IsNullOrEmpty(serialNumber))
            {
                di.DeviceType = DeviceState.Simulator;
            }
            else
            {
                di.DeviceType = DeviceState.PhysicalDevice;
                di.SerialNumber = serialNumber;
                di.Model = OS.Build.Model;
                di.Name = OS.Build.Brand;
                di.OSVersion = OS.Build.VERSION.Codename;
            }
            return di;
        }
    }
}
#endif

