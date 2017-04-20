using System;
using Xamarin.Forms;

namespace Xamarin.Forms.CommonCore
{
	public abstract class BoundPage<T> : ContentPage
		where T : ObservableViewModel
	{
		public string HeaderTitle { get; set; }
		public T VM { get; set; }
		public BoundPage()
		{
			VM = InjectionManager.GetViewModel<T>();
			this.BindingContext = VM;
		}

		protected override void OnAppearing()
		{
			if (Navigation != null)
				AppData.AppNav = Navigation;
			base.OnAppearing();
		}

	}
}

