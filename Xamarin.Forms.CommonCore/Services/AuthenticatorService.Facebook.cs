using System;
using System.Text;
using Xamarin.Auth;

namespace Xamarin.Forms.CommonCore
{
    public partial class AuthenticatorService: IAuthenticatorService
    {
        private OAuth2Authenticator GetFaceBookAuthenticator(Action<Account> completed, Action<Exception> error)
        {
            var fb_app_id = AppData.Instance.FaceBookAppId;
            var native_ui = true;
			var authenticator
				 = new Xamarin.Auth.OAuth2Authenticator
				 (
					 clientId:
						 new Func<string>
							(
								() =>
								{
									string retval_client_id = "oops something is wrong!";

									retval_client_id = fb_app_id;
									return retval_client_id;
								}
							).Invoke(),
					 authorizeUrl:
						 new Func<Uri>
							(
								() =>
								{
									string uri = null;
									if (native_ui)
									{
										uri = "https://www.facebook.com/v2.9/dialog/oauth";
									}
									else
									{
										// old
										uri = "https://m.facebook.com/dialog/oauth/";
									}
									return new Uri(uri);
								}
							).Invoke(),
					 redirectUrl:
						 new Func<Uri>
							(
								() =>
								{
									string uri = null;
									if (native_ui)
									{
                                        uri =$"fb{fb_app_id}://authorize";
									}
									else
									{
										uri = $"fb{fb_app_id}://authorize";
									}
									return new Uri(uri);
								}
							).Invoke(),
					 scope: "", // "basic", "email",
					 getUsernameAsync: null,
					 isUsingNativeUI: native_ui
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
