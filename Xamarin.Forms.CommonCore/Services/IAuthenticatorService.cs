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
        //MicrosoftLive
	}

    public interface IAuthenticatorService
    {
        OAuth2Authenticator GetAuthenticator(AuthenticatorType type, Action<Account> completed, Action<Exception> error);
    }
}
