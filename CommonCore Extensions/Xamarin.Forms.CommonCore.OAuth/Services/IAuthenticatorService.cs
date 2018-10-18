using System;
using Xamarin.Auth;

namespace Xamarin.Forms.CommonCore
{
	public class AuthenticationState
	{
		public static OAuth2Authenticator Authenticator;
	}

	public enum AuthenticatorType
	{
		Google,
		Facebook,
		//Twitter,
		//Amazon,
		//LinkedIn,
	}

	public interface IAuthenticatorService
	{
		OAuth2Authenticator GetAuthenticator(AuthenticatorType type, Action<Account> completed, Action<Exception> error);
	}

    public partial class AuthenticatorService :IAuthenticatorService
    {
        public OAuth2Authenticator GetAuthenticator(AuthenticatorType type, Action<Account> completed, Action<Exception> error)
        {
            OAuth2Authenticator authenticator = null;
            switch(type){
                case AuthenticatorType.Google:
                    authenticator = GetGoogleAuthenticator(completed, error);
                    break;
				case AuthenticatorType.Facebook:
                    authenticator = GetFaceBookAuthenticator(completed, error);
					break;
            }
            return authenticator;
        }
    }
}
