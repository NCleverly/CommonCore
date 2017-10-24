using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;
using System.Linq;
using System.Collections.ObjectModel;
using System.Collections;
using System.Threading;
using System.ComponentModel;
using System.Reflection;
using System.Text.RegularExpressions;
using System.Globalization;
using System.Linq.Expressions;
using System.Windows.Input;

#if __ANDROID__
using Xamarin.Forms.Platform.Android;
using Android.Util;
using Android.Views.InputMethods;
using Views = Android.Views;
using StrictMode = Android.OS.StrictMode;
#endif
#if __IOS__
using Foundation;
using UIKit;
using CoreGraphics;
#endif

namespace Xamarin.Forms.CommonCore
{

    public static class CoreExtensions
    {
        /// <summary>
        /// Replace obsolete Device.OnPlatform method
        /// </summary>
        /// <returns>The value.</returns>
        /// <param name="runtimePlatform">Runtime platform.</param>
        /// <param name="parameters">Parameters.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static T PlatformValue<T>(this string runtimePlatform, params T[] parameters )
        {
            T obj = default(T);

            if (!string.IsNullOrEmpty(runtimePlatform))
            {
                switch (Device.RuntimePlatform.ToUpper())
                {
                    case "IOS":
                        if (parameters.Length > 0)
                            obj = parameters[0];
                        break;
                    case "ANDROID":
                        if (parameters.Length > 1)
                            obj = parameters[1];
                        break;
                    default:
                        if (parameters.Length > 2)
                            obj = parameters[2];
                        break;
                }
            }
            return obj;
        }

        private static IEncryptionService Encryption
        {
            get
            {
                return InjectionManager.GetService<IEncryptionService, EncryptionService>(true);
            }
        }

		private static ILogService Log
		{
			get
			{
				return InjectionManager.GetService<ILogService, LogService>(true);
			}
		}

        public static void LogException(this Exception ex,string metatData = null)
        {
            Log.LogException(ex,metatData);
        }

        /// <summary>
        /// Save the state of the view model.  Used for when the application may teardown the memory losing the property
        /// values of the view model.
        /// </summary>
        /// <param name="vm">Vm.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void SaveState<T>(this T vm) where T : ObservableViewModel, new()
        {
            Task.Run(async () =>
            {
                await InjectionManager.GetService<IFileStore, FileStore>(true)?.SaveAsync<T>(typeof(T).FullName, vm);
            });
        }
        /// <summary>
        /// Loads the state of the view model to ensure if torndown by the OS, it can regain the property values.
        /// </summary>
        /// <param name="vm">Vm.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void LoadState<T>(this T vm) where T : ObservableViewModel, new()
        {
            Task.Run(async () =>
            {
                var result = await InjectionManager.GetService<IFileStore, FileStore>(true)?.GetAsync<T>(typeof(T).FullName);
                if (result.Error==null)
                {
                    foreach (var prop in typeof(T).GetProperties())
                    {
                        prop.SetValue(vm, prop.GetValue(result.Response));
                    }
                }
            });
        }
        /// <summary>
        /// Saves the state of the view models in case the OS tearsdown the memory.
        /// </summary>
        /// <param name="app">App.</param>
        public static void SaveViewModelState(this Application app)
        {
            var nameList = new List<string>();
            foreach (var vm in InjectionManager.GetAllViewModels())
            {
                vm.SaveState();
                nameList.Add(vm.GetType().FullName);
            }
            InjectionManager.GetService<IFileStore, FileStore>(true)?.SaveAsync<List<string>>("vmlistCoreExtensions", nameList).ContinueOn();
        }
        /// <summary>
        /// Loads the state of the view model if they were torndown by the OS.
        /// </summary>
        /// <param name="app">App.</param>
        public static void LoadViewModelState(this Application app)
        {
            if (!InjectionManager.HasViewModels)
            {
                Task.Run(async () =>
                {
                    var result = await InjectionManager.GetService<IFileStore, FileStore>(true)?.GetAsync<List<string>>("vmlistCoreExtensions");
                    if (result.Error == null)
                    {
                        foreach (var vmName in result.Response)
                        {
                            InjectionManager.RegisterObjectByName(vmName);
                            ((ObservableViewModel)InjectionManager.GetObjectByName(vmName)).LoadState();
                        }
                    }
                });

            }
        }

