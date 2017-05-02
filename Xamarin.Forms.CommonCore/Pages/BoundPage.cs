using System;
using System.Reflection;
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

		/// <summary>
		/// Sets the automation identifiers for all class fields and properties of the type View
		/// </summary>
		protected void SetAutomationIds()
		{
			var bindingFlags = BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.Public;
			var fields = this.GetType().GetFields(bindingFlags);
			foreach (var field in fields)
			{
				var fObj = field.GetValue(this);
				if (fObj is View)
				{
					var ctrl = (View)fObj;
					if (string.IsNullOrEmpty(ctrl.AutomationId))
						ctrl.AutomationId = field.Name;
				}
			}
			var props = this.GetType().GetProperties(bindingFlags);
			foreach (var prop in props)
			{
				var pObj = prop.GetValue(this);
				if (pObj is View)
				{
					var ctrl = (View)pObj;
					if (string.IsNullOrEmpty(ctrl.AutomationId))
						ctrl.AutomationId = prop.Name;
				}
			}
		}

	}
}

