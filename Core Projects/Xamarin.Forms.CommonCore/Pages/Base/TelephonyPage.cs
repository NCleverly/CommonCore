using System;
namespace Xamarin.Forms.CommonCore
{
    public class TelephonyBoundPage<T>: BasePages
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
				AppData.Instance.AppNav = Navigation;
			base.OnAppearing();
		}
    }
}