        public static T ToEnum<T>(this string str) where T : struct
        {
            T returnEnum;
            Enum.TryParse(str, out returnEnum);
            return returnEnum;
        }

        public static PropertyInfo GetProperty<T, P>(this Expression<Func<T, P>> exp)
        {
            var expression = (MemberExpression)exp.Body;
            string name = expression.Member.Name;
            return typeof(T).GetProperty(name);
        }
        public static P GetPropertyValue<T, P>(this Expression<Func<T, P>> exp, T obj)
        {
            var expression = (MemberExpression)exp.Body;
            string name = expression.Member.Name;
            var prop = obj.GetType().GetProperty(name);
            return (P)prop.GetValue(obj, null);
        }

        public static bool IsEqual(this double variable1, double variable2)
        {
            var var1 = (long)variable1 * 10000;
            var var2 = (long)variable2 * 10000;
            return var1 == var2;
        }

        public static bool ValidateTextFields(this ObservableViewModel model, params string[] fields)
        {
            foreach (var obj in fields) if (String.IsNullOrEmpty(obj)) return false;

            return true;
        }
        public static bool ValidateTextFields(this bool chainedResponse, params string[] fields)
        {
            if (chainedResponse)
            {
                foreach (var obj in fields) if (String.IsNullOrEmpty(obj))
                        return false;
                return true;
            }
            else
            {
                return chainedResponse;
            }
        }
        public static bool ValidateNumberFields(this ObservableViewModel model, decimal minValue, decimal maxValue, params decimal[] fields)
        {
            foreach (var obj in fields)
            {
                if (obj < minValue || obj > maxValue)
                {
                    return false;
                }
            }
            return true;
        }
        public static bool ValidateNumberFields(this bool chainedResponse, decimal minValue, decimal maxValue, params decimal[] fields)
        {
            if (chainedResponse)
            {
                foreach (var obj in fields)
                {
                    if (obj < minValue || obj > maxValue)
                    {
                        return false;
                    }
                }
                return true;
            }
            else
            {
                return chainedResponse;
            }
        }
        public static bool ValidateDateFields(this ObservableViewModel model, DateTime minValue, DateTime maxValue, params DateTime[] fields)
        {
            foreach (var obj in fields)
            {
                if (obj < minValue || obj > maxValue)
                {
                    return false;
                }
            }
            return true;
        }

        public static bool ValidateDateFields(this bool chainedResponse, DateTime minValue, DateTime maxValue, params DateTime[] fields)
        {
            if (chainedResponse)
            {
                foreach (var obj in fields)
                {
                    if (obj < minValue || obj > maxValue)
                    {
                        return false;
                    }
                }
                return true;
            }
            else
            {
                return chainedResponse;
            }
        }
        public static bool ValidateEmailFields(this ObservableViewModel model, params string[] fields)
        {
            var RegexExp = @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$";
            foreach (var obj in fields)
            {
                try
                {
                    return Regex.IsMatch(obj, RegexExp, RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250));
                }
                catch (Exception)
                {
                    return false;
                }
            }
            return false;
        }
        public static bool ValidateEmailFields(this bool chainedResponse, params string[] fields)
        {
            if (chainedResponse)
            {
                var RegexExp = @"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$";
                foreach (var obj in fields)
                {
                    try
                    {
                        return Regex.IsMatch(obj, RegexExp, RegexOptions.IgnoreCase, TimeSpan.FromMilliseconds(250));
                    }
                    catch (Exception)
                    {
                        return false;
                    }
                }
                return false;
            }
            else
            {
                return chainedResponse;
            }
        }
        public static bool ValidatePasswordFields(this ObservableViewModel model, params string[] fields)
        {
            var hasNumber = new Regex(@"[0-9]+");
            var hasChar = new Regex(@"[a-zA-Z]+");
            //var hasCorrectNumChars = new Regex(@"^.{8,16}$");
            var hasCorrectNumChars = new Regex(@"^.{8,}$");

            foreach (var obj in fields)
            {
                try
                {
                    return hasNumber.IsMatch(obj) && hasChar.IsMatch(obj) && hasCorrectNumChars.IsMatch(obj);
                }
                catch (Exception)
                {
                    return false;
                }
            }
            return false;
        }

