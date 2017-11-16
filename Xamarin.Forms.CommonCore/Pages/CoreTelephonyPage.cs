using System;
using System.Reflection;

namespace Xamarin.Forms.CommonCore
{
    public class CoreTelephonyPage : ContentPage { }
    public class CoreTelephonyPage<T> : CoreTelephonyPage
        where T : CoreViewModel
    {
        public T VM { get; set; }
        public CoreTelephonyPage()
        {
            VM = CoreDependencyService.GetViewModel<T>();
            this.BindingContext = VM;
            if (!string.IsNullOrEmpty(VM.PageTitle))
                VM.PageTitle = this.Title;
            this.SetBinding(ContentPage.TitleProperty, "PageTitle");

			if (CoreSettings.AppData.Settings.AnalyticsEnabled)
			{
				VM.Log.LogAnalytics(this.GetType().FullName);
			}
        }

        protected override void OnAppearing()
        {
            if (Navigation != null)
                CoreSettings.AppNav = Navigation;
            base.OnAppearing();
        }
    }
}
