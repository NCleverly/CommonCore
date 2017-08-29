using System;
namespace Xamarin.Forms.CommonCore
{
    public abstract class BoundPage<T> : BasePages
		where T : ObservableViewModel
	{
        private long appearingUTC;

        public T VM
        {
            get { return InjectionManager.GetViewModel<T>(); }
        }

		public BoundPage()
		{
			this.BindingContext = VM;
            if (!string.IsNullOrEmpty(VM.PageTitle))
                VM.PageTitle = this.Title;
            this.SetBinding(ContentPage.TitleProperty, "PageTitle");

		}

		protected override void OnAppearing()
		{
            appearingUTC = DateTime.UtcNow.Ticks;

			if (Navigation != null)
				CoreSettings.AppNav = Navigation;
			base.OnAppearing();
		}

        protected override void OnDisappearing()
        {
			if (CoreSettings.AppData.Instance.Settings.AnalyticsEnabled)
			{
                VM.Log.LogAnalytics(this.GetType().FullName, new TrackingMetatData()
                {
                    StartUtc = appearingUTC,
                    EndUtc = DateTime.UtcNow.Ticks
                });
			}
            base.OnDisappearing();
        }

	}
}

