using System;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{
	public class ControlsMain : BoundPage<SimpleViewModel>
	{
		private Popup pop;

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

			var popButton = new GradientButton()
			{
				Text = "Popup",
				Style = AppStyles.LightOrange,
				Command = new Command((obj) =>
			   {
				   pop.Show();
			   })
			};

			var stack = new StackLayout()
			{
				Padding = 20,
				Spacing = 10,
				Children = { popButton, listPage, md }
			};

			Content = new ScrollView()
			{
				Content = stack
			};

			DefinePopup();
		}

		private void DefinePopup()
		{
			var lst = new ListView()
			{
				BindingContext = this.BindingContext,
			};
			lst.SetBinding(ListView.ItemsSourceProperty, new Binding("Words", BindingMode.TwoWay));

			pop = new Popup()
			{
				XPositionRequest = 0.5,
				LeftBorderColor = Color.Gray,
				RightBorderColor = Color.Gray,
				BottomBorderColor = Color.Gray,
				TopBorderColor = Color.Gray,
				YPositionRequest = 0.5,
				ContentWidthRequest = 0.8,
				ContentHeightRequest = 0.5,
				//HasDropShadow = true,
				Header = new ContentView()
				{
					Padding = 10,
					BackgroundColor = Color.FromHex("#DF8049"),
					Content = new Label
					{
						FontSize = Device.GetNamedSize(NamedSize.Large, typeof(Label)),
						TextColor = Color.White,
						Text = "Simple popup"
					}
				},
				Body = new ContentView()
				{
					Content = lst
				},
				Footer = new ContentView()
				{
					BackgroundColor = Color.White,
					Content = new StackLayout
					{
						Orientation = StackOrientation.Horizontal,
						HorizontalOptions = LayoutOptions.EndAndExpand,
						Children = { new Button(){
								Margin=new Thickness(0,0,10,0),
								BorderWidth = 0,
								BorderColor = Color.Transparent,
								BackgroundColor = Color.Transparent,
								Text = "Close",
								TextColor=Color.Black,
								Command = new Command(async()=>{
									await pop.HideAsync(async p =>
									{
										await p.FadeTo(0, 250, Easing.Linear);
										p.Opacity = 1;
									});
							})
						} }
					}
				}
			};

			new PopupPageInitializer(this) { pop };
		}
	}
}
