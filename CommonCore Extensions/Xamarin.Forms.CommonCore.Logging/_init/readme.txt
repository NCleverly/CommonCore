Step 1:
    Modify OnAppearing and OnDisappearing methods on each Page

        protected override void OnAppearing()
        {
            this.SetAnalyticsTimeStamp();
            base.OnAppearing();
        }
        protected override void OnDisappearing()
        {
            this.SaveAnalyticsDetails();
            base.OnDisappearing();
        }