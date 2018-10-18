#if __ANDROID__
using System;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Windows.Input;
using Android.App;
using Android.Runtime;
using Android.Widget;
using DroidView = Android.Views.View;
using DroidListView = Android.Widget.ListView;


namespace Xamarin.Forms.CommonCore.Native
{
    
    [Preserve (AllMembers = true)]
	public class BindingManager<T,K> 
		where T: class, IHandlers
		where K:INotifyPropertyChanged
	{
		private List<PropertyBindingSettings> pbs;
		private List<EventBindingSettings> ebs;
		private K viewModel;
		private T bindingObj;

		public void BindProperty (string bindingObject, string bindingProperty, string eventName, string viewModelProperty, string format)
		{
			pbs.Add (new PropertyBindingSettings () {
				BindingObject = bindingObject,
				BindingProperty = bindingProperty,
				ViewModelProperty = viewModelProperty,
				EventName = eventName,
				ResourceId = ControlUtil.GetResourceId (bindingObject),
				Format = format
			});
		}

		public void BindProperty (string bindingObject, string bindingProperty, string eventName, string viewModelProperty)
		{
			BindProperty (bindingObject, bindingProperty, eventName, viewModelProperty, null);
		}

        public void BindProperty (Expression<Func<object>> bindingProperty, string eventName, Expression<Func<object>> viewModelProperty)
		{
            BindProperty (bindingProperty, eventName, viewModelProperty, null);
		}

		public void BindProperty (Expression<Func<object>> bindingProperty, string eventName, Expression<Func<object>> viewModelProperty, string format)
		{
			var vmFieldName = GetPropertyName (viewModelProperty);
			var controlName = GetControlName (bindingProperty);
			var bpFieldName = GetPropertyName (bindingProperty);
			BindProperty (controlName, bpFieldName, eventName, vmFieldName, format);
		}

        public void BindProperty(Expression<Func<object>> bindingProperty, string eventName, Expression<Func<object>> eventProperty, Expression<Func<object>> viewModelProperty, string format)
        {
            var vmFieldName = GetPropertyName(viewModelProperty);
            var controlName = GetControlName(bindingProperty);
            var bpFieldName = GetPropertyName(bindingProperty);
            BindProperty(controlName, bpFieldName, eventName, vmFieldName, format);
        }

		public void BindCommand (string bindingObject, string eventName, string viewModelCommand)
		{
			ebs.Add (new EventBindingSettings () {
				BindingObject = bindingObject,
				EventName = eventName,
				ViewModelCommand = viewModelCommand,
				ResourceId = ControlUtil.GetResourceId (bindingObject)
			});
		}

        public void BindCommand (Expression<Func<object>> bindingProperty, string eventName, Expression<Func<object>> viewModelProperty)
		{
			var controlName = GetCommandControlName (bindingProperty);
			var vmFieldName = GetPropertyName (viewModelProperty);
			BindCommand (controlName, eventName, vmFieldName);
		}

		public void RegisterBindingEvents (T bindingObj, K viewModel, bool registerDefaultControls = true)
		{
			this.bindingObj = bindingObj;
			this.viewModel = viewModel;
			foreach (var obj in pbs) {
                
                //set initial value of VM property is not null
                SetInitialValue(obj);

				ConnectPropertyBindingSetting (obj);
			}
			foreach (var obj in ebs) {
				ConnectCommandBindingSetting (obj);
			}

			this.viewModel.PropertyChanged += this.InternalViewModelEventHandler;
			foreach (var vmProp in this.viewModel.GetType().GetProperties(BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public)) {
				var ii = vmProp.PropertyType.GetInterface ("INotifyCollectionChanged");
				if (ii != null) {
					var collection = (INotifyCollectionChanged)vmProp.GetValue (this.viewModel);
					collection.CollectionChanged += this.InternalViewModelEventHandler;
				}
			}

			if (registerDefaultControls) {
                bindingObj.RegisterBindingEvents (this.ebs);
			}

		}

        private void SetInitialValue(PropertyBindingSettings setting)
        {
            var vmProp = viewModel.GetType().GetProperty(setting.ViewModelProperty, BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
            var cvPropValue = vmProp.GetValue(viewModel, null);

            var ctrlProp = typeof(T).GetProperty(setting.BindingObject, BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
            var ctrlInstance = ctrlProp.GetValue(bindingObj);
            var prop = ctrlInstance.GetType().GetProperty(setting.BindingProperty, BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
            prop.SetValue(ctrlInstance, cvPropValue);

            if (ctrlProp.PropertyType.Name == "EditText")
            {
                int textLength = ((EditText)ctrlInstance).Text.Length;
                ((EditText)ctrlInstance).SetSelection(textLength, textLength);
            }

        }

		public void UnRegisterBindingEvents (T bindingObject,bool unRegisterDefaultControls = true)
		{
			foreach (var obj in pbs) {
				DisconnectPropertyBindingSetting (obj);
			}
			foreach (var obj in ebs) {
				DisconnectCommandBindingSetting (obj);
			}

			this.viewModel.PropertyChanged -= this.InternalViewModelEventHandler;
			foreach (var vmProp in this.viewModel.GetType().GetProperties(BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public)) {
				var ii = vmProp.PropertyType.GetInterface ("INotifyCollectionChanged");
				if (ii != null) {
					var collection = (INotifyCollectionChanged)vmProp.GetValue (this.viewModel);
					collection.CollectionChanged -= this.InternalViewModelEventHandler;
				}
			}

			if (unRegisterDefaultControls) {
                bindingObject.UnRegisterBindingEvents ();
			}

		}

		public BindingManager ()
		{
			pbs = new List<PropertyBindingSettings> ();
			ebs = new List<EventBindingSettings> ();
		}

		private void InternalControlEventHandler (object sender, EventArgs args)
		{
			var ctrlId = ((global::Android.Views.View)sender).Id;
			var ctrl = pbs.FirstOrDefault (x => x.ResourceId == ctrlId);

			if (ctrl != null) {
				var prop = sender.GetType ().GetProperty (ctrl.BindingProperty, BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
				var propValue = prop.GetValue (sender, null);
				var vmProp = viewModel.GetType ().GetProperty (ctrl.ViewModelProperty,BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);

				if (prop.ReflectedType.Name == "ListView") {
					if (ctrl.BindingProperty == "SelectedItem") {
						if (args is global::Android.Widget.AdapterView.ItemClickEventArgs) {
							var position = ((global::Android.Widget.AdapterView.ItemClickEventArgs)args).Position;
							var item = ((DroidListView)sender).Adapter.GetItem (position);
							var vmObj = ConvertToPOCO (item, vmProp.PropertyType);
							vmProp.SetValue (viewModel, vmObj);
						}
					}

				} else {
					var cvPropValue = ValueConverter.ChangeType (vmProp.PropertyType.Name, propValue.ToString ());
					if (cvPropValue == null)
						return;
					vmProp.SetValue (viewModel, cvPropValue);
				}
			}
		}

		private void InternalCommandEventHandler (object sender, EventArgs args)
		{
			var ctrlId = ((global::Android.Views.View)sender).Id;
			var ctrl = ebs.FirstOrDefault (x => x.ResourceId == ctrlId);

			if (ctrl != null) {
				var vmProp = typeof(K).GetProperty (ctrl.ViewModelCommand,BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
				var vmCommand = (ICommand)vmProp.GetValue (this.viewModel, null);
				vmCommand.Execute (null);
			}
		}

		private void InternalViewModelEventHandler (object sender, EventArgs args)
		{
			if (args is NotifyCollectionChangedEventArgs) {
				var props = typeof(K).GetProperties (BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
				foreach (var prop in props) {
					var ii = prop.PropertyType.GetInterface ("INotifyCollectionChanged");
					if (ii != null) {
						if (sender == prop.GetValue (viewModel)) {
							var propName = prop.Name;
							foreach (var obj in pbs.Where(x => x.ViewModelProperty == propName)) {
								if (!string.IsNullOrEmpty (obj.EventName))
									DisconnectPropertyBindingSetting (obj);

								var ctrlProp = typeof(T).GetProperty (obj.BindingObject, BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
								var ib = ctrlProp.PropertyType.GetInterface ("IBaseAdapter");
								if (ib != null) {
									var ctrlInstance = ctrlProp.GetValue (bindingObj);
									((IBaseAdapter)ctrlInstance).UpdateCollection ((ICollection)sender);
								}

								if (!string.IsNullOrEmpty (obj.EventName))
									ConnectPropertyBindingSetting (obj);
							}
						}
					}
				}
			}
			if (args is PropertyChangedEventArgs) {
				var propName = ((PropertyChangedEventArgs)args).PropertyName;
				foreach (var obj in pbs.Where(x => x.ViewModelProperty == propName)) {
					if (!string.IsNullOrEmpty (obj.EventName))
						DisconnectPropertyBindingSetting (obj);
					var ctrlProp = typeof(T).GetProperty (obj.BindingObject, BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
					var ctrlInstance = ctrlProp.GetValue (bindingObj);
					var ctrlInstaceProp = ctrlInstance.GetType ().GetProperty (obj.BindingProperty,BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
					var currentValue = ctrlInstaceProp.GetValue (ctrlInstance);
					var vmProp = sender.GetType ().GetProperty (obj.ViewModelProperty,BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
					var	vmValue = vmProp.GetValue (sender, null);
		
					if (ctrlProp.PropertyType.Name == "ListView") {
						if (obj.BindingProperty != "SelectedItem") {

						}
					} else if (ctrlProp.PropertyType.GetInterface ("IAdapter") != null) {
						var ib = ctrlProp.PropertyType.GetInterface ("IBaseAdapter");
						if (ib != null) {
							((IBaseAdapter)ctrlInstance).UpdateCollection ((ICollection)vmValue);
						}
					} else if(currentValue!=null && currentValue.GetType().Name!="String" && (currentValue.GetType().Name==vmValue.GetType().Name)){
						ctrlInstaceProp.SetValue (ctrlInstance, vmValue);
					}
					else {
						if (currentValue==null || !currentValue.Equals (vmValue)) {
							if (!string.IsNullOrEmpty (obj.Format)) {
								var formattedValue = string.Format (obj.Format, vmValue);
								ctrlInstaceProp.SetValue (ctrlInstance, formattedValue);
							} else {
								ctrlInstaceProp.SetValue (ctrlInstance, vmValue.ToString ());
							}
							if (ctrlProp.PropertyType.Name == "EditText") {
								int textLength = ((EditText)ctrlInstance).Text.Length;
								((EditText)ctrlInstance).SetSelection (textLength, textLength);
							}
						}
					}
					if (!string.IsNullOrEmpty (obj.EventName))
						ConnectPropertyBindingSetting (obj);
				}
			}
		}



		private void ConnectPropertyBindingSetting (PropertyBindingSettings setting)
		{
			var prop = typeof(T).GetProperty (setting.BindingObject,BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
			if (prop != null) {
				if (!string.IsNullOrEmpty (setting.EventName)) {
					var instance = prop.GetValue (bindingObj);
					var eventInstance = instance.GetType ().GetEvent (setting.EventName);
					if (eventInstance != null) {
						var tDelegate = eventInstance.EventHandlerType;
						var miHandler = this.GetType ().GetMethod ("InternalControlEventHandler", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
						if (miHandler != null) {
							var addHandler = eventInstance.GetAddMethod ();
							var d = Delegate.CreateDelegate (tDelegate, this, miHandler);
							System.Object[] addHandlerArgs = { d };
							addHandler.Invoke (instance, addHandlerArgs);
						}
					}
				}
			}
		}

		private void ConnectCommandBindingSetting (EventBindingSettings setting)
		{
			var prop = typeof(T).GetProperty (setting.BindingObject,BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
			if (prop != null) {
				if (!string.IsNullOrEmpty (setting.EventName)) {
					var instance = prop.GetValue (bindingObj);
					var eventInstance = instance.GetType ().GetEvent (setting.EventName);
					if (eventInstance != null) {
						var tDelegate = eventInstance.EventHandlerType;
						var miHandler = this.GetType ().GetMethod ("InternalCommandEventHandler", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
						if (miHandler != null) {
							var addHandler = eventInstance.GetAddMethod ();
							var d = Delegate.CreateDelegate (tDelegate, this, miHandler);
							System.Object[] addHandlerArgs = { d };
							addHandler.Invoke (instance, addHandlerArgs);
						}
					}
				}
			}
		}

		private void DisconnectPropertyBindingSetting (PropertyBindingSettings setting)
		{
			var prop = typeof(T).GetProperty (setting.BindingObject, BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
			if (prop != null) {
				if (!string.IsNullOrEmpty (setting.EventName)) {
					var instance = prop.GetValue (bindingObj);
					var eventInstance = instance.GetType ().GetEvent (setting.EventName);
					if (eventInstance != null) {
						var tDelegate = eventInstance.EventHandlerType;
						var miHandler = this.GetType ().GetMethod ("InternalControlEventHandler", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
						if (miHandler != null) {
							var addHandler = eventInstance.GetRemoveMethod ();
							var d = Delegate.CreateDelegate (tDelegate, this, miHandler);
							System.Object[] addHandlerArgs = { d };
							addHandler.Invoke (instance, addHandlerArgs);
						}
					}
				}
			}
		}

		private void DisconnectCommandBindingSetting (EventBindingSettings setting)
		{
			var prop = typeof(T).GetProperty (setting.BindingObject, BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
			if (prop != null) {
				if (!string.IsNullOrEmpty (setting.EventName)) {
					var instance = prop.GetValue (bindingObj);
					var eventInstance = instance.GetType ().GetEvent (setting.EventName);
					if (eventInstance != null) {
						var tDelegate = eventInstance.EventHandlerType;
						var miHandler = this.GetType ().GetMethod ("InternalCommandEventHandler", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
						if (miHandler != null) {
							var addHandler = eventInstance.GetRemoveMethod ();
							var d = Delegate.CreateDelegate (tDelegate, this, miHandler);
							System.Object[] addHandlerArgs = { d };
							addHandler.Invoke (instance, addHandlerArgs);
						}
					}
				}
			}
		}

		private string GetControlName (Expression<Func<object>> propertyRefExpr)
		{

			if (propertyRefExpr.Body is MemberExpression) {
				var exp = ((MemberExpression)propertyRefExpr.Body);
				return ((MemberExpression)exp.Expression).Member.Name;
			} else {
				var unaryExpr = propertyRefExpr.Body as UnaryExpression;
				var memberExpr = unaryExpr.Operand as MemberExpression;
				return ((MemberExpression)memberExpr.Expression).Member.Name;

			}
		}

		private string GetCommandControlName (Expression<Func<object>> propertyRefExpr)
		{
			var exp = ((MemberExpression)propertyRefExpr.Body);
			return ((MemberExpression)exp).Member.Name;
		}

		private string GetPropertyName (Expression<Func<object>> propertyRefExpr)
		{
			if (propertyRefExpr == null)
                throw new ArgumentNullException (nameof(propertyRefExpr), "propertyRefExpr is null.");

			var memberExpr = propertyRefExpr.Body as MemberExpression;
			if (memberExpr == null) {
				var unaryExpr = propertyRefExpr.Body as UnaryExpression;
				if (unaryExpr != null && unaryExpr.NodeType == ExpressionType.Convert)
					memberExpr = unaryExpr.Operand as MemberExpression;
			}

			if (memberExpr != null && memberExpr.Member.MemberType == MemberTypes.Property)
				return memberExpr.Member.Name;

            throw new ArgumentException ("No property reference expression was found.",nameof(propertyRefExpr));
		}

		private object ConvertToPOCO (Java.Lang.Object obj, Type convertTo)
		{
			var javaObj = obj.GetType ().GetProperty ("Instance");
			var javaBlank = javaObj.GetValue (obj, null);
			return Convert.ChangeType (javaBlank, convertTo);
		}

	}

	public static class FrameworkExtensions
	{

        public static void RegisterBindingEvents<T> (this T obj) 
			where T: class, IHandlers
		{
            obj.RegisterBindingEvents (new List<EventBindingSettings> ());
		}
			
			
        public static void RegisterBindingEvents<T> (this T obj, List<EventBindingSettings> ebs) 
			where T: class, IHandlers
		{
			var iEvent = (IHandlers)obj;
			foreach (var prop in typeof(T).GetProperties(BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public)) {
				var pn = prop.Name;
				var pt = prop.PropertyType;

				if (ControlUtil.ActionDictionary.ContainsKey (pt.Name)) {
					var eventName = ControlUtil.ActionDictionary [pt.Name];
					if (!ebs.Any (x => x.BindingObject == prop.Name && x.EventName == eventName)) {
						ControlUtil.HookUIControl (prop.GetValue (obj), obj);
					}
				}

				var ce = prop.GetCustomAttribute (typeof(RegisterEvent));
				if (ce != null) {
					var ceObj = (RegisterEvent)ce;
					foreach (var eventName in ceObj.EventNames) {
						var control = prop.GetValue (obj);
						var evClick = control.GetType ().GetEvent (eventName);
						if (evClick != null) {
							var tDelegate = evClick.EventHandlerType;
							var miHandler = typeof(T).GetMethod ("ControlsHandler", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
							if (miHandler != null) {
								var addHandler = evClick.GetAddMethod ();
								var d = Delegate.CreateDelegate (tDelegate, obj, miHandler);
								System.Object[] addHandlerArgs = { d };
								addHandler.Invoke (control, addHandlerArgs);
							}
						}
					}
				}
				var i = prop.PropertyType.GetInterface ("INotifyPropertyChanged");
				if (i != null) {
					var vm = (INotifyPropertyChanged)prop.GetValue (obj);
					vm.PropertyChanged += iEvent.ViewEventHandler;
					foreach (var vmProp in vm.GetType().GetProperties()) {
						var ii = vmProp.PropertyType.GetInterface ("INotifyCollectionChanged");
						if (ii != null) {
							var collection = (INotifyCollectionChanged)vmProp.GetValue (vm);
							collection.CollectionChanged += iEvent.ViewEventHandler;
						}
					}
				}
			}
		}
			

        public static void UnRegisterBindingEvents<T> (this T obj) 
			where T: class, IHandlers
		{
			var iEvent = (IHandlers)obj;
			foreach (var prop in typeof(T).GetProperties(BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public)) {
				var pn = prop.Name;
				var pt = prop.PropertyType;

				if (ControlUtil.ActionDictionary.ContainsKey (pt.Name)) {
					ControlUtil.UnHookUIControll (prop.GetValue (obj), obj);
				}
				var ce = prop.GetCustomAttribute (typeof(RegisterEvent));
				if (ce != null) {
					var ceObj = (RegisterEvent)ce;
					foreach (var eventName in ceObj.EventNames) {
						var control = prop.GetValue (obj);
						var evClick = control.GetType ().GetEvent (eventName);
						if (evClick != null) {
							var tDelegate = evClick.EventHandlerType;
							var miHandler = typeof(T).GetMethod ("ControlsHandler", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
							if (miHandler != null) {
								var addHandler = evClick.GetRemoveMethod ();
								var d = Delegate.CreateDelegate (tDelegate, obj, miHandler);
								System.Object[] addHandlerArgs = { d };
								addHandler.Invoke (control, addHandlerArgs);
							}
						}
					}
				}
				var i = prop.PropertyType.GetInterface ("INotifyPropertyChanged");
				if (i != null) {
					var vm = (INotifyPropertyChanged)prop.GetValue (obj);
					vm.PropertyChanged -= iEvent.ViewEventHandler;
					foreach (var vmProp in vm.GetType().GetProperties(BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public)) {
						var ii = vmProp.PropertyType.GetInterface ("INotifyCollectionChanged");
						if (ii != null) {
							var collection = (INotifyCollectionChanged)vmProp.GetValue (vm);
							collection.CollectionChanged -= iEvent.ViewEventHandler;
						}
					}
				}
			}
		}

        public static void CreateControls<T>(this T obj) where T : Activity
        {

            foreach (var prop in typeof(T).GetProperties(BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public))
            {
                var pn = prop.Name;
                if (prop.PropertyType.IsSubclassOf(typeof(DroidView)))
                {
                    try
                    {
                        var resourceId = ControlUtil.GetResourceId(pn);
                        var ctrl = obj.FindViewById(resourceId);
                        prop.SetValue(obj, ctrl);

                    }
                    catch { }
                }

            }

        }

		public static void CreateControls<T> (this T obj, DroidView view)
		{
            foreach (var prop in typeof(T).GetProperties(BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public))
            {
                var pn = prop.Name;
                if (prop.PropertyType.IsSubclassOf(typeof(DroidView)))
                {
                    try
                    {
                        var resourceId = ControlUtil.GetResourceId(pn);
                        var ctrl = view.FindViewById(resourceId);
                        prop.SetValue(obj, ctrl);

                    }
                    catch {}
                }

            }
		}
	}

}
#endif
