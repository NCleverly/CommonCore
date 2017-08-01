using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using Xamarin.Forms;
using System.Linq;
using System.Collections.ObjectModel;
using System.Collections;
using System.Threading;
using System.ComponentModel;
using System.Reflection;
using System.Text.RegularExpressions;

#if __ANDROID__
using Xamarin.Forms.Platform.Android;
using Android.Util;
using Android.Views.InputMethods;
using Views = Android.Views;
#endif
#if __IOS__
using Foundation;
using AudioToolbox;
using UIKit;
using CoreGraphics;
#endif

namespace Xamarin.Forms.CommonCore
{
    public static class CoreExtensions
    {
		public static T ConvertTo<T>(this StringResponse str) where T : struct
		{
			object result = null;
			var code = Type.GetTypeCode(typeof(T));
			switch (code)
			{
				case TypeCode.Int32:
					result = JsonConvert.DeserializeObject<int>(str.Response);
					break;
				case TypeCode.Int16:
					result = JsonConvert.DeserializeObject<short>(str.Response);
					break;
				case TypeCode.Int64:
					result = JsonConvert.DeserializeObject<long>(str.Response);
					break;
				case TypeCode.String:
					result = JsonConvert.DeserializeObject<string>(str.Response);
					break;
				case TypeCode.Boolean:
					result = JsonConvert.DeserializeObject<bool>(str.Response);
					break;
				case TypeCode.Double:
					result = JsonConvert.DeserializeObject<double>(str.Response);
					break;
				case TypeCode.Decimal:
					result = JsonConvert.DeserializeObject<decimal>(str.Response);
					break;
				case TypeCode.Byte:
					result = JsonConvert.DeserializeObject<Byte>(str.Response);
					break;
				case TypeCode.DateTime:
					result = JsonConvert.DeserializeObject<DateTime>(str.Response);
					break;
				case TypeCode.Single:
					result = JsonConvert.DeserializeObject<Single>(str.Response);
					break;
			}
			return (T)result;
		}

        public static string GetString(this PropertyInfo prop, object obj)
        {
            return (string)prop.GetValue(obj, null);
        }

        /// <summary>
        /// Encrypteds the data model properties.
        /// </summary>
        /// <param name="obj">Object.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void EncryptedDataModelProperties<T>(this T obj) where T : ISqlDataModel
        {
            var n = typeof(T).FullName;
            var table = CoreSettings.Config.SqliteSettings.TableNames.FirstOrDefault(x => x.Name == n && (x.EncryptedProperties != null && x.EncryptedProperties.Length > 0));
            if (table != null)
            {
                var service = InjectionManager.GetService<IEncryptionService, EncryptionService>(true);
                foreach (var prop in typeof(T).GetProperties())
                {
                    if (table.EncryptedProperties.Contains(prop.Name))
                    {
                        prop.SetValue(obj, service.AesEncrypt(prop.GetString(obj), CoreSettings.Config.AESEncryptionKey), null);
                    }
                }
            }
        }

