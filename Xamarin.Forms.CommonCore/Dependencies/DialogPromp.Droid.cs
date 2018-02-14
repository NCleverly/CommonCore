#if __ANDROID__
using System;
using Android.App;
using Android.Widget;
using Xamarin.Forms.CommonCore;
using Xamarin.Forms;
using Android.Content;
using Plugin.CurrentActivity;

[assembly: Xamarin.Forms.Dependency(typeof(DialogPrompt))]
namespace Xamarin.Forms.CommonCore
{
    public class DialogPrompt : IDialogPrompt
    {
        public Context Ctx
        {
            get => CrossCurrentActivity.Current.Activity;
        }

        public void ShowMessage(Prompt prompt)
        {
            if (prompt.Callback == null)
            {
                ShowMessage(prompt.Title, prompt.Message);
            }
            else
            {
                if (prompt.ButtonTitles == null)
                {
                    ShowMessage(
                        prompt.Title,
                        prompt.Message,
                        new string[] { "OK" },
                        prompt.Callback);
                }
                else
                {
                    ShowMessage(
                         prompt.Title,
                         prompt.Message,
                         prompt.ButtonTitles,
                         prompt.Callback);
                }
            }
        }

        private void ShowMessage(string title, string message)
        {
            try
            {
                var dlg = new AlertDialog.Builder(Ctx).Create();
                dlg.SetTitle(title);
                dlg.SetMessage(message);
                dlg.SetCancelable(false);
                dlg.SetButton("Okay", (cs, ce) =>
                {

                });
                dlg.Show();

            }
            catch (System.Exception ex)
            {
#if DEBUG
                Console.WriteLine(ex.Message);
#endif
            }
        }

        private void ShowMessage(string title, string message, string[] buttonTitles, Action<bool> callBack)
        {
            try
            {
                var d = new AlertDialog.Builder(Ctx).Create();
                d.SetTitle(title);
                d.SetMessage(message);
                d.SetButton((int)DialogButtonType.Positive,buttonTitles[0],(sender, e) => {
                    callBack?.Invoke(true);
                });
                if (buttonTitles.Length > 1)
                {
                    d.SetButton((int)DialogButtonType.Negative, buttonTitles[1], (sender, e) => {
                        callBack?.Invoke(false);
                    });
                }
                d.Show();

            }
            catch (System.Exception ex)
            {
#if DEBUG
                Console.WriteLine(ex.Message);
#endif
            }
        }

        private void ShowMessage(string title, string message, string[] buttonTitles, Action<int> callBack)
        {
            try
            {
                var d = new AlertDialog.Builder(Ctx).Create();

                d.SetTitle(title);
                d.SetMessage(message);
                if (buttonTitles.Length > 2)
                {
                    d.SetButton(buttonTitles[0], (e, a) =>
                    {
                        callBack?.Invoke(0);
                    });
                    d.SetButton2(buttonTitles[1], (e, a) =>
                    {
                        callBack?.Invoke(1);
                    });
                    d.SetButton3(buttonTitles[2], (e, a) =>
                    {
                        callBack?.Invoke(2);
                    });


                }
                else
                {
                    d.SetButton(buttonTitles[0], (e, a) =>
                    {
                        callBack?.Invoke(0);
                    });
                    d.SetButton2(buttonTitles[1], (e, a) =>
                    {
                        callBack?.Invoke(1);
                    });
                }

                d.Show();

            }
            catch (System.Exception ex)
            {
#if DEBUG
                Console.WriteLine(ex.Message);
#endif
            }
        }

        public void ShowActionSheet(string title, string subTitle, string[] list, Action<int> callBack)
        {
            var dlg = new AlertDialog.Builder(Ctx);
            dlg.SetTitle(title);
            dlg.SetSingleChoiceItems(list, -1, (s, a) =>
            {

                var index = list.IndexOf(list[a.Which]);
                callBack?.Invoke(index);
                ((AlertDialog)s).Dismiss();

            });
            dlg.SetPositiveButton("Cancel", (s, a) =>
            {

            });

            var dialog = dlg.Show();

        }

        public void ShowToast(string message)
        {
            Toast.MakeText(Ctx, message, ToastLength.Long).Show();
        }
    }
}
#endif
