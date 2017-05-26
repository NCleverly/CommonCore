#if __IOS__
using System;
using Xamarin.Forms.CommonCore;
using UIKit;

[assembly: Xamarin.Forms.Dependency(typeof(DeviceInfo))]
namespace Xamarin.Forms.CommonCore
{
    public class DeviceInfo : IDeviceInfo
    {
        public DeviceInformation GetDeviceInformation()
        {
            var di = new DeviceInformation();
            if (ObjCRuntime.Runtime.Arch.ToString() == "SIMULATOR")
            {
                di.DeviceType = DeviceState.Simulator;
            }
            else
            {
                di.Model = UIDevice.CurrentDevice.Model;
                di.Name = UIDevice.CurrentDevice.Name;
                di.OSVersion = UIDevice.CurrentDevice.SystemName;
                di.DeviceType = DeviceState.PhysicalDevice;
                di.SerialNumber = UIDevice.CurrentDevice.IdentifierForVendor.AsString();
            }

            return di;
        }
    }
}
#endif