        public static bool ValidatePasswordFields(this bool chainedResponse, params string[] fields)
        {
            if (chainedResponse)
            {
                var hasNumber = new Regex(@"[0-9]+");
                var hasChar = new Regex(@"[a-zA-Z]+");
                //var hasCorrectNumChars = new Regex(@"^.{8,16}$");
                var hasCorrectNumChars = new Regex(@"^.{8,}$");

                foreach (var obj in fields)
                {
                    try
                    {
                        return hasNumber.IsMatch(obj) && hasChar.IsMatch(obj) && hasCorrectNumChars.IsMatch(obj);
                    }
                    catch (Exception)
                    {
                        return false;
                    }
                }
                return false;
            }
            else
            {
                return chainedResponse;
            }
        }

        public static bool ValidatePasswordMatch(this ObservableViewModel model, params string[] fields)
        {
            for (int i = 0; i < fields.Length; i++)
            {
                try
                {
                    var currentPassword = fields[i];

                    // validate passwords match
                    if (i > 0)
                    {
                        var previousPassword = fields[i - 1];
                        var previousPasswordMatches = currentPassword == previousPassword;
                        if (!previousPasswordMatches)
                        {
                            return false;
                        }
                    }
                }
                catch (Exception)
                {
                    return false;
                }
            }
            return true;
        }

        public static bool ValidatePasswordMatch(this bool chainedResponse, params string[] fields)
        {
            if (chainedResponse)
            {
                for (int i = 0; i < fields.Length; i++)
                {
                    try
                    {
                        var currentPassword = fields[i];

                        // validate passwords match
                        if (i > 0)
                        {
                            var previousPassword = fields[i - 1];
                            var previousPasswordMatches = currentPassword == previousPassword;
                            if (!previousPasswordMatches)
                            {
                                return false;
                            }
                        }
                    }
                    catch (Exception)
                    {
                        return false;
                    }
                }
                return true;
            }
            else
            {
                return chainedResponse;
            }
        }

        public static bool ValidateDefaultFields<T>(this ObservableViewModel model, params T[] fields) where T : struct
        {
            var state = true;
            var type = typeof(T).Name;
            switch (type)
            {
                case "Boolean":
                    foreach (var obj in fields)
                    {
                        if (((bool)(object)obj) == default(bool))
                            state = false;
                    }
                    break;
                case "Int32":
                    foreach (var obj in fields)
                    {
                        if (((int)(object)obj).Equals(default(int)))
                            state = false;
                    }
                    break;
                case "Int64":
                    foreach (var obj in fields)
                    {
                        if (((long)(object)obj).Equals(default(long)))
                            state = false;
                    }
                    break;
                case "Double":
                    foreach (var obj in fields)
                    {
                        if (((double)(object)obj).Equals(default(double)))
                            state = false;
                    }
                    break;
                case "Single":
                    foreach (var obj in fields)
                    {
                        if (((float)(object)obj).Equals(default(float)))
                            state = false;
                    }
                    break;
            }

            return state;
        }

