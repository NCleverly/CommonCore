using System;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{
    public partial class CoreSettings
    {
        public const string LocalizationLoaded = "localizationLoaded";
    }
    public partial class CoreBusiness
    {
        /// <summary>
        /// Service that provides access to localization json files.
        /// </summary>
        /// <value>The localization service.</value>
        [JsonIgnore]
        protected ILocalizationService LocalizationService
        {
            get
            {
                return (ILocalizationService)CoreDependencyService.GetService<ILocalizationService, LocalizationService>(true);
            }
        }

    }

    public partial class CoreViewModel
    {
        /// <summary>
        /// Service that provides access to localization json files.
        /// </summary>
        /// <value>The localization service.</value>
        [JsonIgnore]
        protected ILocalizationService LocalizationService
        {
            get
            {
                return (ILocalizationService)CoreDependencyService.GetService<ILocalizationService, LocalizationService>(true);
            }
        }

    }
}
