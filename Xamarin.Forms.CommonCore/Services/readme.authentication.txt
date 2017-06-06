Configuration steps





Android:

Create the following class and add it to your Android project.  Update the DataSchemes as appropriate
    [Activity(Label = "ActivityCustomUrlSchemeInterceptor", NoHistory = true, LaunchMode = LaunchMode.SingleTop)]
    [
        IntentFilter
        (
            actions: new[] { Android.Content.Intent.ActionView },
            Categories = new[]
                    {
                        Android.Content.Intent.CategoryDefault,
                        Android.Content.Intent.CategoryBrowsable
                    },
            DataSchemes = new[]
                    {
                        "com.googleusercontent.apps.senderID-ClientId",
                        "facebookAppID://localhost/path",
                    },
            //DataHost = "localhost",
            DataPath = "/oauth2redirect"
        )
    ]
    public class ActivityCustomUrlSchemeInterceptor : Activity
    {
        string message;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            global::Android.Net.Uri uri_android = Intent.Data;

            // Convert iOS NSUrl to C#/netxf/BCL System.Uri - common API
            Uri uri_netfx = new Uri(uri_android.ToString());

            // load redirect_url Page
            AuthenticationState.Authenticator.OnPageLoading(uri_netfx);

            this.Finish();

            return;
        }
    }   


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