        public static bool ValidateDefaultFields<T>(this bool chainedResponse, params T[] fields) where T : struct
        {
            if (chainedResponse)
            {
                var state = true;
                var type = typeof(T).Name;
                switch (type)
                {
                    case "Boolean":
                        foreach (var obj in fields)
                        {
                            if (((bool)(object)obj) == default(bool))
                                state = false;
                        }
                        break;
                    case "Int32":
                        foreach (var obj in fields)
                        {
                            if (((int)(object)obj).Equals(default(int)))
                                state = false;
                        }
                        break;
                    case "Int64":
                        foreach (var obj in fields)
                        {
                            if (((long)(object)obj).Equals(default(long)))
                                state = false;
                        }
                        break;
                    case "Double":
                        foreach (var obj in fields)
                        {
                            if (((double)(object)obj).Equals(default(double)))
                                state = false;
                        }
                        break;
                    case "Single":
                        foreach (var obj in fields)
                        {
                            if (((float)(object)obj).Equals(default(float)))
                                state = false;
                        }
                        break;
                }

                return state;
            }
            else
            {
                return chainedResponse;
            }
        }

        /// <summary>
        /// Use a predicate to remove items from a generic ICollection
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="collection"></param>
        /// <param name="predicate"></param>
        public static void RemoveWhere<T>(this ICollection<T> collection, Func<T, bool> predicate)
        {
            int i = collection.Count;

            while (--i > 0)
            {
                T element = collection.ElementAt(i);

                if (predicate(element))
                {
                    collection.Remove(element);
                }
            }
        }

        public static T ToObject<T>(this WeakReference<T> reference) where T : class
        {
            T obj = null;
            reference.TryGetTarget(out obj);
            return obj;
        }

        public static T Cast<T>(this WeakReference obj) where T : class
        {
            if (obj.IsAlive)
                return (T)obj.Target;
            else
                return null;
        }

        public static string ToTitleCase(this string sentence)
        {
            return CultureInfo.CurrentCulture.TextInfo.ToTitleCase(sentence.ToLower());
        }

        public static T ConvertTo<T>(this string str) where T : struct
        {
            object result = null;
            var code = Type.GetTypeCode(typeof(T));
            switch (code)
            {
                case TypeCode.Int32:
                    result = JsonConvert.DeserializeObject<int>(str);
                    break;
                case TypeCode.Int16:
                    result = JsonConvert.DeserializeObject<short>(str);
                    break;
                case TypeCode.Int64:
                    result = JsonConvert.DeserializeObject<long>(str);
                    break;
                case TypeCode.String:
                    result = JsonConvert.DeserializeObject<string>(str);
                    break;
                case TypeCode.Boolean:
                    result = JsonConvert.DeserializeObject<bool>(str);
                    break;
                case TypeCode.Double:
                    result = JsonConvert.DeserializeObject<double>(str);
                    break;
                case TypeCode.Decimal:
                    result = JsonConvert.DeserializeObject<decimal>(str);
                    break;
                case TypeCode.Byte:
                    result = JsonConvert.DeserializeObject<Byte>(str);
                    break;
                case TypeCode.DateTime:
                    result = JsonConvert.DeserializeObject<DateTime>(str);
                    break;
                case TypeCode.Single:
                    result = JsonConvert.DeserializeObject<Single>(str);
                    break;
            }
            return (T)result;
        }

        public static string GetString(this PropertyInfo prop, object obj)
        {
            return (string)prop.GetValue(obj, null);
        }

        /// <summary>
        /// Returns an ObservableCollection from a set of enumerable items.
        /// </summary>
        /// <returns>The observable collection.</returns>
        /// <param name="items">Items.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static OptimizedObservableCollection<T> ToObservableCollection<T>(this IEnumerable<T> items)
        {
            return new OptimizedObservableCollection<T>(items);
        }

