using System;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{
    public class BackgroundImagePage: BoundPage<SimpleViewModel>
    {
        public BackgroundImagePage()
        {
            var imgName = Device.RuntimePlatform=="iOS"?"default.png":"screen.png";
            this.BackgroundImage = imgName;
        }
    }
}
