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
}
