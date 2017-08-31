using System;
using System.Collections;
using System.Collections.Generic;
using System.Windows.Input;

namespace Xamarin.Forms.CommonCore
{
    public class CoreRadioGroup: StackLayout
    {
        public List<CoreRadioButton> rads;


		public static readonly BindableProperty TextColorProperty =
						BindableProperty.Create(propertyName: "TextColor",
						returnType: typeof(Color),
						declaringType: typeof(CoreRadioGroup),
						defaultValue: Color.Black,
                        propertyChanged: OnTextColorChanged);

		public static readonly BindableProperty CheckedCommandProperty =
	                    BindableProperty.Create("CheckedCommand",
						typeof(ICommand),
						typeof(CoreRadioGroup),
						null);
        
		public static readonly BindableProperty UnSelectedImageProperty =
						BindableProperty.Create(propertyName: "UnSelectedImage",
						returnType: typeof(string),
						declaringType: typeof(CoreRadioGroup),
						defaultValue: null,
						propertyChanged: OnUnSelectedImageChanged);

		public static readonly BindableProperty SelectedImageProperty =
						BindableProperty.Create(propertyName: "SelectedImage",
						returnType: typeof(string),
						declaringType: typeof(CoreRadioGroup),
						defaultValue: null,
						propertyChanged: OnSelectedImageChanged);

		public static readonly BindableProperty ItemsSourceProperty =
	                    BindableProperty.Create(propertyName: "ItemsSource",
    				    returnType: typeof(IEnumerable),
    				    declaringType: typeof(CoreRadioGroup),
    				    defaultValue: null,
    				    propertyChanged: OnItemsSourceChanged);

		public static readonly BindableProperty SelectedIndexProperty =
        				BindableProperty.Create(propertyName: "SelectedIndex",
        				returnType: typeof(int),
        				declaringType: typeof(CoreRadioGroup),
        				defaultValue: -1,
                        defaultBindingMode: BindingMode.TwoWay,
        				propertyChanged: OnSelectedIndexChanged);

		public Color TextColor
		{
			get { return (Color)GetValue(TextColorProperty); }
			set { SetValue(TextColorProperty, value); }
		}


        public ICommand CheckedCommand
		{
			get { return (ICommand)this.GetValue(CheckedCommandProperty); }
			set { this.SetValue(CheckedCommandProperty, value); }
		}

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

        public IEnumerable ItemsSource
        {
            get { return (IEnumerable)GetValue(ItemsSourceProperty); }
            set { SetValue(ItemsSourceProperty, value); }
        }

      
        public int SelectedIndex
        {
            get { return (int)GetValue(SelectedIndexProperty); }
            set { SetValue(SelectedIndexProperty, value); }
        }

		public CoreRadioGroup()
		{
			rads = new List<CoreRadioButton>();
		}

		private static void OnTextColorChanged(BindableObject bindable, object oldValue, object newValue)
		{
			var radButtons = bindable as CoreRadioGroup;
			foreach (CoreRadioButton btn in radButtons.Children)
			{
				btn.TextColor = (Color)newValue;
			}
		}

        private static void OnUnSelectedImageChanged(BindableObject bindable, object oldValue, object newValue)
        {
			var radButtons = bindable as CoreRadioGroup;
			foreach (CoreRadioButton btn in radButtons.Children)
			{
				btn.UnSelectedImage = (string)newValue;
			}
        }
		private static void OnSelectedImageChanged(BindableObject bindable, object oldValue, object newValue)
		{
            var radButtons = bindable as CoreRadioGroup;
            foreach(CoreRadioButton btn in radButtons.Children)
            {
                btn.SelectedImage = (string)newValue;
            }
		}

        private static void OnItemsSourceChanged(BindableObject bindable, object oldValue, object newValue)
        {
            var radButtons = bindable as CoreRadioGroup;
           
            radButtons.rads.Clear();
            radButtons.Children.Clear();
            if (newValue != null)
            {
              
                int radIndex = 0;
                foreach (var item in (IEnumerable)newValue)
                {
                    var rad = new CoreRadioButton();
                    rad.SelectedImage = radButtons.SelectedImage;
                    rad.UnSelectedImage = radButtons.UnSelectedImage;;
                    rad.TextColor = radButtons.TextColor;
                    rad.Text = item.ToString();
                    rad.Id = radIndex;

                    if(radButtons.SelectedIndex!=-1 && radButtons.SelectedIndex==radIndex)
                    {
                        rad.Checked = true;
                    }

                    rad.CheckedChanged += radButtons.OnCheckedChanged;

					radButtons.rads.Add(rad);
                                    
                    radButtons.Children.Add(rad);
                    radIndex++;
                }
            }
        }

        private void OnCheckedChanged(object sender, bool args)
        {
           
           if (!args) return;

            var selectedRad = sender as CoreRadioButton;

            foreach (var rad in rads)
            {
                if(!selectedRad.Id.Equals(rad.Id))
                {
                    rad.Checked = false;
                }
                else
                {
                    SelectedIndex = rad.Id;
                    CheckedCommand?.Execute(rad.Id);
                }
                
            }

        }

        private static void OnSelectedIndexChanged(BindableObject bindable, object value, object newvalue)
        {
            if ((int)newvalue == -1) return;

            var bindableRadioGroup = bindable as CoreRadioGroup;


            foreach (var rad in bindableRadioGroup.rads)
            {
                if (rad.Id == bindableRadioGroup.SelectedIndex)
                {
                    rad.Checked = true;
                }
               
            }

        }
    
    }
}