        /// <summary>
        /// Encrypteds the data model properties.
        /// </summary>
        /// <param name="list">List.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void EncryptedDataModelProperties<T>(this IEnumerable<T> list) where T : ISqlDataModel
        {
            var n = typeof(T).FullName;
            var table = CoreSettings.Config.SqliteSettings.TableNames.FirstOrDefault(x => x.Name == n && (x.EncryptedProperties != null && x.EncryptedProperties.Length > 0));
            if (table != null)
            {
                var service = InjectionManager.GetService<IEncryptionService, EncryptionService>(true);
                foreach (var prop in typeof(T).GetProperties())
                {
                    if (table.EncryptedProperties.Contains(prop.Name))
                    {
                        foreach (var obj in list)
                        {
                            prop.SetValue(obj, service.AesEncrypt(prop.GetString(obj), CoreSettings.Config.AESEncryptionKey), null);
                        }
                    }
                }
            }
        }
        /// <summary>
        /// Uns the encrypted data model properties.
        /// </summary>
        /// <param name="obj">Object.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void UnEncryptedDataModelProperties<T>(this object obj) where T : ISqlDataModel
        {
            var n = typeof(T).FullName;
            var table = CoreSettings.Config.SqliteSettings.TableNames.FirstOrDefault(x => x.Name == n && (x.EncryptedProperties != null && x.EncryptedProperties.Length > 0));
            if (table != null)
            {
                var service = InjectionManager.GetService<IEncryptionService, EncryptionService>(true);
                foreach (var prop in typeof(T).GetProperties())
                {
                    if (table.EncryptedProperties.Contains(prop.Name))
                    {
                        prop.SetValue(obj, service.AesDecrypt(prop.GetString(obj), CoreSettings.Config.AESEncryptionKey), null);
                    }
                }
            }
        }
        /// <summary>
        /// Uns the encrypted data model properties.
        /// </summary>
        /// <param name="list">List.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void UnEncryptedDataModelProperties<T>(this IEnumerable<T> list) where T : ISqlDataModel
        {
            var n = typeof(T).FullName;
            var table = CoreSettings.Config.SqliteSettings.TableNames.FirstOrDefault(x => x.Name == n && (x.EncryptedProperties != null && x.EncryptedProperties.Length > 0));
            if (table != null)
            {
                var service = InjectionManager.GetService<IEncryptionService, EncryptionService>(true);
                foreach (var prop in typeof(T).GetProperties())
                {
                    if (table.EncryptedProperties.Contains(prop.Name))
                    {
                        foreach (var obj in list)
                        {
                            prop.SetValue(obj, service.AesDecrypt(prop.GetString(obj), CoreSettings.Config.AESEncryptionKey), null);
                        }
                    }
                }
            }
        }
        /// <summary>
        /// Sets the automation identifiers.
        /// </summary>
        /// <param name="page">Page.</param>
        public static void SetAutomationIds(this ContentPage page)
        {
            var bindingFlags = BindingFlags.Instance | BindingFlags.NonPublic | BindingFlags.Public;
            var fields = page.GetType().GetFields(bindingFlags);
            foreach (var field in fields)
            {
                try
                {
                    var fObj = field.GetValue(page);
                    if (fObj != null && fObj is View)
                    {
                        var ctrl = (View)fObj;
                        if (string.IsNullOrEmpty(ctrl.AutomationId))
                            ctrl.AutomationId = field.Name;
                    }
                }
                catch { }//suppress error

            }
            var props = page.GetType().GetProperties(bindingFlags);
            foreach (var prop in props)
            {
                try
                {
                    var pObj = prop.GetValue(page);
                    if (pObj != null && pObj is View)
                    {
                        var ctrl = (View)pObj;
                        if (string.IsNullOrEmpty(ctrl.AutomationId))
                            ctrl.AutomationId = prop.Name;

                    }
                }
                catch { }//suppress error

            }
        }
        /// <summary>
        /// Display error during debug to console with optional image marker
        /// </summary>
        /// <param name="ex">Ex.</param>
        /// <param name="includeImageMarker">If set to <c>true</c> include image marker.</param>
        public static void ConsoleWrite(this Exception ex, bool includeImageMarker = false)
        {
#if DEBUG
            Console.WriteLine();
            Console.WriteLine();
            if (includeImageMarker)
                DrawMonkey();
            Console.WriteLine("*-*-*-*-*-*-*-*-*-*-*-*- " + ex.GetType().Name + " DEBUG EXCEPTION *-*-*-*-*-*-*-*-*-*-*-*-*-");
            Console.WriteLine(ex.Message);
            Console.WriteLine(ex.InnerException?.InnerException);
            Console.WriteLine(ex.StackTrace);
            Console.WriteLine("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-");
            Console.WriteLine();
            Console.WriteLine();
#endif
        }

