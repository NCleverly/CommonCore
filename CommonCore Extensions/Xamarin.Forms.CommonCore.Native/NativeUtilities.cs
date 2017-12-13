using System;
using System.ComponentModel;

namespace Xamarin.Forms.CommonCore.Native
{
    public class PropertyBindingSettings
    {
        public int ResourceId
        {
            get;
            set;
        }

        public string BindingObject
        {
            get;
            set;
        }

        public string BindingProperty
        {
            get;
            set;
        }

        public string ViewModelProperty
        {
            get;
            set;
        }

        public string EventName
        {
            get;
            set;
        }

        public string Format
        {
            get;
            set;
        }


#if __IOS__
        public nint Tag
        {
            get;
            set;
        }
#endif
    }


    public class EventBindingSettings
    {
        public int ResourceId
        {
            get;
            set;
        }

        public string BindingObject
        {
            get;
            set;
        }

        public string EventName
        {
            get;
            set;
        }

        public string ViewModelCommand
        {
            get;
            set;
        }

#if __IOS__
        public nint Tag
        {
            get;
            set;
        }
#endif
    }

    [System.AttributeUsage(System.AttributeTargets.Property)]
    public class RegisterEvent : System.Attribute
    {
        public string[] EventNames { get; set; }

        public RegisterEvent(string eventName)
        {
            EventNames = new string[] { eventName };
        }

        public RegisterEvent(string[] eventNames)
        {
            EventNames = eventNames;
        }
    }

    public interface IHandlers
    {
        void ViewEventHandler(object e, EventArgs args);

        void ControlsHandler(object sender, EventArgs args);
    }

    public static class TConverter
    {
        public static T ChangeType<T>(object value)
        {
            return (T)ChangeType(typeof(T), value);
        }

        public static object ChangeType(Type t, object value)
        {
            var tc = TypeDescriptor.GetConverter(t);
            return tc.ConvertFrom(value);
        }

        public static void RegisterTypeConverter<T, TC>() where TC : TypeConverter
        {

            TypeDescriptor.AddAttributes(typeof(T), new TypeConverterAttribute(typeof(TC)));
        }
    }

    public class ValueConverter
    {
        public static object ChangeType(string typeName, string stringValue)
        {
            object returnValue = null;
            switch (typeName)
            {
                case "Int32":
                    int intValue;
                    if (!string.IsNullOrEmpty(stringValue))
                    {
                        if (!int.TryParse(stringValue, out intValue))
                            return null;
                    }
                    else
                    {
                        intValue = 0;
                    }
                    returnValue = intValue;
                    break;
                case "Boolean":
                    bool boolValue;
                    if (!string.IsNullOrEmpty(stringValue))
                    {
                        if (!bool.TryParse(stringValue, out boolValue))
                            return null;
                    }
                    else
                    {
                        boolValue = false;
                    }
                    returnValue = boolValue;
                    break;
                case "Single":
                    float floatValue;
                    if (!string.IsNullOrEmpty(stringValue))
                    {
                        if (!float.TryParse(stringValue, out floatValue))
                            return null;
                    }
                    else
                    {
                        floatValue = 0.0f;
                    }
                    returnValue = floatValue;
                    break;
                case "Double":
                    double doubleValue;
                    if (!string.IsNullOrEmpty(stringValue))
                    {
                        if (!double.TryParse(stringValue, out doubleValue))
                            return null;
                    }
                    else
                    {
                        doubleValue = 0.0d;
                    }
                    returnValue = doubleValue;
                    break;
                case "DateTime":
                    DateTime dtValue;
                    if (!string.IsNullOrEmpty(stringValue))
                    {
                        if (!DateTime.TryParse(stringValue, out dtValue))
                            return null;
                    }
                    else
                    {
                        return null;
                    }
                    returnValue = dtValue;
                    break;
                default:
                    returnValue = stringValue;
                    break;
            }

            return returnValue;
        }
    }
}
