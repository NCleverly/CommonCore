using FFImageLoading.Forms;
using Xamarin.Forms;

namespace referenceguide
{
	public class LandingPage : ContentPage
	{
		public LandingPage()
		{
			Title = "Landing";
			BackgroundColor = Color.White;

			var topImage = new CachedImage()
			{
				Source = "sharedcode.png"
			};

			var s = new Span()
			{
				Text = "  Xamarin.Forms provides a platform to resuse code across logic and UI development. " +
					"There is tremendous debate on the use of portable class libraries versus shared projects. \n\n"
			};
			var s1 = new Span()
			{
				Text = "  After using the CommonCore project, the benefits of shared projects should be apparent with nested files, compiler directives and ease of change." +
					" It is still possible to write spaghetti code which XAML does help prevent but good team standards can medigate these issues.\n\n"
			};
			var s3 = new Span()
			{
				Text = "  CommonCore uses Unity to create static instances of the application's view models and service classes through dependency injection." +
					" Take a moment to view the readme file in order to under all the nuget files and configuration settings available through CommonCore."
			};
			var fs = new FormattedString();
			fs.Spans.Add(s);
			fs.Spans.Add(s1);
			fs.Spans.Add(s3);

			var lbl = new Label() { FormattedText = fs, Margin = 10 };

			var pnl = new StackLayout()
			{
				Children = { topImage, lbl }
			};

			Content = new ScrollView()
			{
				Content = pnl
			};
		}
	}
}
