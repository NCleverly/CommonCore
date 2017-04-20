using System;
using Xamarin.Forms;

namespace Xamarin.Forms.CommonCore
{
	/// <summary>
	/// Android original source: http://chrisriesgo.com/material-design-fab-in-xamarin-forms/
	/// </summary>
	public enum FABControlSize
	{
		Normal,
		Mini
	}

	public class FABControl: View
	{
		public static readonly BindableProperty ImageNameProperty =
			BindableProperty.Create("ImageName",
									typeof(string),
									typeof(FABControl),
									string.Empty);
		public string ImageName
		{
			get { return (string)GetValue(ImageNameProperty); }
			set { SetValue(ImageNameProperty, value); }
		}

		public static readonly BindableProperty ColorNormalProperty =
			BindableProperty.Create("ColorNormal",
									typeof(Color),
									typeof(FABControl),
									Color.White);
		public Color ColorNormal
		{
			get { return (Color)GetValue(ColorNormalProperty); }
			set { SetValue(ColorNormalProperty, value); }
		}

		public static readonly BindableProperty ColorPressedProperty =
			BindableProperty.Create("ColorPressed",
									typeof(Color),
									typeof(FABControl),
									Color.White);
		public Color ColorPressed
		{
			get { return (Color)GetValue(ColorPressedProperty); }
			set { SetValue(ColorPressedProperty, value); }
		}

		public static readonly BindableProperty ColorRippleProperty =
			BindableProperty.Create("ColorRipple",
									typeof(Color),
									typeof(FABControl),
									Color.White);
		public Color ColorRipple
		{
			get { return (Color)GetValue(ColorRippleProperty); }
			set { SetValue(ColorRippleProperty, value); }
		}

		public static readonly BindableProperty SizeProperty =
			BindableProperty.Create("Size",
									typeof(FABControlSize),
									typeof(FABControl),
									FABControlSize.Normal);
		public FABControlSize Size
		{
			get { return (FABControlSize)GetValue(SizeProperty); }
			set 
			{
				var sFactor = value == FABControlSize.Mini ? 40 : 56;
				this.HeightRequest = sFactor;
				this.WidthRequest = sFactor;
				SetValue(SizeProperty, value); 
			}
		}

		public static readonly BindableProperty HasShadowProperty =
			BindableProperty.Create("HasShadow",
									typeof(bool),
									typeof(FABControl),
									true);
		public bool HasShadow
		{
			get { return (bool)GetValue(HasShadowProperty); }
			set { SetValue(HasShadowProperty, value); }
		}

		public delegate void ShowHideDelegate(bool animate = true);
		public delegate void AttachToListViewDelegate(ListView listView);

		public ShowHideDelegate Show { get; set; }
		public ShowHideDelegate Hide { get; set; }
		public Action<object, EventArgs> Clicked { get; set; }
	}
}
