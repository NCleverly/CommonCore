using System;
namespace Xamarin.Forms.CommonCore
{
    public class BoundMasterDetailPage<T> : MasterDetailPage
        where T : ObservableViewModel
    {
        public T VM { get; set; }
        public BoundMasterDetailPage()
        {
            VM = InjectionManager.GetViewModel<T>();
            this.BindingContext = VM;
        }
    }


    public class BoundMasterDetailPage : MasterDetailPage
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
                }
            }
        }

        public ObservableViewModel VM
        {
            get { return (ObservableViewModel)InjectionManager.GetViewModel(viewModel); }
        }

    }
}