        /// <summary>
        /// Display text during debug to console with optional image marker
        /// </summary>
        /// <param name="str">String.</param>
        /// <param name="title">Title.</param>
        /// <param name="includeImageMarker">If set to <c>true</c> include image marker.</param>
        public static void ConsoleWrite(this string str, string title, bool includeImageMarker = false)
        {
#if DEBUG
            if (includeImageMarker)
                DrawMonkey();
            Console.WriteLine($"*-*-*-*-*-*-*-*-*-*-*-*- {title} *-*-*-*-*-*-*-*-*-*-*-*-*-");
            Console.WriteLine(str);
            Console.WriteLine("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-");
#endif
        }

        private static void DrawMonkey()
        {
            Console.WriteLine("         .-\"-.");
            Console.WriteLine("       _/.-.-.\\_");
            Console.WriteLine("      ( ( o o ) )");
            Console.WriteLine("       |/  \"  \\|");
            Console.WriteLine("        \\ .-. /");
            Console.WriteLine("        /`\"\"\"'\\");
            Console.WriteLine("       /       \\");
        }

        /// <summary>
        /// Task extension to add a timeout.
        /// </summary>
        /// <returns>The timeout.</returns>
        /// <param name="task">Task.</param>
        /// <param name="duration">Duration.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public async static Task<T> WithTimeout<T>(this Task<T> task, int duration)
        {
            var retTask = await Task.WhenAny(task, Task.Delay(duration))
                .ConfigureAwait(false);

            if (retTask is Task<T>)
                return task.Result;

            return default(T);
        }

        /// <summary>
        /// Extension method that executes ContinueWith in shorthand form
        /// </summary>
        /// <param name="task">Task.</param>
        public static void ContinueOn(this Task task)
        {
            task.ContinueWith((t) => { });
        }

        public static void Execute(this SynchronizationContext ctx, Action action)
        {
            ctx.Post((x) =>
            {
                Device.BeginInvokeOnMainThread(() =>
                {
                    action?.Invoke();
                });

            }, null);
        }

        /// <summary>
        /// Returns index of an object in the array.
        /// </summary>
        /// <returns>The of.</returns>
        /// <param name="array">Array.</param>
        /// <param name="obj">Object.</param>
        public static int IndexOf(this object[] array, object obj)
        {
            var idx = -1;
            for (int x = 0; x < array.Length; x++)
            {
                if (array[x] == obj)
                {
                    idx = x;
                    break;
                }
            }
            return idx;
        }

        /// <summary>
        /// First or Default on a async (promised) collection
        /// </summary>
        /// <returns>The or default.</returns>
        /// <param name="taskCollection">Task collection.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static async Task<T> FirstOrDefault<T>(this Task<List<T>> taskCollection)
        {
            var result = await taskCollection;
            return result.FirstOrDefault();
        }
        /// <summary>
        /// First or Default on a async (promised) collection in a GenericResponse object
        /// </summary>
        /// <returns>The or default.</returns>
        /// <param name="taskCollection">Task collection.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static async Task<T> FirstOrDefault<T>(this Task<GenericResponse<List<T>>> taskCollection)
        {
            var result = await taskCollection;
            if (result.Success)
                return result.Response.FirstOrDefault();
            else
                return default(T);
        }
		/// <summary>
		/// Converts List to ObservableCollection
		/// </summary>
		/// <returns>The observable.</returns>
		/// <param name="taskList">List.</param>
		/// <typeparam name="T">The 1st type parameter.</typeparam>
		public static async Task<ObservableCollection<T>> ToObservable<T>(this Task<List<T>> taskList)
        {
            var result = await taskList;
            var collection = new ObservableCollection<T>();
            result?.ForEach((item) => collection.Add(item));
            return collection;
        }

		public static ObservableCollection<T> ToObservable<T>(this IList list)
		{
			var collection = new ObservableCollection<T>();
            for (var x = 0; x < list.Count;x++)
            {
                collection.Add((T)list[x]);
            }
			return collection;
		}

		public static ObservableCollection<T> ToObservable<T>(this List<T> list)
		{
			var collection = new ObservableCollection<T>();
			list?.ForEach((item) => collection.Add(item));
			return collection;
		}

