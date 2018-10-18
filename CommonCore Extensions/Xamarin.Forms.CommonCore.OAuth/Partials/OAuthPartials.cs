using System;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{
    public partial class GoogleSettings
    {
        public string OAuthClientID_iOS { get; set; }
        public string OAuthClientID_Android { get; set; }
        public string OAuthClientID_UWP { get; set; }
    }

    public partial class CoreBusiness
    {
        /// <summary>
        /// AuthenticatorService for Google, Facebook and Microsoft.
        /// </summary>
        /// <value>The authenticator service.</value>
        [JsonIgnore]
        protected IAuthenticatorService AuthenticatorService
        {
            get
            {
                return (IAuthenticatorService)CoreDependencyService.GetService<IAuthenticatorService, AuthenticatorService>(true);
            }
        }
    }

    public partial class CoreViewModel
    {
        /// <summary>
        /// AuthenticatorService for Google, Facebook and Microsoft.
        /// </summary>
        /// <value>The authenticator service.</value>
        [JsonIgnore]
        protected IAuthenticatorService AuthenticatorService
        {
            get
            {
                return (IAuthenticatorService)CoreDependencyService.GetService<IAuthenticatorService, AuthenticatorService>(true);
            }
        }
    }

}
