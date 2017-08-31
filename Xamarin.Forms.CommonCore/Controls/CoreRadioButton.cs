using System;

namespace Xamarin.Forms.CommonCore
{
    public class CoreRadioButton : View
    {
        public EventHandler<bool> CheckedChanged;
        
		public static readonly BindableProperty CheckedProperty =
				BindableProperty.Create(propertyName: "Checked",
                returnType: typeof(bool),
                declaringType: typeof(CoreRadioButton),
                defaultValue: false);

		public static readonly BindableProperty TextProperty =
        		BindableProperty.Create(propertyName: "Text",
        		returnType: typeof(string),
        		declaringType: typeof(CoreRadioButton),
        		defaultValue: string.Empty);

		public static readonly BindableProperty TextColorProperty =
        		BindableProperty.Create(propertyName: "TextColor",
        		returnType: typeof(Color),
        		declaringType: typeof(CoreRadioButton),
        		defaultValue: Color.Black);


		public static readonly BindableProperty UnSelectedImageProperty =
				BindableProperty.Create("UnSelectedImage",
				typeof(string),
				typeof(CoreRadioButton),
				null);

		public static readonly BindableProperty SelectedImageProperty =
				BindableProperty.Create("SelectedImage",
				typeof(string),
				typeof(CoreRadioButton),
				null);
        

		public string UnSelectedImage
		{
			get { return (string)GetValue(UnSelectedImageProperty); }
			set { SetValue(UnSelectedImageProperty, value); }
		}

		public string SelectedImage
		{
			get { return (string)GetValue(SelectedImageProperty); }
			set { SetValue(SelectedImageProperty, value); }
		}


        public bool Checked
        {
            get
            {
                return (bool)this.GetValue(CheckedProperty);
            }

            set
            {
                this.SetValue(CheckedProperty, value);
                var eventHandler = this.CheckedChanged;
                if (eventHandler != null)
                {
                   
                    eventHandler.Invoke(this, value);
                }
            }
        }

        public string Text
        {
            get
            {
                return (string)this.GetValue(TextProperty);
            }

            set
            {
                this.SetValue(TextProperty, value);
            }
        }

        public Color TextColor
        {
            get
            {
                return (Color)this.GetValue(TextColorProperty);
            }

            set
            {
                this.SetValue(TextColorProperty, value);
            }
        }

        public int Id { get; set; }
    }

 
}
