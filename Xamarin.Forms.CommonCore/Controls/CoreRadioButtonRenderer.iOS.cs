#if __IOS__
using System;
using System.ComponentModel;
using System.Reflection;
using CoreGraphics;
using Foundation;
using UIKit;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms.Platform.iOS;

[assembly: ExportRenderer(typeof(CoreRadioButton), typeof(CoreRadioButtonRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class CoreRadioButtonRenderer : ViewRenderer<CoreRadioButton, RadioButtonView>
    {
        protected override void OnElementChanged(ElementChangedEventArgs<CoreRadioButton> e)
        {
            base.OnElementChanged(e);

            if (Control == null)
            {
                var checkBox = new RadioButtonView(Bounds);
                checkBox.TouchUpInside += (s, args) => Element.Checked = Control.Checked;

                SetNativeControl(checkBox);
            }

            if (e.NewElement != null)
            {
                Control.LineBreakMode = UILineBreakMode.CharacterWrap;
                Control.VerticalAlignment = UIControlContentVerticalAlignment.Top;
                Control.Text = e.NewElement.Text;
                Control.Checked = e.NewElement.Checked;
                Control.SetTitleColor(e.NewElement.TextColor.ToUIColor(), UIControlState.Normal);
                Control.SetTitleColor(e.NewElement.TextColor.ToUIColor(), UIControlState.Selected);
            }
        }

        private void ResizeText()
        {

            var text = this.Element.Text;

            var bounds = this.Control.Bounds;

            var width = this.Control.TitleLabel.Bounds.Width;

            var height = text.StringHeight(this.Control.Font, width);

            var minHeight = string.Empty.StringHeight(this.Control.Font, width);

            var requiredLines = Math.Round(height / minHeight, MidpointRounding.AwayFromZero);

            var supportedLines = Math.Round(bounds.Height / minHeight, MidpointRounding.ToEven);

            if (!supportedLines.Equals(requiredLines))
            {
                bounds.Height += (float)(minHeight * (requiredLines - supportedLines));
                this.Control.Bounds = bounds;
                this.Element.HeightRequest = bounds.Height;
            }
        }

        public override void Draw(CGRect rect)
        {
            base.Draw(rect);
            this.ResizeText();
        }



        protected override void OnElementPropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            base.OnElementPropertyChanged(sender, e);

            switch (e.PropertyName)
            {
                case "Checked":
                    Control.Checked = Element.Checked;
                    break;
                case "Text":
                    Control.Text = Element.Text;
                    break;
                case "TextColor":
                    Control.SetTitleColor(Element.TextColor.ToUIColor(), UIControlState.Normal);
                    Control.SetTitleColor(Element.TextColor.ToUIColor(), UIControlState.Selected);
                    break;

                case "Element":
                    break;
                default:
                    System.Diagnostics.Debug.WriteLine("Property change for {0} has not been implemented.", e.PropertyName);

					if (Element.SelectedImage != null && Element.UnSelectedImage != null
                        && Control.SelectedImage == null && Control.UnSelectedImage == null)
					{
						Control.SelectedImage = Element.SelectedImage;
                        Control.UnSelectedImage = Element.UnSelectedImage;
						Control.ApplyStyle();
					}

                    return;
            }
        }
    }


    [Register("RadioButtonView")]
    public class RadioButtonView : UIButton
    {
        public string UnSelectedImage { get; set; }

        public string SelectedImage { get; set; }

        public RadioButtonView()
        {
            Initialize();
        }

        public RadioButtonView(CGRect bounds)
            : base(bounds)
        {
            Initialize();
        }


        public bool Checked
        {
            set { this.Selected = value; }
            get { return this.Selected; }
        }

        public string Text
        {
            set { this.SetTitle(value, UIControlState.Normal); }

        }

        void Initialize()
        {
            this.AdjustEdgeInsets();
            this.ApplyStyle();

            this.TouchUpInside += (sender, args) => this.Selected = !this.Selected;
        }

        void AdjustEdgeInsets()
        {
            const float inset = 8f;

            this.HorizontalAlignment = UIControlContentHorizontalAlignment.Left;
            this.ImageEdgeInsets = new UIEdgeInsets(0f, inset, 0f, 0f);
            this.TitleEdgeInsets = new UIEdgeInsets(0f, inset * 2, 0f, 0f);
        }

        public void ApplyStyle()
        {
            if(SelectedImage!=null && UnSelectedImage!=null)
            {
				this.SetImage(UIImage.FromBundle(this.SelectedImage), UIControlState.Selected);
				this.SetImage(UIImage.FromBundle(this.UnSelectedImage), UIControlState.Normal);
            }

        }
    }
}
#endif