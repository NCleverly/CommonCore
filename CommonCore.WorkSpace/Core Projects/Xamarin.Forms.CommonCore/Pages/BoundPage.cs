using System;
using System.Reflection;
using Xamarin.Forms;

namespace Xamarin.Forms.CommonCore
{
	public abstract class BoundPage<T> : ContentPage
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
                try
                {
					var fObj = field.GetValue(this);
					if (fObj!=null && fObj is View)
					{
						var ctrl = (View)fObj;
						if (string.IsNullOrEmpty(ctrl.AutomationId))
							ctrl.AutomationId = field.Name;
					}
                }
                catch {}//suppress error

			}
			var props = this.GetType().GetProperties(bindingFlags);
			foreach (var prop in props)
			{
                try
                {
					var pObj = prop.GetValue(this);
					if (pObj != null && pObj is View)
					{
						var ctrl = (View)pObj;
						if (string.IsNullOrEmpty(ctrl.AutomationId))
							ctrl.AutomationId = prop.Name;

					}
                }
                catch {}//suppress error

			}
		}

	}
}