        /// <summary>
        /// Add a range of IEnumerable collection to an existing Collection.
        /// </summary>
        ///<typeparam name="T">Type of collection</typeparam>
        ///<param name="collection">Collection</param>
        /// <param name="items">Items to add</param>
        public static void AddRange<T>(this ICollection<T> collection, IEnumerable<T> items)
        {
            if (collection == null)
                throw new ArgumentNullException("collection");
            if (items == null)
                throw new ArgumentNullException("items");

            foreach (var item in items)
                collection.Add(item);
        }


        /// <summary>
        /// Removes a set of items from the collection.
        /// </summary>
        /// <param name="collection">Collection to remove from</param>
        /// <param name="items">Items to remove from collection.</param>
        public static void RemoveRange<T>(this ICollection<T> collection, IEnumerable<T> items)
        {
            if (collection == null)
                throw new ArgumentNullException("collection");
            if (items == null)
                throw new ArgumentNullException("items");

            foreach (var item in items)
                collection.Remove(item);
        }

        /// <summary>
        /// Encrypts the model properties of ObservableObject lists.
        /// </summary>
        /// <param name="list">List.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void EncryptedModelProperties<T>(IEnumerable<T> list) where T : BindableObject
        {
            var props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance)
                     .Where(p => p.GetCustomAttributes(typeof(EncryptedPropertyAttribute)).Count() > 0).ToArray();

