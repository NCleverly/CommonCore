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
            if (VM != null)
            {
                if (string.IsNullOrEmpty(VM.PageTitle))
                    VM.PageTitle = this.Title;
            }
            this.SetBinding(ContentPage.TitleProperty, "PageTitle");

		}

	}


    public abstract class BoundPage : BasePages
    {

        string viewModel;

        /// <summary>
        /// Gets or sets the binding context based on the fully qualified name of the viewmodel.
        /// </summary>
        /// <value>The name of the view model.</value>
        public string ViewModel
        {
            get
            {
                return viewModel;
            }

            set
            {
                viewModel = value;
                if (!string.IsNullOrEmpty(value))
                {
                    this.BindingContext = InjectionManager.GetViewModel(viewModel);
                    if (string.IsNullOrEmpty(VM.PageTitle))
                        VM.PageTitle = this.Title;
                }
            }
        }

        public ObservableViewModel VM
        {
            get { return (ObservableViewModel)InjectionManager.GetViewModel(viewModel); }
        }

        public BoundPage()
        {
            this.SetBinding(ContentPage.TitleProperty, "PageTitle");
        }


    }
}

