using System;
using Xamarin.Forms;

namespace Xamarin.Forms.CommonCore
{
	public enum ReturnKeyTypes : int
	{
		Default,
		Go,
		Google,
		Join,
		Next,
		Route,
		Search,
		Send,
		Yahoo,
		Done,
		EmergencyCall,
		Continue
	}

	public class EntryUnderline : Entry
	{
		public Action NextFocus { get; set; }

		public static readonly BindableProperty ReturnKeyTypeProperty =
				BindableProperty.Create(
				   propertyName: "ReturnKeyType",
				   returnType: typeof(ReturnKeyTypes),
				   declaringType: typeof(EntryUnderline),
				   defaultValue: ReturnKeyTypes.Done);

		public ReturnKeyTypes ReturnKeyType
		{
			get { return (ReturnKeyTypes)GetValue(ReturnKeyTypeProperty); }
			set { SetValue(ReturnKeyTypeProperty, value); }
		}

		public static readonly BindableProperty HasErrorProperty =
			BindableProperty.Create("HasError",
									typeof(bool),
									typeof(EntryUnderline),
									false);
		public bool HasError
		{
			get { return (bool)this.GetValue(HasErrorProperty); }
			set { this.SetValue(HasErrorProperty, value); }
		}


		public static readonly BindableProperty IconProperty =
			BindableProperty.Create("Icon",
									typeof(string),
									typeof(EntryUnderline),
									null);
		public string Icon
		{
			get { return (string)this.GetValue(IconProperty); }
			set { this.SetValue(IconProperty, value); }
		}


		public static readonly BindableProperty EntryColorProperty =
			BindableProperty.Create("EntryColor",
									typeof(Color),
									typeof(EntryUnderline),
									Color.Black);
		public Color EntryColor
		{
			get { return (Color)this.GetValue(EntryColorProperty); }
			set { this.SetValue(EntryColorProperty, value); }
		}


		public static readonly BindableProperty PasswordRevealEnabledProperty =
			BindableProperty.Create("PasswordRevealEnabled",
									typeof(bool),
									typeof(EntryUnderline),
									false);

		public bool PasswordRevealEnabled
		{
			get { return (bool)this.GetValue(PasswordRevealEnabledProperty); }
			set { this.SetValue(PasswordRevealEnabledProperty, value); }
		}

		public EntryUnderline()
		{
			this.Completed += ReturnKeyHandler;
		}
		~EntryUnderline()
		{
			this.Completed -= ReturnKeyHandler;
		}

		private void ReturnKeyHandler(object sender, EventArgs args)
		{
			NextFocus?.Invoke();
		}

	}
}