		/// <summary>
		/// Converts IQueryable to ObservableCollection
		/// </summary>
		/// <returns>The observable.</returns>
		/// <param name="query">Query.</param>
		/// <typeparam name="T">The 1st type parameter.</typeparam>
		public static ObservableCollection<T> ToObservable<T>(this IQueryable<T> query)
        {
            var collection = new ObservableCollection<T>();
            foreach(var item in query.AsEnumerable<T>())
            {
                collection.Add(item);
            }
			return collection;
        }

        /// <summary>
        /// Converts Array to ObservableCollection
        /// </summary>
        /// <returns>The observable.</returns>
        /// <param name="array">Array.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static ObservableCollection<T> ToObservable<T>(this T[] array)
        {
            var collection = new ObservableCollection<T>();
            for (int x = 0; x < array.Length; x++)
                collection.Add(array[x]);
            return collection;
        }
        /// <summary>
        /// Removes the animations from page.
        /// </summary>
        /// <param name="page">Page.</param>
        public static void RemoveAnimations(this ContentPage page)
        {
            if (page.Content is Layout<View>)
            {
                var layout = (Layout<View>)page.Content;
                RemoveAnimations(layout);
            }
        }
        /// <summary>
        /// Removes the animations from Layout<View>.
        /// </summary>
        /// <param name="layout">Layout.</param>
		public static void RemoveAnimations(this Layout<View> layout)
        {
            foreach (var element in layout.Children)
            {
                if (element is Layout<View>)
                {
                    RemoveAnimations((Layout<View>)element);
                }
                else
                {
                    try
                    {
                        ViewExtensions.CancelAnimations(element);
                    }
                    catch { }
                }
            }
        }

        /// <summary>
        /// Disables all controls in the layout view
        /// </summary>
        /// <param name="layout">Layout.</param>
        public static void DisableChildren(this Layout<View> layout)
        {
            foreach (var element in layout.Children)
            {
                if (element is Layout<View>)
                {
                    DisableChildren((Layout<View>)element);
                }
                else
                {
                    element.IsEnabled = false;
                }
            }
        }
        /// <summary>
        /// Enables all controls in the layout view
        /// </summary>
        /// <param name="layout">Layout.</param>
        public static void EnableChildren(this Layout<View> layout)
        {
            foreach (var element in layout.Children)
            {
                if (element is Layout<View>)
                {
                    EnableChildren((Layout<View>)element);
                }
                else
                {
                    element.IsEnabled = true;
                }
            }
        }
        /// <summary>
        /// Add Span with Text to Formatted String Instance at the same time
        /// </summary>
        /// <param name="formattedString">Formatted string.</param>
        /// <param name="text">Text.</param>
        public static void AddTextSpan(this FormattedString formattedString, string text)
        {
            formattedString.Spans.Add(new Span() { Text = text });
        }
        /// <summary>
        /// Convert Byte Array to Dictionary
        /// </summary>
        /// <returns>The dictionary.</returns>
        /// <param name="array">Array.</param>
        public static List<IDictionary<string, object>> ToDictionary(this byte[] array)
        {
            var json = Encoding.Default.GetString(array);
            return JsonConvert.DeserializeObject<List<IDictionary<string, object>>>(json);
        }

        /// <summary>
        /// Turn entity type into a dictionary
        /// </summary>
        /// <returns>The dictionary.</returns>
        /// <param name="obj">Object.</param>
        public static Dictionary<string,object> ToDictionary(this object obj)
        {
            //var dict = new Dictionary<string, object>();
            //foreach(var prop in obj.GetType().GetProperties())
            //{
            //    dict.Add(prop.Name, prop.GetValue(obj, null));
            //}
            //return dict;

            var str = JsonConvert.SerializeObject(obj);
            return JsonConvert.DeserializeObject<Dictionary<string, object>>(str);
        }
        /// <summary>
        /// Cleans the phone number of all non-numeric characters
        /// </summary>
        /// <returns>The phone number.</returns>
        /// <param name="phoneNum">Phone number.</param>
        public static string ToNumericString(this string phoneNum)
        {
            return new Regex("[^0-9]").Replace(phoneNum, "");
        }


