using System;
using System.Collections.Generic;
using FFImageLoading.Forms;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{

	public class MasterPageItem
	{
		public string Title { get; set; }

		public string IconSource { get; set; }

		public Type TargetType { get; set; }
	}

	public class SlidingPageCell : ViewCell
	{
		private readonly CachedImage img;
		private readonly Label lbl;

		public SlidingPageCell()
		{

			img = new CachedImage()
			{
				Margin = new Thickness(10, 0, 3, 5),
				HeightRequest = 22,
				WidthRequest = 22,
				DownsampleHeight = 22,
				DownsampleWidth = 22,
				Aspect = Aspect.AspectFit,
				CacheDuration = TimeSpan.FromDays(30),
				VerticalOptions = LayoutOptions.Center,
				DownsampleUseDipUnits = true
			};

			lbl = new Label()
			{
				Margin = 5,
				VerticalOptions = LayoutOptions.Center,
			};

			View = new StackLayout()
			{
				Orientation = StackOrientation.Horizontal,
				Children = { img, lbl }
			};
		}

		//On a listview that uses RecycleElement binding can be costly
		protected override void OnBindingContextChanged()
		{
			var item = (MasterPageItem)BindingContext;
			img.Source = item.IconSource;
			lbl.Text = item.Title;

			base.OnBindingContextChanged();
		}
	}


	public class SlidingPage : ContentPage
	{

		private Dictionary<string, NavigationPage> NavPages { get; set; } = new Dictionary<string, NavigationPage>();

		public SlidingPage()
		{
			BackgroundColor = Color.FromHex("#b85921");
			var masterPageItems = new List<MasterPageItem>();
			masterPageItems.Add(new MasterPageItem
			{
				Title = "Behaviors",
				IconSource = "index24.png",
				TargetType = typeof(BehaviorsMain)
			});
			masterPageItems.Add(new MasterPageItem
			{
				Title = "Dependencies",
				IconSource = "index24.png",
				TargetType = typeof(DependeciesMain)
			});
			masterPageItems.Add(new MasterPageItem
			{
				Title = "Effects",
				IconSource = "index24.png",
				TargetType = typeof(EffectsMain)
			});
			masterPageItems.Add(new MasterPageItem
			{
				Title = "Services",
				IconSource = "index24.png",
				TargetType = typeof(ServicesMain)
			});
			masterPageItems.Add(new MasterPageItem
			{
				Title = "Controls",
				IconSource = "index24.png",
				TargetType = typeof(ControlsMain)
			});

			var monkey = new CachedImage()
			{
				Margin = 5,
				Source = "iconwhite.png"
			};
			var navTitle = new Label()
			{
				Text = "Common Core",
				TextColor = Color.White,
				Margin = 5
			};
			var navSubtitle = new Label()
			{
				Text = "Options Menu",
				TextColor = Color.White,
				Style = AppStyles.AddressCell
			};

			var topPanel = new StackLayout()
			{
				Padding = new Thickness(10, 0, 10, 10),
				BackgroundColor = Color.FromHex("#b85921"),
				Orientation = StackOrientation.Horizontal,
				Children = { monkey, new StackLayout() { Children = { navTitle, navSubtitle } } }
			};

			var listView = new ListControl
			{
				BackgroundColor = Color.White,
				ItemsSource = masterPageItems,
				ItemTemplate = new DataTemplate(typeof(SlidingPageCell)),
				VerticalOptions = LayoutOptions.FillAndExpand,
				SeparatorVisibility = SeparatorVisibility.None,
				ItemClickCommand = new Command((obj) =>
				{
					var item = (MasterPageItem)obj;
					var page = (MasterDetailPage)Application.Current.MainPage;

					if (!NavPages.ContainsKey(item.TargetType.Name))
					{
						var np = new NavigationPage((Page)Activator.CreateInstance(item.TargetType))
						{
							BarBackgroundColor = Color.FromHex("#b85921"),
							BarTextColor = Color.White
						};
						NavPages.Add(item.TargetType.Name, np);
					}
					page.Detail = NavPages[item.TargetType.Name];

					/* using this implementation increases memory 3x more than the one above */
					//page.Detail = new NavigationPage((Page)Activator.CreateInstance(item.TargetType))
					//{
					//	BarBackgroundColor = Color.FromHex("#b85921"),
					//	BarTextColor = Color.White
					//};

					page.IsPresented = false;
				})
			};

			Padding = new Thickness(0, 40, 0, 0);
			Icon = "hamburger.png";
			Title = "Reference Guide";
			Content = new StackLayout
			{
				VerticalOptions = LayoutOptions.FillAndExpand,
				Children = {
					topPanel,
					listView
				}
			};
		}
	}
}
