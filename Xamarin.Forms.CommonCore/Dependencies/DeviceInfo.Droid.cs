#if __ANDROID__
using System;
using Droid = Android;
using Xamarin.Forms.CommonCore;

[assembly: Xamarin.Forms.Dependency(typeof(DeviceInfo))]
namespace Xamarin.Forms.CommonCore
{
    public class DeviceInfo : IDeviceInfo
    {
        public DeviceInformation GetDeviceInformation()
        {
            var di = new DeviceInformation();
            var serialNumber = Droid.OS.Build.Serial;
            if (string.IsNullOrEmpty(serialNumber))
            {
                di.DeviceType = DeviceState.Simulator;
            }
            else
            {
                di.DeviceType = DeviceState.PhysicalDevice;
                di.SerialNumber = serialNumber;
                di.Model = Droid.OS.Build.Model;
                di.Name = Droid.OS.Build.Brand;
                di.OSVersion = Droid.OS.Build.VERSION.Codename;
            }
            return di;
        }
    }
}
#endif