            if (props.Count() > 0)
            {
                foreach (var prop in props)
                {
                    foreach (var obj in list)
                    {
                        prop.SetValue(obj, Encryption.AesEncrypt(prop.GetString(obj), CoreSettings.Config.AESEncryptionKey), null);
                    }
                }
            }
        }

        /// <summary>
        /// UnEncrypts the model properties of ObservableObject lists.
        /// </summary>
        /// <param name="list">List.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void UnEncryptedModelProperties<T>(IEnumerable<T> list) where T : BindableObject
        {

            var props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance)
                     .Where(p => p.GetCustomAttributes(typeof(EncryptedPropertyAttribute)).Count() > 0).ToArray();

            if (props.Count() > 0)
            {
                foreach (var prop in props)
                {
                    foreach (var obj in list)
                    {
                        prop.SetValue(obj, Encryption.AesDecrypt(prop.GetString(obj), CoreSettings.Config.AESEncryptionKey), null);
                    }
                }
            }
        }



        /// <summary>
        /// Encrypts the model properties of ISqlDataModel object defined by SQLData instance type dictionary.
        /// </summary>
        /// <param name="dict">Dict.</param>
        /// <param name="obj">Object.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void EncryptedDataModelProperties<T>(this Dictionary<Type, PropertyInfo[]> dict, T obj) where T : ISqlDataModel
        {
            var props = dict[typeof(T)];
            if (props.Count() > 0)
            {
                foreach (var prop in props)
                {
                    prop.SetValue(obj, Encryption.AesEncrypt(prop.GetString(obj), CoreSettings.Config.AESEncryptionKey), null);
                }
            }
        }

        /// <summary>
        /// Encrypts the model properties of ISqlDataModel list defined by SQLData instance type dictionary.
        /// </summary>
        /// <param name="dict">Dict.</param>
        /// <param name="list">List.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void EncryptedDataModelProperties<T>(this Dictionary<Type, PropertyInfo[]> dict, IEnumerable<T> list) where T : ISqlDataModel
        {
            var props = dict[typeof(T)];
            if (props.Count() > 0)
            {
                foreach (var prop in props)
                {
                    foreach (var obj in list)
                    {
                        prop.SetValue(obj, Encryption.AesEncrypt(prop.GetString(obj), CoreSettings.Config.AESEncryptionKey), null);
                    }
                }
            }
        }

        /// <summary>
        /// UnEncrypts the model properties of ISqlDataModel object defined by SQLData instance type dictionary.
        /// </summary>
        /// <param name="dict">Dict.</param>
        /// <param name="obj">Object.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void UnEncryptedDataModelProperties<T>(this Dictionary<Type, PropertyInfo[]> dict, T obj) where T : ISqlDataModel
        {
            var props = dict[typeof(T)];
            if (props.Count() > 0)
            {
                foreach (var prop in props)
                {
                    prop.SetValue(obj, Encryption.AesDecrypt(prop.GetString(obj), CoreSettings.Config.AESEncryptionKey), null);
                }
            }
        }

        /// <summary>
        /// UnEncrypts the model properties of ISqlDataModel list defined by SQLData instance type dictionary.
        /// </summary>
        /// <param name="dict">Dict.</param>
        /// <param name="list">List.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void UnEncryptedDataModelProperties<T>(this Dictionary<Type, PropertyInfo[]> dict, IEnumerable<T> list) where T : ISqlDataModel
        {
            var props = dict[typeof(T)];
            if (props.Count() > 0)
            {
                foreach (var prop in props)
                {
                    foreach (var obj in list)
                    {
                        prop.SetValue(obj, Encryption.AesDecrypt(prop.GetString(obj), CoreSettings.Config.AESEncryptionKey), null);
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
        /// Lasts the or default on a async (promised) collection
        /// </summary>
        /// <returns>The or default.</returns>
        /// <param name="taskCollection">Task collection.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static async Task<T> LastOrDefault<T>(this Task<List<T>> taskCollection)
        {
            var result = await taskCollection;
            return result.LastOrDefault();
        }

        /// <summary>
        /// First or Default on a async (promised) collection in a GenericResponse object
        /// </summary>
        /// <returns>The or default.</returns>
        /// <param name="taskCollection">Task collection.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static async Task<T> FirstOrDefault<T>(this Task<(List<T> Response,Exception Error)> taskCollection)
        {
            var result = await taskCollection;
            if (result.Error==null)
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
            for (var x = 0; x < list.Count; x++)
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
            foreach (var item in query.AsEnumerable<T>())
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
        public static Dictionary<string, object> ToDictionary(this object obj)
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
        /// Resets the notifier of the ICommand when the oberservable object has been reinstantiated.
        /// </summary>
        /// <param name="command">Command.</param>
        /// <param name="notifier">Notifier.</param>
        public static void ResetNotifier(this ICommand command, INotifyPropertyChanged notifier)
        {
            ((RelayCommand)command).NotifyBinder = notifier;
        }

        /// <summary>
        /// PushAysnc method with ConfigureAwait(false)
        /// </summary>
        /// <param name="nav">Nav.</param>
        /// <param name="animated">If set to <c>true</c> animated.</param>
        /// <typeparam name="T">The 1st type parameter.</typeparam>
        public static void PushNonAwaited<T>(this INavigation nav, bool animated = true) where T : ContentPage, new()
        {
            CoreSettings.AppNav.PushAsync(new T(), animated).ConfigureAwait(false);
        }
        /// <summary>
        /// PushAysnc method with ConfigureAwait(false)
        /// </summary>
        /// <param name="nav">Nav.</param>
        /// <param name="page">Page.</param>
        /// <param name="animated">If set to <c>true</c> animated.</param>
        public static void PushNonAwaited(this INavigation nav, ContentPage page, bool animated = true)
        {
            CoreSettings.AppNav.PushAsync(page, animated).ConfigureAwait(false);
        }
        /// <summary>
        /// PopAysnc method with ConfigureAwait(false)
        /// </summary>
        /// <param name="nav">Nav.</param>
        /// <param name="animated">If set to <c>true</c> animated.</param>
        public static void PopNonAwaited(this INavigation nav, bool animated = true)
        {
            CoreSettings.AppNav.PopAsync(animated).ConfigureAwait(false);
        }

        /// <summary>
        /// Navigate back in the stack to a specific page while remove pages along the way
        /// </summary>
        /// <returns>The to.</returns>
        /// <param name="nav">Nav.</param>
        /// <param name="pageName">Page name.</param>
        public static async Task<Page> PopTo<T>(this INavigation nav, bool animated = true) where T : ContentPage, new()
        {
            var pageName = typeof(T).FullName;

            if (nav.NavigationStack.Any(x => x.GetType().FullName == pageName) && nav.NavigationStack.Count > 1)
            {
                if (nav.NavigationStack.Last().GetType().FullName == pageName)
                    return null;

                for (int x = (nav.NavigationStack.Count - 2); x > -1; x--)
                {
                    var page = nav.NavigationStack[x];
                    var name = page.GetType().FullName;
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

        public static UIImage MaskeWithColor(this UIImage image, UIColor color)
        {

            var maskImage = image.CGImage;
            var width = image.Size.Width;
            var height = image.Size.Height;
            var bounds = new CGRect(0, 0, width, height);

            using (var colorSpace = CGColorSpace.CreateDeviceRGB())
            {
                using (var bitmapContext = new CGBitmapContext(null, (nint)width, (nint)height, 8, 0, colorSpace, CGImageAlphaInfo.PremultipliedLast))
                {
                    bitmapContext.ClipToMask(bounds, maskImage);
                    bitmapContext.SetFillColor(color.CGColor);
                    bitmapContext.FillRect(bounds);

                    using (var cImage = bitmapContext.ToImage())
                    {
                        var coloredImage = UIImage.FromImage(cImage);
                        return coloredImage;
                    }
                }
            }

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

        public static nfloat StringHeight(this string text, UIFont font, nfloat width)
        {
            var nativeString = new NSString(text);

            var rect = nativeString.GetBoundingRect(
                new CGSize(width, nfloat.MaxValue),
                NSStringDrawingOptions.UsesLineFragmentOrigin,
                new UIStringAttributes() { Font = font },
                null);

            return rect.Height;
        }

        public static ImageSource GetImageResource<T>(this T obj, string imgName) where T : class
        {
            var assemblyName = Assembly.GetAssembly(obj.GetType()).FullName;
            return ImageSource.FromResource($"{assemblyName}.{imgName}");
        }


        #region Data

        /// <summary>The NSDate from Xamarin takes a reference point form January 1, 2001, at 12:00</summary>
        /// <remarks>
        /// It also has calls for NIX reference point 1970 but appears to be problematic
        /// </remarks>
        private static DateTime nsRef = TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(2001, 1, 1, 0, 0, 0, 0)); // last zero is milliseconds

        #endregion

        /// <summary>Returns the seconds interval for a DateTime from NSDate reference data of January 1, 2001</summary>
        /// <param name="dt">The DateTime to evaluate</param>
        /// <returns>The seconds since NSDate reference date</returns>
        public static double SecondsSinceNSRefenceDate(this DateTime dt)
        {
            return (dt - nsRef).TotalSeconds;
        }


        /// <summary>Convert a DateTime to NSDate</summary>
        /// <param name="dt">The DateTime to convert</param>
        /// <returns>An NSDate</returns>
        public static NSDate ToNSDate(this DateTime dt)
        {
            return NSDate.FromTimeIntervalSinceReferenceDate(dt.SecondsSinceNSRefenceDate());
        }


        /// <summary>Convert an NSDate to DateTime</summary>
        /// <param name="nsDate">The NSDate to convert</param>
        /// <returns>A DateTime</returns>
        public static DateTime ToDateTime(this NSDate nsDate)
        {
            // We loose granularity below millisecond range but that is probably ok
            return nsRef.AddSeconds(nsDate.SecondsSinceReferenceDate);
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

        public static void EnableStrictMode(this FormsAppCompatActivity activity)
        {
#if DEBUG
            var builder = new StrictMode.VmPolicy.Builder();
            var policy = builder.DetectActivityLeaks().PenaltyLog().Build();
            StrictMode.SetVmPolicy(policy);
#endif
        }
#endif

    }
}

