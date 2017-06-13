using System;
using System.ComponentModel;
using System.Windows.Input;

namespace Xamarin.Forms.CommonCore
{
	public class RelayCommand : ICommand, IDisposable
	{
		private Action<object> _execute;
		private Func<bool> _validator;
		private INotifyPropertyChanged _npc;
		public event EventHandler CanExecuteChanged;

		public bool CanExecute(object parameter)
		{
			return _validator != null ? _validator.Invoke() : true;
		}

		public RelayCommand(Action<object> execute, Func<bool> validator = null, INotifyPropertyChanged npc = null)
		{
			_execute = execute;
			_validator = validator;
			_npc = npc;

			if (_npc != null)
			{
				_npc.PropertyChanged += PropertyChangedEvent;
			}
		}
		private void PropertyChangedEvent(object sender, PropertyChangedEventArgs args)
		{
			CanExecuteChanged?.Invoke(this, null);
		}

		public void Execute(object parameter)
		{
			_execute(parameter);
		}

		~RelayCommand()
		{
			if (_npc != null)
				_npc.PropertyChanged -= PropertyChangedEvent;
		}
		public void Dispose()
		{
			if (_npc != null)
				_npc.PropertyChanged -= PropertyChangedEvent;
		}
	}
}
