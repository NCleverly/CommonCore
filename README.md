# CommonCore
Xamarin.Forms.Common

Xamarin.Forms provides a platform to reuse code across logic and UI development. There is tremendous debate on the use of portable class libraries versus shared projects.

After using the CommonCore project, the benefits of shared projects should be apparent with nested files, compiler directives and ease of change. It is still possible to write spaghetti code which XAML does help prevent but good team standards can mitigate these issues.

CommonCore uses Unity to create static instances of the application's view models and service classes through dependency injection. Take a moment to view the readme file in order to understand all the nuget files and configuration settings available through CommonCore.

API Documentation:
http://azdevelop.net/commoncoredocs/html/files.html

---

### CommonCore.Sqlite

- This project provides additional implementation to use Sqlite as the embedded database on a project that uses the CommonCore template. (Example found on reference guide project)

### CommonCore.AzurePush

- This project provides additional implementation to use Azure Push Notifications on a project that uses the CommonCore template. (Example found on reference guide project)

### CommonCore.Fonts

- This project provides additional implementation to use Custom Fonts on a project that uses the CommonCore template. (Example found on reference guide project)

### CommonCore.Logging

- This project provides additional implementation to use embedded analytics and error logging on a project that uses the CommonCore template. (Example found on reference guide project)

### CommonCore.Native

- This project provides additional implementation to use native iOS & Android projects with MVVM patterns on a project that uses the CommonCore template. (Example found on CommonCore.NativeExample project under samples)
