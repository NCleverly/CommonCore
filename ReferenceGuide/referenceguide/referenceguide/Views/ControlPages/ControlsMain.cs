using System;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{
	public class ControlsMain : BoundPage<SimpleViewModel>
	{
        
		public ControlsMain()
		{
			this.Title = "Controls";

			var md = new GradientButton()
			{
				Text = "Material Design",
				Style = AppStyles.LightOrange,
				Command = new Command(async (obj) =>
				{
					await AppData.Instance.AppNav.PushAsync(new MaterialDesignPage());
				})
			};

			var listPage = new GradientButton()
			{
				Text = "List Control",
				Style = AppStyles.LightOrange,
				Command = new Command(async(obj) =>
				{
					await AppData.Instance.AppNav.PushAsync(new PaginagedListControl());
				})
			};


			var searchPage = new GradientButton()
			{
				Text = "Search Page",
				Style = AppStyles.LightOrange,
				Command = new Command(async(obj) =>
			   {
                   await AppData.Instance.AppNav.PushAsync(new SearchContentPage());
			   })
			};

			var stack = new StackLayout()
			{
				Padding = 20,
				Spacing = 10,
				Children = { listPage, md, searchPage }
			};

			Content = new ScrollView()
			{
				Content = stack
			};

		}
	}
}
