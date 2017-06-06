using System;
using Xamarin.Auth;

namespace Xamarin.Forms.CommonCore
{
    public partial class AuthenticatorService: IAuthenticatorService
    {
        public OAuth2Authenticator GetAuthenticator(AuthenticatorType type, Action<Account> completed, Action<Exception> error)
        {
            OAuth2Authenticator authenticator = null;
            switch(type){
                case AuthenticatorType.Facebook:
                    authenticator = GetFaceBookAuthenticator(completed, error);
                    break;
				case AuthenticatorType.Google:
					authenticator = GetGoogleAuthenticator(completed, error);
					break;
                    
            }
            return authenticator;
        }
    }
}
