using System;
using System.Reflection;

namespace Xamarin.Forms.CommonCore
{
    public class TelephonyPage : ContentPage { }
    public class TelephonyBoundPage<T> : TelephonyPage
        where T : ObservableViewModel
    {
        public T VM { get; set; }
        public TelephonyBoundPage()
        {
            VM = InjectionManager.GetViewModel<T>();
            this.BindingContext = VM;
            if (!string.IsNullOrEmpty(VM.PageTitle))
                VM.PageTitle = this.Title;
            this.SetBinding(ContentPage.TitleProperty, "PageTitle");
        }

        protected override void OnAppearing()
        {
            if (Navigation != null)
                CoreSettings.AppNav = Navigation;
            base.OnAppearing();
        }
    }
}
