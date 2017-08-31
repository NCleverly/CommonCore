using System;
namespace Xamarin.Forms.CommonCore
{
    public abstract class BoundPage<T> : BasePages
		where T : ObservableViewModel
	{
        
        public T VM
        {
            get { return InjectionManager.GetViewModel<T>(); }
        }

		public BoundPage()
		{
			this.BindingContext = VM;
            if (!string.IsNullOrEmpty(VM.PageTitle))
                VM.PageTitle = this.Title;
            this.SetBinding(ContentPage.TitleProperty, "PageTitle");

		}

	}
}

