using System;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{
    public class PhonePage : TelephonyBoundPage<SimpleViewModel>
    {
        public PhonePage()
        {
            this.Title = "Phone Calls";

			var lbl = new Label()
			{
				TextColor = Color.Gray,
				Text = "Phone Number",
				FontSize = 14,
				Margin = new Thickness(5, 5, 5, 1)
			};

			var phoneNum = new Entry()
			{
				Margin = new Thickness(5, 1, 5, 1),
                Keyboard = Keyboard.Telephone,
				AutomationId = "phoneNum"
			};
            phoneNum.SetBinding(Entry.TextProperty, "PhoneNumber");

			var btnCall = new GradientButton()
			{
				Text = "Call",
				Style = AppStyles.LightOrange,
				Margin = 5,
				AutomationId = "btnCall"
			};
			btnCall.SetBinding(GradientButton.CommandProperty, "MakeCall");

			var btnCallEvent = new GradientButton()
			{
				Text = "Call With Event",
				Style = AppStyles.LightOrange,
				Margin = 5,
				AutomationId = "btnCallEvent"
			};
			btnCallEvent.SetBinding(GradientButton.CommandProperty, "MakeCallEvent");

            Content = new StackLayout()
            {
                Padding = 15,
                Children = { lbl, phoneNum, btnCall, btnCallEvent }
            };

        }
    }
}
