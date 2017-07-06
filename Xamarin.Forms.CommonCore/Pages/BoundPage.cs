using System;
using System.Reflection;
using Xamarin.Forms;

namespace Xamarin.Forms.CommonCore
{
	public abstract class BoundPage<T> : BasePages
		where T : ObservableViewModel
	{
        
		public T VM { get; set; }
		public BoundPage()
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