        /// <summary>
        /// Navigate back in the stack to a specific page while remove pages along the way
        /// </summary>
        /// <returns>The to.</returns>
        /// <param name="nav">Nav.</param>
        /// <param name="pageName">Page name.</param>
        public static async Task<Page> PopTo<T>(this INavigation nav, bool animated = false) where T : ContentPage, new()
        {
            var pageName = typeof(T).Name;

            if (nav.NavigationStack.Any(x => x.GetType().Name == pageName) && nav.NavigationStack.Count > 1)
            {
                if (nav.NavigationStack.Last().GetType().Name == pageName)
                    return null;

                if (Device.RuntimePlatform.ToUpper() == "IOS")
                {
                    for (int x = (nav.NavigationStack.Count - 2); x > -1; x--)
                    {
                        var page = nav.NavigationStack[x];
                        var name = page.GetType().Name;
                        if (name == pageName)
                        {
                            return await nav.PopAsync(animated);
                        }
                        else
                        {
                            nav.RemovePage(page);
                        }
                    }
                }
                else
                {
                    /*
                     * 
                     * THIS IS A HACK JOB THAT NEEDS TO BE REVISITED
                     * 
                     */

                    //This is a workaround for API 25 in Droid but this may have issues as well
					while(nav.NavigationStack.Last().GetType().Name!=pageName)
					{
                        await nav.PopAsync(false); 
					}
				}


            }
            return null;

        }



        /// <summary>
        /// Cast IEnumerable to IList
        /// </summary>
        /// <returns>The list.</returns>
        /// <param name="enumerable">Enumerable.</param>
        public static IList ToList(this IEnumerable enumerable)
        {
            return (IList)enumerable;
        }
        /// <summary>
        /// Return object at a given index in a collection
        /// </summary>
        /// <returns>The <see cref="T:System.Object"/>.</returns>
        /// <param name="enumerable">Enumerable.</param>
        /// <param name="index">Index.</param>
        public static object ObjectAt(this IEnumerable enumerable, int index)
        {
            if (index < 0)
                return null;

