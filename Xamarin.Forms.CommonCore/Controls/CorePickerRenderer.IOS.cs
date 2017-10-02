#if __IOS__
using System;
using CoreAnimation;
using CoreGraphics;
using System.Linq;
using UIKit;
using Xamarin.Forms;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms.Platform.iOS;

[assembly: ExportRenderer(typeof(CorePicker), typeof(CorePickerRenderer))]
namespace Xamarin.Forms.CommonCore
{
    public class CorePickerRenderer : PickerRenderer
    {
        private CALayer bottomBorder;
        private CGColor controlColor;
        private CorePicker element;
        private UIPickerView pickerView;

        protected override void OnElementChanged(ElementChangedEventArgs<Picker> e)
        {
            base.OnElementChanged(e);
            if (e.NewElement != null && Control != null)
            {
                element = (CorePicker)e.NewElement;
                element.Focused += FocusChangedEvent;
                controlColor = element.EntryColor.ToCGColor();
                if (element.IsEntryUnderline)
                {
                    Control.BorderStyle = UITextBorderStyle.None;
                }
                pickerView = (UIPickerView)Control.InputView;
         
            }
        }
        private void FocusChangedEvent(object sender, FocusEventArgs args){
            if(args.IsFocused && !string.IsNullOrEmpty(element.EmptyDataMessage))
            {
     
                var cnt = element.Items.Count();
                if (cnt == 0)
                {
                    pickerView.Hidden = true;
                    DependencyService.Get<IDialogPrompt>().ShowMessage(new Prompt()
                    {
                        Title = "Warning",
                        Message = element.EmptyDataMessage
                    });
                }
            }
        }
        protected override void OnElementPropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            if (element.IsEntryUnderline)
            {
                if (e.PropertyName == "Width")
                {
                    var width = ((CorePicker)sender).Width;
                    var height = ((CorePicker)sender).Height;
                    bottomBorder?.RemoveFromSuperLayer();
                    if (width > 0 && height > 0)
                        CreateUnderline((nfloat)height, (nfloat)width);
                }
                if (e.PropertyName == "Height")
                {
                    var width = ((CorePicker)sender).Width;
                    var height = ((CorePicker)sender).Height;
                    bottomBorder?.RemoveFromSuperLayer();
                    if (width > 0 && height > 0)
                        CreateUnderline((nfloat)height, (nfloat)width);
                }
            }

            base.OnElementPropertyChanged(sender, e);

        }
        private void CreateUnderline(nfloat height, nfloat width)
        {

            bottomBorder = new CALayer();
            bottomBorder.Frame = new CoreGraphics.CGRect(0, height - 1, width, 1);
            bottomBorder.BackgroundColor = controlColor;
            Control.Layer.AddSublayer(bottomBorder);

        }
    }
}
#endif
