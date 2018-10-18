#if __ANDROID__
using System;
using Android.Runtime;
using Android.Views;
using System.Collections;
using Android.Widget;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Reflection;
using System.ComponentModel;
using System.Linq;
using DroidView = Android.Views.View;
using Android;
using Android.Content.Res;
using DroidResources = Android.Content.Res.Resources;
using DroidApplication = Android.App.Application;
namespace Xamarin.Forms.CommonCore.Native
{
	[Preserve (AllMembers = true)]
	public static class ActivityBridge
	{
		public static Action<object> FinishedLoading { get; set; }
	}

	[Preserve (AllMembers = true)]
	public abstract class ViewHolder<T>:Java.Lang.Object
		where T:class
	{
		public abstract int CellResourceId{ get; }

        public DroidView CreateView (LayoutInflater inflator)
		{
			return inflator.Inflate (CellResourceId, null);
		}

		public abstract void Init (DroidView view);

		public abstract void Populate (T item);
	}

	public interface IBaseAdapter
	{
		void UpdateCollection (ICollection collection);

	}

	[Preserve (AllMembers = true)]
	public class HolderAdapter<T,K>:BaseAdapter<T>,IBaseAdapter
		where T: class
		where K : ViewHolder<T>, new()
	{
		public LayoutInflater Inflator { get; set; }

		public T[] Items{ get; set; }

		public HolderAdapter (LayoutInflater inflator, T[] items)
		{
			this.Inflator = inflator;
			this.Items = items;
		}

		#region IBaseAdapter implementation

		public void UpdateCollection (ICollection collection)
		{
			var List = new List<T> ();
			foreach (var item in collection) {
				List.Add ((T)item);
			}
			Items = List.ToArray ();
			this.NotifyDataSetChanged ();
		}

		#endregion

		public override long GetItemId (int position)
		{
			return 0;
		}

        public override DroidView GetView (int position, DroidView convertView, ViewGroup parent)
		{
			K holder;
			var item = Items [position];
			var view = convertView;
			if (view == null) {
				holder = new K ();
				view = holder.CreateView (Inflator);
				holder.Init (view);
				view.Tag = holder;
			} else {
				holder = view.Tag as K;
			}
			holder.Populate (item);
			return view;
		}

		public override int Count {
			get {
				return Items.Count ();
			}
		}

		public override T this [int index] {
			get {
				return Items [index];
			}
		}



	}

	[Preserve (AllMembers = true)]
	public class ControlUtil
	{
		//public static string[] ControlList = { "Button", "ListView", "Spinner", "ImageButton", "RadioGroup" };

		public static StringDictionary ActionDictionary = new StringDictionary () {
			{ "Button", "Click" },
			{ "ListView", "ItemClick" },
			{ "Spinner", "ItemSelected" },
			{ "ImageButton", "Click" },
			{ "RadioGroup", "CheckedChange" },
		};

		public static void HookUIControl (object ctrl, IHandlers handler)
		{
			if (ctrl != null) {
				var contrlType = ctrl.GetType ().Name;
				if (ActionDictionary.ContainsKey (contrlType)) {
					var eventName = ActionDictionary [contrlType];
					var eventInstance = ctrl.GetType ().GetEvent (eventName);
					if (eventInstance != null) {
						var tDelegate = eventInstance.EventHandlerType;
						var miHandler = handler.GetType ().GetMethod ("ControlsHandler", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
						if (miHandler != null) {
							var addHandler = eventInstance.GetAddMethod ();
							var d = Delegate.CreateDelegate (tDelegate, handler, miHandler);
							System.Object[] addHandlerArgs = { d };
							addHandler.Invoke (ctrl, addHandlerArgs);
						}
					}
				}
			}

		}

		public static void UnHookUIControll (object ctrl, IHandlers handler)
		{
			if (ctrl != null) {
				var contrlType = ctrl.GetType ().Name;
				if (ActionDictionary.ContainsKey (contrlType)) {
					var eventName = ActionDictionary [contrlType];
					var eventInstance = ctrl.GetType ().GetEvent (eventName);
					if (eventInstance != null) {
						var tDelegate = eventInstance.EventHandlerType;
						var miHandler = handler.GetType ().GetMethod ("ControlsHandler", BindingFlags.NonPublic | BindingFlags.Instance | BindingFlags.Public);
						if (miHandler != null) {
							var addHandler = eventInstance.GetRemoveMethod ();
							var d = Delegate.CreateDelegate (tDelegate, handler, miHandler);
							System.Object[] addHandlerArgs = { d };
							addHandler.Invoke (ctrl, addHandlerArgs);
						}
					}
				}
			}

		}

		public static int GetResourceId (string controlName)
		{
            return DroidApplication.Context.Resources.GetIdentifier(controlName, "id", DroidApplication.Context.PackageName);
		}

	}

}
#endif
