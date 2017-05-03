using System;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{
	public class EffectsMain : ContentPage
	{
		public EffectsMain()
		{
			this.Title = "Effects";

			var removeEmptyRowsEffect = new GradientButton()
            {
                Text = "Remove Empty Cell",
                Style = AppStyles.LightOrange,
                AutomationId = "removeEmptyRowsEffect",
                Command = new Command(async (obj) =>
                {
                    await Navigation.PushAsync(new ListViewEffect());
                })
            };

			var disableWebViewScrollEffect = new GradientButton()
			{
				Text = "WebView Scroll Disable",
				Style = AppStyles.LightOrange,
				AutomationId = "disableWebViewScrollEffect",
				Command = new Command(async (obj) =>
				{
					await Navigation.PushAsync(new WebViewEffect());
				})
			};

			var hideListSeparatorEffect = new GradientButton()
			{
				Text = "Hide List Separator",
				Style = AppStyles.LightOrange,
				AutomationId = "hideListSeparatorEffect",
				Command = new Command(async (obj) =>
				{
					await Navigation.PushAsync(new ListViewEffect(true));
				})
			};

			var stack = new StackLayout()
			{
				Padding = 20,
				Spacing = 10,
				Children = { removeEmptyRowsEffect, disableWebViewScrollEffect, hideListSeparatorEffect }
			};

			Content = new ScrollView()
			{
				Content = stack
			};
		}
	}
}
