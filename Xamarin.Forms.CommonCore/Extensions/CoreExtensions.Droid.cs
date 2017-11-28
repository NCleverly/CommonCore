#if __ANDROID__
using Xamarin.Forms.Platform.Android;
using Android.Util;
using Android.Views.InputMethods;
using Views = Android.Views;
using StrictMode = Android.OS.StrictMode;
using Util = Android.Util;
using System;
using System.ComponentModel;
using System.Reflection;
using Android.Content;
using Plugin.CurrentActivity;

namespace Xamarin.Forms.CommonCore
{
    public static partial class CoreExtensions
    {
        private static readonly Type _platformType = Type.GetType("Xamarin.Forms.Platform.Android.Platform, Xamarin.Forms.Platform.Android", true);
        private static BindableProperty _rendererProperty;

        public static BindableProperty RendererProperty
        {
            get
            {
                _rendererProperty = (BindableProperty)_platformType.GetField("RendererProperty", BindingFlags.Public | BindingFlags.NonPublic | BindingFlags.Static)
                    .GetValue(null);

                return _rendererProperty;
            }
        }

        public static IVisualElementRenderer GetRenderer(this BindableObject bindableObject)
        {
            var value = bindableObject.GetValue(RendererProperty);
            return (IVisualElementRenderer)bindableObject.GetValue(RendererProperty);
        }

        public static Views.View GetNativeView(this BindableObject bindableObject)
        {
            var renderer = bindableObject.GetRenderer();
            var viewGroup = renderer.ViewGroup;
            return viewGroup;
        }
        public static ImeAction GetValueFromDescription(this ReturnKeyTypes value)
        {
            var type = typeof(ImeAction);
            if (!type.IsEnum) throw new InvalidOperationException();
            foreach (var field in type.GetFields())
            {
                var attribute = Attribute.GetCustomAttribute(field,
                    typeof(DescriptionAttribute)) as DescriptionAttribute;
                if (attribute != null)
                {
                    if (attribute.Description == value.ToString())
                        return (ImeAction)field.GetValue(null);
                }
                else
                {
                    if (field.Name == value.ToString())
                        return (ImeAction)field.GetValue(null);
                }
            }
            throw new NotSupportedException($"Not supported on Android: {value}");
        }
        public static Context Ctx
        {
            get => CrossCurrentActivity.Current.Activity;
        }
        public static float ToDevicePixels(this float number)
        {
            var displayMetrics = Ctx.Resources.DisplayMetrics;
           
            return (float)System.Math.Round(number * (displayMetrics.Xdpi / (float)Util.DisplayMetricsDensity.Default));
        }
        public static object Call(this object o, string methodName, params object[] args)
        {
            var mi = o.GetType().GetMethod(methodName, System.Reflection.BindingFlags.NonPublic | System.Reflection.BindingFlags.Instance);
            if (mi != null)
            {
                return mi.Invoke(o, args);
            }
            return null;
        }
        public static IImageSourceHandler GetHandler(this ImageSource source)
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

        public static void EnableStrictMode(this FormsAppCompatActivity activity)
        {
#if DEBUG
            var builder = new StrictMode.VmPolicy.Builder();
            var policy = builder.DetectActivityLeaks().PenaltyLog().Build();
            StrictMode.SetVmPolicy(policy);
#endif
        }
    }
}
#endif
