using System;
namespace Xamarin.Forms.CommonCore
{
    public class BoundContenView : ContentView
    {
        string viewModelName;

        /// <summary>
        /// Gets or sets the binding context based on the fully qualified name of the viewmodel.
        /// </summary>
        /// <value>The name of the view model.</value>
        public string ViewModelName
        {
            get
            {
                return viewModelName;
            }

            set
            {
                viewModelName = value;
                this.BindingContext = InjectionManager.GetViewModel(viewModelName);
            }
        }

        public object VM
        {
            get { return InjectionManager.GetViewModel(viewModelName); }
        }

    }

    public class BoundContenView<T> : ContentView
        where T : ObservableViewModel
    {
        public T VM
        {
            get { return InjectionManager.GetViewModel<T>(); }
        }

        public BoundContenView()
        {
            this.BindingContext = VM;
        }

    }
}
