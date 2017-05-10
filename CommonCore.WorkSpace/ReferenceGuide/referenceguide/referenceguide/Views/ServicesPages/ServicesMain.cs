using System;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{
    public class ServicesMain : BoundPage<DataExampleViewModel>
    {
        public ServicesMain()
        {
            this.Title = "Services";

            var http = new GradientButton()
            {
                Text = "Http Services",
                Style = AppStyles.LightOrange,
                AutomationId = "http",
                Command = new Command(async (obj) =>
                {
                    await Navigation.PushAsync(new HttpServicesPage());
                })
            };

            var sqlite = new GradientButton()
            {
                Text = "Sqlite",
                Style = AppStyles.LightOrange,
                AutomationId = "sqlite",
                Command = new Command(async (obj) =>
                {
                    await Navigation.PushAsync(new SqlitePage());
                })
            };

            var encrypt = new GradientButton()
            {
                Text = "Encryption",
                Style = AppStyles.LightOrange,
                AutomationId = "encrypt",
                Command = new Command(async (obj) =>
                {
                    await Navigation.PushAsync(new EncryptionPage());
                })
            };

			var timerSrv = new GradientButton()
			{
				Text = "Background Timer",
				Style = AppStyles.LightOrange,
				AutomationId = "timerSrv",
			};
            timerSrv.SetBinding(GradientButton.TextProperty,"BackgroundButtonTitle");
            timerSrv.SetBinding(GradientButton.CommandProperty,"StartBackgrounding");

			var stack = new StackLayout()
            {
                Padding = 20,
                Spacing = 10,
                Children = { http, sqlite, encrypt, timerSrv }
            };

            Content = new ScrollView()
            {
                Content = stack
            };
        }
    }
}
