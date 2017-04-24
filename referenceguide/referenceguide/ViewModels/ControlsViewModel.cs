using System;
using System.Windows.Input;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{
	public class ControlsViewModel : ObservableViewModel
	{
		public ICommand FABClicked { get; set; }
		public ControlsViewModel()
		{
			FABClicked = new RelayCommand((obj) =>
			{

			});
		}
	}
}
