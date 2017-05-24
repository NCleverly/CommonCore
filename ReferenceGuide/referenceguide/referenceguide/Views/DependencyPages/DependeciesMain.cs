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
                Text = "Dialog",
                AutomationId = "dialogButton"
            };
            dlg.SetBinding(Button.CommandProperty, "DialogClick");


            var not = new GradientButton()
            {
                Style = AppStyles.LightOrange,
                Text = "Notification",
                AutomationId = "notifyButton"
            };
            not.SetBinding(Button.CommandProperty, "NotificationClick");


            var overlay = new GradientButton()
            {
                Style = AppStyles.LightOrange,
                Text = "Overlay",
                AutomationId = "overlayButton"
            };
            overlay.SetBinding(Button.CommandProperty, "OverlayClick");


            var blur = new GradientButton()
            {
                Style = AppStyles.LightOrange,
                Text = "Create Blur",
                AutomationId = "blurButton"
            };
            blur.SetBinding(Button.CommandProperty, "Blur");

			var makeCall = new GradientButton()
			{
				Style = AppStyles.LightOrange,
				Text = "Telephony Implementation",
				AutomationId = "makeCall",
                Command = new Command(async(obj) => {
                    await AppData.Instance.AppNav.PushAsync(new PhonePage());
                })
			};

            var cal = new GradientButton()
            {
                Style = AppStyles.LightOrange,
                Text = "Create Calendar Event",
                AutomationId = "calendarbutton"
            };
            cal.SetBinding(Button.CommandProperty, "CreateCalendar");

			var pnRegister = new GradientButton()
			{
				Style = AppStyles.LightOrange,
				AutomationId = "pnRegister"
			};
			pnRegister.SetBinding(Button.TextProperty, "PushButtonLabel");
			pnRegister.SetBinding(Button.CommandProperty, "PushRegister");


            var stack = new StackLayout()
            {
                Padding = 20,
                Spacing = 10,
                Children = { dlg, not, overlay, blur, makeCall, cal, pnRegister }
            };

            Content = new ScrollView()
            {
                Content = stack
            };
        }
    }
}
