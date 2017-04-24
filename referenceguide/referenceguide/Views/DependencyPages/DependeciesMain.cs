using System;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{
	public class DependeciesMain : BoundPage<SimpleViewModel>
	{
		public DependeciesMain()
		{
			this.Title = "Dependencies";

			var dlg = new GradientButton()
			{
				Style = AppStyles.LightOrange,
				Text = "Dialog"
			};
			dlg.SetBinding(Button.CommandProperty, "DialogClick");


			var not = new GradientButton()
			{
				Style = AppStyles.LightOrange,
				Text = "Notification"
			};
			not.SetBinding(Button.CommandProperty, "NotificationClick");


			var overlay = new GradientButton()
			{
				Style = AppStyles.LightOrange,
				Text = "Overlay"
			};
			overlay.SetBinding(Button.CommandProperty, "OverlayClick");


			var blur = new GradientButton()
			{
				Style = AppStyles.LightOrange,
				Text = "Create Blur",
			};
			blur.SetBinding(Button.CommandProperty, "Blur");

			var cal = new GradientButton()
			{
				Style = AppStyles.LightOrange,
				Text = "Create Calendar Event",
			};
			cal.SetBinding(Button.CommandProperty, "CreateCalendar");

			var stack = new StackLayout()
			{
				Padding = 20,
				Spacing = 10,
				Children = { dlg, not, overlay, blur, cal }
			};

			Content = new ScrollView()
			{
				Content = stack
			};
		}
	}
}
