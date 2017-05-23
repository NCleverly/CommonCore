using System;
namespace Xamarin.Forms.CommonCore
{
    public class BaseTabbedPage : TabbedPage
    {
		//public static readonly BindableProperty SelectedTabBackgroundColorProperty =
	 //       BindableProperty.Create("SelectedTabBackgroundColor",
		//					typeof(Color),
		//					typeof(BindablePicker),
		//					Color.White);
        
		//public Color SelectedTabBackgroundColor
		//{
		//	get { return (Color)this.GetValue(SelectedTabBackgroundColorProperty); }
		//	set { this.SetValue(SelectedTabBackgroundColorProperty, value); }
		//}


		public static readonly BindableProperty SelectedTabForegroundColorProperty =
			BindableProperty.Create("SelectedTabForegroundColor",
							typeof(Color),
							typeof(BindablePicker),
							Color.Black);

		public Color SelectedTabForegroundColor
		{
			get { return (Color)this.GetValue(SelectedTabForegroundColorProperty); }
			set { this.SetValue(SelectedTabForegroundColorProperty, value); }
		}


		public static readonly BindableProperty TabBackgroundColorProperty =
			BindableProperty.Create("TabBackgroundColor",
							typeof(Color),
							typeof(BindablePicker),
							Color.White);
		public Color TabBackgroundColor
		{
			get { return (Color)this.GetValue(TabBackgroundColorProperty); }
			set { this.SetValue(TabBackgroundColorProperty, value); }
		}

		public static readonly BindableProperty TabForegroundColorProperty =
			BindableProperty.Create("TabForegroundColor",
							typeof(Color),
							typeof(BindablePicker),
							Color.Black);

		public Color TabForegroundColor
		{
			get { return (Color)this.GetValue(TabForegroundColorProperty); }
			set { this.SetValue(TabForegroundColorProperty, value); }
		}
    }
}
