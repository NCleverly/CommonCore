#if __ANDROID__
using System;
using Android.Graphics;
using Android.Support.Design.Widget;
using Android.Text;
using Android.Views;
using Android.Content;
using Android.Views.InputMethods;
using Android.Widget;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms;
using Xamarin.Forms.Platform.Android;

[assembly: ExportRenderer(typeof(FTEControl), typeof(FTEControlRenderer))]
namespace Xamarin.Forms.CommonCore
{
	public class FTEControlRenderer : ViewRenderer<FTEControl, TextInputLayout>, ITextWatcher, TextView.IOnEditorActionListener
	{
		#region TextView.IOnEditorActionListener
		public bool OnEditorAction(TextView v, ImeAction actionId, KeyEvent e)
		{
			if (actionId == ImeAction.Done || (actionId == ImeAction.ImeNull && e.KeyCode == Keycode.Enter))
			{
				
				this.targetEditor.ClearFocus();
				InputMethodManager imm = (InputMethodManager)base.Context.GetSystemService(Context.InputMethodService);
				imm.HideSoftInputFromWindow(v.WindowToken, 0);
				base.Element.Call("SendCompleted", null);
				Validate(this.targetEditor.Text);
			}
			return true;
		}
		#endregion

		#region ITextWatcher

		public void AfterTextChanged(IEditable s)
		{
			//throw new NotImplementedException ();
		}
		public void BeforeTextChanged(Java.Lang.ICharSequence s, int start, int count, int after)
		{
			//throw new NotImplementedException ();
		}
		public void OnTextChanged(Java.Lang.ICharSequence s, int start, int before, int count)
		{
			if (string.IsNullOrEmpty(base.Element.Text) && s.Length() == 0)
			{
				return;
			}
			Validate(s.ToString());

			(base.Element as IElementController).SetValueFromRenderer(FTEControl.TextProperty, s.ToString());
		}

		void Validate(string text)
		{
			if (Validator != null)
			{
				var isValid = Validator(text); ;
				if (isValid)
				{
					this.Control.Error = null;
				}
				else
				{
					if (this.Control.Error != this.ErrorMessage)
					{
						this.Control.Error = this.ErrorMessage;
					}
				}
			}
		}

		#endregion


		EditText targetEditor;

		FloatingTextEntryValidator Validator { get; set; }

		string ErrorMessage = "Error";

		protected override void OnElementChanged(ElementChangedEventArgs<FTEControl> e)
		{
			base.OnElementChanged(e);
			if (e.OldElement == null)
			{
				try
				{
					TextInputLayout ncontrol;
					ncontrol = new TextInputLayout(this.Context);
					ncontrol.ErrorEnabled = true;
					targetEditor = new EditText(this.Context);

					ncontrol.AddView(targetEditor);
					SetNativeControl(ncontrol);

					this.targetEditor.ImeOptions = ImeAction.Done;
					this.targetEditor.AddTextChangedListener(this);
					this.targetEditor.SetOnEditorActionListener(this);

				}
				catch (System.Exception ex)
				{
					var eee = ex;
				}

			}
			if (e.NewElement != null)
			{
				SetAccentColor();
				SetPlaceholder();
				SetIsPassword();
				SetTextColor();
				SetInactiveAccentColor();
				SetErrorColor();
				SetValidator();
				SetErrorText();
				SetFontFamily();
				SetFontSize();
			}
		}


		protected override void OnElementPropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
		{
			if (e.PropertyName == FTEControl.AccentColorProperty.PropertyName)
			{
				SetAccentColor();
			}
			else if (e.PropertyName == FTEControl.InactiveAccentColorProperty.PropertyName)
			{
				SetInactiveAccentColor();
			}
			else if (e.PropertyName == FTEControl.PlaceholderProperty.PropertyName)
			{
				SetPlaceholder();
			}
			else if (e.PropertyName == FTEControl.IsPasswordProperty.PropertyName)
			{
				SetIsPassword();
			}
			else if (e.PropertyName == FTEControl.TextProperty.PropertyName)
			{
				SetText();
			}
			else if (e.PropertyName == FTEControl.TextColorProperty.PropertyName)
			{
				SetTextColor();
			}
			else if (e.PropertyName == FTEControl.ErrorColorProperty.PropertyName)
			{
				SetErrorColor();
			}
			else if (e.PropertyName == FTEControl.ValidatorProperty.PropertyName)
			{
				SetValidator();
			}
			else if (e.PropertyName == FTEControl.ErrorTextProperty.PropertyName)
			{
				SetErrorText();
			}
			else if (e.PropertyName == FTEControl.FontFamilyProperty.PropertyName)
			{
				SetFontFamily();
			}
			else if (e.PropertyName == FTEControl.FontSizeProperty.PropertyName)
			{
				SetFontSize();
			}
			base.OnElementPropertyChanged(sender, e);
		}

		#region Set/Update Values

		void SetAccentColor()
		{
			//TODO: Check if can be done on Android without using theme colors
		}

		void SetInactiveAccentColor()
		{
			//TODO: Check if can be done on Android without using theme colors
		}

		void SetPlaceholder()
		{
			base.Control.Hint = base.Element.Placeholder;
		}

		void SetIsPassword()
		{
			if (base.Element.IsPassword)
			{
				targetEditor.InputType = InputTypes.ClassText | InputTypes.TextVariationPassword;
			}
			else
			{
				targetEditor.InputType = InputTypes.ClassText | InputTypes.DatetimeVariationDate;
			}
		}

		void SetText()
		{
			if (targetEditor.IsFocused)
				return;
			targetEditor.Text = base.Element.Text;
		}

		void SetTextColor()
		{
			targetEditor.SetTextColor(base.Element.TextColor.ToAndroid());
		}

		void SetErrorColor()
		{
			//TODO: Check if can be done on Android without using theme colors
			//base.Control.ErrorColor = base.Element.ErrorColor.ToUIColor ();
		}

		void SetValidator()
		{
			this.Validator = base.Element.Validator;
		}

		void SetErrorText()
		{
			this.ErrorMessage = base.Element.ErrorText;
		}


		void SetFontFamily()
		{
			if (!string.IsNullOrEmpty(base.Element.StyleId) && targetEditor != null)
			{
				var font = Typeface.CreateFromAsset(Forms.Context.ApplicationContext.Assets, base.Element.StyleId + ".ttf");
				targetEditor.Typeface = font;
			}
			else
			{
				var font = Typeface.Create(base.Element.FontFamily, TypefaceStyle.Normal);
				targetEditor.Typeface = font;
			}
		}

		void SetFontSize()
		{
			targetEditor.TextSize = (float)base.Element.FontSize;
		}

		#endregion

		private static IImageSourceHandler GetHandler(ImageSource source)
		{
			IImageSourceHandler returnValue = null;
			if (source is UriImageSource)
			{
				returnValue = new ImageLoaderSourceHandler();
			}
			else if (source is FileImageSource)
			{
				returnValue = new FileImageSourceHandler();
			}
			else if (source is StreamImageSource)
			{
				returnValue = new StreamImagesourceHandler();
			}
			return returnValue;
		}
	}
}
#endif
