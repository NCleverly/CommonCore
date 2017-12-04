using System;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{
    public partial class CoreViewModel
    {
        /// <summary>
        /// DependencyService for IAzureNotificationHub.
        /// </summary>
        /// <value>The audio player.</value>
        [JsonIgnore]
        public IAzureNotificationHub AzureNotificationHub
        {
            get { return DependencyService.Get<IAzureNotificationHub>(); }
        }
    }
}
