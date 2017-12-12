using System;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{
    public partial class CoreConfiguration
    {
        public AzureSettings AzureSettings { get; set; }
    }

    public partial class AzureSettings
    {
        public string AzureHubName { get; set; }
        public string AzureListenConnection { get; set; }
    }

    public partial class CoreBusiness
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
