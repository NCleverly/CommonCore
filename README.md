# CommonCore
Xamarin.Forms.Common

Xamarin.Forms provides a platform to resuse code across logic and UI development. There is tremendous debate on the use of portable class libraries versus shared projects.

After using the CommonCore project, the benefits of shared projects should be apparent with nested files, compiler directives and ease of change. It is still possible to write spaghetti code which XAML does help prevent but good team standards can mitigate these issues.

CommonCore uses Unity to create static instances of the application's view models and service classes through dependency injection. Take a moment to view the readme file in order to understand all the nuget files and configuration settings available through CommonCore.
