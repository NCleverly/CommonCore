
 - Platform Specific Installs:

    - iOS   -> Xamarin.Azure.NotificationHubs.iOS

    - Droid -> Xamarin.Azure.NotificationHubs.Android
            -> Xamarin.GooglePlayServices.Gcm

Step 1:
    Add the following settings to the json configuration
      "AzureSettings": {
        "AzureHubName": "hubname",
        "AzureListenConnection": ""
      },


Step 2:

    Reference : https://github.com/rdelrosario/xamarin-plugins/tree/master/PushNotification

    Droid:
    - You might have to enable in the project settings Multi-Dex
    - Add permission in the Manifest:
        <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED" />

    iOS:
    - enable background modes - remote notifications
    - enable appdelegate methods - https://github.com/rdelrosario/xamarin-plugins/blob/master/PushNotification/PushNotification/content/PushNotificationApplicationDelegate.txt.pp