            var list = (IList)enumerable;
            if (list.Count > index && index < (list.Count + 1))
            {
                return list[index];
            }
            else
            {
                return null;
            }
        }
        public static int IndexOf(this IEnumerable self, object obj)
        {
            int index = -1;

            var enumerator = self.GetEnumerator();
            enumerator.Reset();
            int i = 0;
            while (enumerator.MoveNext())
            {
                if (enumerator.Current == obj)
                {
                    index = i;
                    break;
                }

                i++;
            }

            return index;
        }
        /// <summary>
        /// Adds the child to a grid.
        /// </summary>
        /// <param name="grid">Grid.</param>
        /// <param name="view">View.</param>
        /// <param name="row">Row.</param>
        /// <param name="column">Column.</param>
        /// <param name="rowspan">Rowspan.</param>
        /// <param name="columnspan">Columnspan.</param>
        public static void AddChild(this Grid grid, View view, int row, int column, int rowspan = 1, int columnspan = 1)
        {
            if (row < 0)
                throw new ArgumentOutOfRangeException("row");
            if (column < 0)
                throw new ArgumentOutOfRangeException("column");
            if (rowspan <= 0)
                throw new ArgumentOutOfRangeException("rowspan");
            if (columnspan <= 0)
                throw new ArgumentOutOfRangeException("columnspan");
            if (view == null)
                throw new ArgumentNullException("view");

            Grid.SetRow((BindableObject)view, row);
            Grid.SetRowSpan((BindableObject)view, rowspan);
            Grid.SetColumn((BindableObject)view, column);
            Grid.SetColumnSpan((BindableObject)view, columnspan);

            grid.Children.Add(view);
        }
        public static string CalendarTitle(this DateTime date)
        {
            var monthName = date.ToString("MMMM");
            return $"{monthName} {date.Year}";
        }


#if __IOS__
        /// <summary>
        /// Tos the local notification.
        /// </summary>
        /// <returns>The local notification.</returns>
        /// <param name="userInfo">User info.</param>
        public static LocalNotification ToLocalNotification(this NSDictionary userInfo)
        {
            var notification = new LocalNotification();
            if (null != userInfo && userInfo.ContainsKey(new NSString("aps")))
            {
                NSDictionary aps = userInfo.ObjectForKey(new NSString("aps")) as NSDictionary;
                NSDictionary alert = null;
                if (aps.ContainsKey(new NSString("alert")))
                    alert = aps.ObjectForKey(new NSString("alert")) as NSDictionary;
                if (alert != null)
                {
                    notification.Title = (alert[new NSString("title")] as NSString).ToString();
                    notification.SubTitle = (alert[new NSString("subtitle")] as NSString).ToString();
                    notification.Message = (alert[new NSString("body")] as NSString).ToString();
                    if (aps.ContainsKey(new NSString("badge")))
                    {
                        var cnt = (alert[new NSString("badge")] as NSString).ToString();
                        notification.Badge = int.Parse(cnt);
                    }
                }
            }
            return notification;
        }
        /// <summary>
        /// Changes the color of the image.
        /// </summary>
        /// <returns>The image color.</returns>
        /// <param name="image">Image.</param>
        /// <param name="color">Color.</param>
        public static UIImage ChangeImageColor(this UIImage image, UIColor color)
        {
            var rect = new CGRect(0, 0, image.Size.Width, image.Size.Height);
            UIGraphics.BeginImageContext(rect.Size);
            var ctx = UIGraphics.GetCurrentContext();
            ctx.ClipToMask(rect, image.CGImage);
            ctx.SetFillColor(color.CGColor);
            ctx.FillRect(rect);
            var img = UIGraphics.GetImageFromCurrentImageContext();
            UIGraphics.EndImageContext();
            return UIImage.FromImage(img.CGImage, 1.0f, UIImageOrientation.DownMirrored);
        }
        /// <summary>
        /// Resize the specified imgView and size.
        /// </summary>
        /// <returns>The resize.</returns>
        /// <param name="imgView">Image view.</param>
        /// <param name="size">Size.</param>
        public static void Resize(this UIImageView imgView, nfloat size)
        {
            var newSize = new CGSize(size, size);
            UIGraphics.BeginImageContextWithOptions(newSize, false, UIScreen.MainScreen.Scale);
            imgView.Image.Draw(new CGRect(0, 0, newSize.Width, newSize.Height));
            imgView.Image = UIGraphics.GetImageFromCurrentImageContext();
            imgView.ContentMode = UIViewContentMode.ScaleAspectFit;
        }
        /// <summary>
        /// Gets the value from description.
        /// </summary>
        /// <returns>The value from description.</returns>
        /// <param name="value">Value.</param>
        public static UIReturnKeyType GetValueFromDescription(this ReturnKeyTypes value)
        {
            var type = typeof(UIReturnKeyType);
            if (!type.IsEnum) throw new InvalidOperationException();
            foreach (var field in type.GetFields())
            {
                var attribute = Attribute.GetCustomAttribute(field,
                    typeof(DescriptionAttribute)) as DescriptionAttribute;
                if (attribute != null)
                {
                    if (attribute.Description == value.ToString())
                        return (UIReturnKeyType)field.GetValue(null);
                }
                else
                {
                    if (field.Name == value.ToString())
                        return (UIReturnKeyType)field.GetValue(null);
                }
            }
            throw new NotSupportedException($"Not supported on iOS: {value}");
        }
#endif

#if __ANDROID__
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
        public static float ToDevicePixels(this float number)
        {
            var displayMetrics = Xamarin.Forms.Forms.Context.Resources.DisplayMetrics;
            return (float)System.Math.Round(number * (displayMetrics.Xdpi / (float)DisplayMetrics.DensityDefault));
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
#endif

    }
}

