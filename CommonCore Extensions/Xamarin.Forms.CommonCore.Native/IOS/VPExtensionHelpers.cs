#if __IOS__
using System;
using System.Collections;
using UIKit;
using System.Collections.Generic;
using System.ComponentModel;
using Foundation;
using System.Runtime.InteropServices;

namespace Xamarin.Forms.CommonCore.Native
{


	public class ControlUtil
	{
		public static List<string> ControlList = new List<string> (){ "UIButton" };

		public static void HookUIControl (object ctrl, IHandlers handler)
		{
			if (ctrl != null) {
				var contrlType = ctrl.GetType ().Name;
				switch (contrlType) {
				case "UIButton":
					((UIButton)ctrl).TouchUpInside += handler.ControlsHandler;
					break;
				}
			}
		}

		public static void UnHookUIControll (object ctrl, IHandlers handler)
		{
			if (ctrl != null) {
				var contrlType = ctrl.GetType ().Name;
				switch (contrlType) {
				case "UIButton":
					((UIButton)ctrl).TouchUpInside -= handler.ControlsHandler;
					break;
				}
			}
		}

	}

	public interface IViewCell<T>
	{
		void Bind (T item);
	}

	public interface IBaseSource
	{
		void UpdateCollection (ICollection collection);

		UITableView TableView{ get; set; }

		object SelectedItem{ get; set; }

		event EventHandler RowSelectedEvent;

		nint Tag{ get; set; }
	}

	public class RowSelectedEventArgs: EventArgs
	{

	}

	public class TableSource<T, K> :UITableViewSource, IBaseSource
		where T:class
		where K: IViewCell<T>
	{

		public event EventHandler RowSelectedEvent;

		public nint Tag{ get; set; }

		public T[] Items{ get; set; }

		public object SelectedItem{ get; set; }

		string cellIdentifier;

		public UITableView TableView { get; set; }

		public TableSource (T[] items, string cellId)
		{
			Items = items;
			cellIdentifier = cellId;
		}

		public void UpdateCollection (ICollection collection)
		{
			var List = new List<T> ();
			foreach (var item in collection) {
				List.Add ((T)item);
			}
			Items = List.ToArray ();
			TableView.ReloadData ();
		}

		public override nint RowsInSection (UITableView tableview, nint section)
		{
			return Items.Length;
		}

		public override UITableViewCell GetCell (UITableView tableView, NSIndexPath indexPath)
		{
			if (TableView == null)
				TableView = tableView;

			var cell = tableView.DequeueReusableCell (cellIdentifier);
			if (cell == null) {
				var cellName = typeof(K).Name;
				var obj = UINib.FromName (cellName, NSBundle.MainBundle).Instantiate (null, null) [0];
				cell = (UITableViewCell)obj;
			}
			((IViewCell<T>)cell).Bind (Items [indexPath.Row]);
			return cell;
		}

		public override void RowSelected (UITableView tableView, NSIndexPath indexPath)
		{
			if (TableView == null)
				TableView = tableView;

			SelectedItem = Items [indexPath.Row];
			if (RowSelectedEvent != null) {
				RowSelectedEvent (this, new RowSelectedEventArgs ());
			}
		}
	}



	

	/// <summary>
	/// Crash reporting. Prevents null values on SIGSEGV during crashing so reporting can continue
	/// </summary>
	public static class CrashReporting
	{
        public static void RegisterUnhandledExceptions(this UIApplicationDelegate app, Action<Exception> action){
			CrashReporting.HookCrashReporterWithMono (() => {
				AppDomain.CurrentDomain.UnhandledException +=  (s, e) => {
					var ex = e.ExceptionObject as Exception;
					action.Invoke(ex);
				};
			});
		}

		[DllImport ("libc")]
		private static extern int sigaction (Signal sig, IntPtr act, IntPtr oact);

		enum Signal {
			SIGBUS = 10,
			SIGSEGV = 11
		}

		/// <summary>
		/// If you're using a crash reporter that isn't aware of Mono, pass its initialization code as a parameter to this method.
		/// Otherwise, null exceptions may crash your app.
		/// </summary>
		/// <example>
		/// <code>
		/// CrashReporting.HookCrashReporterWithMono (() => {
		///     // Using HockeyApp in this example
		///     var manager = BITHockeyManager.SharedHockeyManager;
		///     manager.Configure (HockeyAppId, null);
		///     manager.StartManager ();
		/// });
		/// </code>
		///
		/// </example>
		/// <remarks>
		/// Learn more about the problem:
		/// http://stackoverflow.com/a/14499336/458193
		/// </remarks>
		public static void HookCrashReporterWithMono (Action crashReporterInitializationCode)
		{
			if (crashReporterInitializationCode == null)
				throw new ArgumentNullException ("crashReporterInitializationCode");

			// Store Mono SIGSEGV and SIGBUS handlers

			IntPtr sigbus = Marshal.AllocHGlobal (512);
			IntPtr sigsegv = Marshal.AllocHGlobal (512);

			sigaction (Signal.SIGBUS, IntPtr.Zero, sigbus);
			sigaction (Signal.SIGSEGV, IntPtr.Zero, sigsegv);

			// Enable crash reporting

			crashReporterInitializationCode ();

			// Restore Mono SIGSEGV and SIGBUS handlers

			sigaction (Signal.SIGBUS, sigbus, IntPtr.Zero);
			sigaction (Signal.SIGSEGV, sigsegv, IntPtr.Zero);

			Marshal.FreeHGlobal (sigbus);
			Marshal.FreeHGlobal (sigsegv);
		}
	}

}
#endif
