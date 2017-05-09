﻿#if __ANDROID__
using System;
using Android.App;
using Android.Graphics;
using Android.Graphics.Drawables;
using Android.Renderscripts;
using Xamarin.Forms.CommonCore;
using Droid = Android;

[assembly: Xamarin.Forms.Dependency(typeof(BlurOverlay))]
namespace Xamarin.Forms.CommonCore
{
    public class BlurOverlay : IBlurOverlay
    {
        public static Dialog dialog;
        public void Show()
        {
            var obj = (Activity)Xamarin.Forms.Forms.Context;
            var root = obj.Window.DecorView.FindViewById(Droid.Resource.Id.Content);
            root.DrawingCacheEnabled = true;
            var b = Bitmap.CreateBitmap(root.GetDrawingCache(true));
            root.DrawingCacheEnabled = false;

            // Create another bitmap that will hold the results of the filter.
            Bitmap blurredBitmap;
            blurredBitmap = Bitmap.CreateBitmap(b);

            // Create the Renderscript instance that will do the work.
            RenderScript rs = RenderScript.Create(obj);

            // Allocate memory for Renderscript to work with
            Allocation input = Allocation.CreateFromBitmap(rs, b, Allocation.MipmapControl.MipmapFull, AllocationUsage.Script);
            Allocation output = Allocation.CreateTyped(rs, input.Type);

            // Load up an instance of the specific script that we want to use.


            ScriptIntrinsicBlur script = ScriptIntrinsicBlur.Create(rs, Droid.Renderscripts.Element.U8_4(rs));
            script.SetInput(input);

            // Set the blur radius
            script.SetRadius(25);

            // Start the ScriptIntrinisicBlur
            script.ForEach(output);

            // Copy the output to the blurred bitmap
            output.CopyTo(blurredBitmap);

            dialog = new Dialog(obj, Droid.Resource.Style.ThemeNoTitleBar);
            Drawable d = new BitmapDrawable(blurredBitmap);
            dialog.Window.SetBackgroundDrawable(d);
            dialog.Show();
        }
        public void Hide()
        {
            dialog?.Hide();
        }

    }
}
#endif
