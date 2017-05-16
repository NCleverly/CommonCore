using System;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;

namespace referenceguide
{
    public class StateView: PopupView 
    {
        public StateView()
        {
            var lbl = new Label() { Text = "Select A State", Margin = 10 };
            var top = new StackLayout()
            {
                BackgroundColor = Color.FromHex("#DF8049"),
                Children = { lbl }
            };

            var lstView = new ListControl(ListViewCachingStrategy.RecycleElement)
            {
                VerticalOptions = LayoutOptions.CenterAndExpand,
                MaintainSelection=true
            };
            lstView.SetBinding(ListControl.ItemsSourceProperty,"States");

            var placeholder = new StackLayout() { 
                HorizontalOptions = LayoutOptions.StartAndExpand
            };
			var btn = new Button()
			{
                Margin=5,
				Text = "Close",
                BackgroundColor = Color.Transparent,
				Command = new Command(() =>
				{
					this.Close();
				})
			};

            var bottom = new StackLayout()
            { 
                Orientation= StackOrientation.Horizontal,
                Children = { placeholder, btn }
            };



            Content = new StackLayout()
            {
                Children = { top, lstView, bottom }
            };
        }


    }
    public class ControlsMain : AbsoluteLayoutPage<SimpleViewModel>
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
                Command = new Command(async (obj) =>
                {
                    await AppData.Instance.AppNav.PushAsync(new PaginagedListControl());
                })
            };


            var searchPage = new GradientButton()
            {
                Text = "Search Page",
                Style = AppStyles.LightOrange,
                Command = new Command(async (obj) =>
               {
                   await AppData.Instance.AppNav.PushAsync(new SearchContentPage());
               })
            };

            var popup = new GradientButton()
            {
                Text = "Popup Control",
                Style = AppStyles.LightOrange,
                Command = new Command((obj) =>
               {
                   this.ShowPopup(new StateView(), new Rectangle(0.5, 0.5, 0.85, 0.5), 5);
               })
            };

            var stack = new StackLayout()
            {
                Padding = 20,
                Spacing = 10,
                Children = { listPage, md, searchPage, popup }
            };

            Content = new ScrollView()
            {
                Content = stack
            };

        }
    }
}
