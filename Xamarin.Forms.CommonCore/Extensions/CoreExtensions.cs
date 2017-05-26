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

#if __ANDROID__
using Xamarin.Forms.Platform.Android;
using Android.Util;
#endif
#if __IOS__
using Foundation;
#endif

namespace Xamarin.Forms.CommonCore
{
    public static class CoreExtensions
    {
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
		public static void ConsoleWrite(this string str,string title, bool includeImageMarker = false)
        {
#if DEBUG
			if (includeImageMarker)
				DrawMonkey();
            Console.WriteLine($"*-*-*-*-*-*-*-*-*-*-*-*- {title} *-*-*-*-*-*-*-*-*-*-*-*-*-");
            Console.WriteLine(str);
            Console.WriteLine("*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-");
#endif
		}

        private static void DrawMonkey(){
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
		/// <param name="list">List.</param>
		/// <typeparam name="T">The 1st type parameter.</typeparam>
		public static ObservableCollection<T> ToObservable<T>(this List<T> list)
        {
            var collection = new ObservableCollection<T>();
            list?.ForEach((item) => collection.Add(item));
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
        public static void AddTextSpan(this FormattedString formattedString, string text){
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
        /// Cleans the phone number of all non-numeric characters
        /// </summary>
        /// <returns>The phone number.</returns>
        /// <param name="phoneNum">Phone number.</param>
        public static string CleanPhoneNumber(this string phoneNum)
        {
            return phoneNum.Replace(" ", string.Empty).Replace("(", string.Empty).Replace(")", string.Empty).Replace("-", string.Empty);
        }

        /// <summary>
        /// Navigate back in the stack to a specific page while remove pages along the way
        /// </summary>
        /// <returns>The to.</returns>
        /// <param name="nav">Nav.</param>
        /// <param name="pageName">Page name.</param>
        public static async Task<Page> PopTo(this INavigation nav, string pageName)
        {
            if (nav.NavigationStack.Any(x => x.GetType().Name == pageName) && nav.NavigationStack.Count > 1)
            {
                if (nav.NavigationStack.Last().GetType().Name == pageName)
                    return null;

                for (int x = (nav.NavigationStack.Count - 1); x > -1; x--)
                {
                    var page = AppData.Instance.AppNav.NavigationStack[nav.NavigationStack.Count - (x - 1)];
                    var name = page.GetType().Name;
                    if (name == pageName)
                    {
                        return await nav.PopAsync();
                    }
                    else
                    {
                        nav.RemovePage(page);
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
#endif

#if __ANDROID__

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

