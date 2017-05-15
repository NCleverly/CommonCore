using Android.App;
using Android.Content.PM;
using Android.Views;
using Android.OS;
using Android.Widget;
using Xamarin.Forms.CommonCore;

namespace referenceguide.Droid
{

    [Activity(Label = "referenceguide.Droid", Icon = "@drawable/icon", Theme = "@style/MyTheme", ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        protected override void OnCreate(Bundle bundle)
        {

            TabLayoutResource = Resource.Layout.Tabbar;
            ToolbarResource = Resource.Layout.Toolbar;
            AppData.Instance.SearchView = Resource.Id.searchView;

			base.OnCreate(bundle);

            global::Xamarin.Forms.Forms.Init(this, bundle);

            LoadApplication(new App());

            Window.SetStatusBarColor(Android.Graphics.Color.Argb(255, 0, 0, 0)); //here

        

        }


    }
}
