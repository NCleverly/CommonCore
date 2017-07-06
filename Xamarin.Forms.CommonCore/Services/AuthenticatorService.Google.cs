using System;
using System.Text;
using Xamarin.Auth;

namespace Xamarin.Forms.CommonCore
{
    public partial class AuthenticatorService : IAuthenticatorService
    {
        
        private OAuth2Authenticator GetGoogleAuthenticator(Action<Account> completed, Action<Exception> error)
        {
            var appId = CoreSettings.Config.SocialMedia.GoogleSettings.GoogleAppId;
            var iosId = CoreSettings.Config.SocialMedia.GoogleSettings.OAuthClientID_iOS;
            var droidId = CoreSettings.Config.SocialMedia.GoogleSettings.OAuthClientID_Android;
            var uwpId = CoreSettings.Config.SocialMedia.GoogleSettings.OAuthClientID_UWP;

            var authenticator
			     = new Xamarin.Auth.OAuth2Authenticator
			     (
			         clientId:
			             new Func<string>
			                (
			                     () =>
			                     {
			                         string retval_client_id = "oops something is wrong!";
			                         switch (Xamarin.Forms.Device.RuntimePlatform)
			                         {
			                             case "Android":
			                                    retval_client_id = $"{appId}-{droidId}.apps.googleusercontent.com";
			                                 break;
			                             case "iOS":
			                                    retval_client_id = $"{appId}-{iosId}.apps.googleusercontent.com";
			                                 break;
			                             case "Windows":
			                                    retval_client_id = $"{appId}-{uwpId}.apps.googleusercontent.com";
			                                 break;
			                         }
			                         return retval_client_id;
			                     }
			               ).Invoke(),
			         clientSecret: null,   // null or ""
			         authorizeUrl: new Uri("https://accounts.google.com/o/oauth2/auth"),
			         accessTokenUrl: new Uri("https://www.googleapis.com/oauth2/v4/token"),
			         redirectUrl:
			             new Func<Uri>
			                (
			                     () =>
			                     {

			                         string uri = null;
			                         switch (Xamarin.Forms.Device.RuntimePlatform)
			                         {
			                             case "Android":
			                                 uri =
			                                     $"com.googleusercontent.apps.{appId}-{droidId}:/oauth2redirect";
			                                 break;
			                             case "iOS":
			                                 uri = $"com.googleusercontent.apps.{appId}-{iosId}:/oauth2redirect";
			                                 break;
			                             case "Windows":
			                                 uri =
			                                     $"com.googleusercontent.apps.{appId}-{uwpId}:/oauth2redirect";
			                                 break;
			                         }

			                         return new Uri(uri);
			                     }
			                 ).Invoke(),
			         scope:
			                      //"profile"
			                      "https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/plus.login"
			                      ,
			         getUsernameAsync: null,
			         isUsingNativeUI: true
			     )
			     {
			         AllowCancel = true,
			     };

            authenticator.Completed +=
                (s, ea) =>
                    {
             
                        StringBuilder sb = new StringBuilder();

                        if (ea.Account != null && ea.Account.Properties != null)
                        {
                            sb.Append("Token = ").AppendLine($"{ea.Account.Properties["access_token"]}");
                            completed?.Invoke(ea.Account);
                        }
                        else
                        {
                            error?.Invoke(new Exception("Not authenticated. Account.Properties does not exist"));
                        }

                 
                        return;
                    };

            authenticator.Error +=
                (s, ea) =>
                    {
                        error?.Invoke(new Exception(ea.Message));
                        return;
                    };

			AuthenticationState.Authenticator = authenticator;
            return authenticator;
        }
    }
}
