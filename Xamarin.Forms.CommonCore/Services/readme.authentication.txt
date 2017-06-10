Configuration steps

Developer Google Console OAuth 2 Setup:
- https://support.google.com/cloud/answer/6158849?hl=en

Facebook Setup:
- https://developers.facebook.com/apps

Microsoft Setup:
- https://apps.dev.microsoft.com
- https://blog.xamarin.com/enterprise-apps-made-easy-updated-libraries-apis/

Android:

Copy ActivityCustomUrlSchemeInterceptor.txt found to your Android project and change the extension to cs to enable
it compilation.  Update the namespace and DataScheme values.

IOS:

In the info.plist under advanced add UrlTypes with the role of viewer. Url Schemas are generated when you create
the OAuth ClientID (google, facebook etc)

In AppDelegate implement the OpenUrl method:

        public override bool OpenUrl(UIApplication application,NSUrl url,string sourceApplication,NSObject annotation)
        {

            Uri uri_netfx = new Uri(url.AbsoluteString);

            // load redirect_url Page
            AuthenticationState.Authenticator.OnPageLoading(uri_netfx);

            return true;
        }