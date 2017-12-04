This portion of shared project comes from a nuget plugin.  All credit goes to these guys but I needed
the code to build against my projects api level.  Read all documentation at:

https://github.com/rdelrosario/xamarin-plugins/tree/master/PushNotification

Droid:
- You might have to enable in the project settings Multi-Dex
- Add permission in the Manifest:
    <uses-permission android:name="android.permission.RECEIVE_BOOT_COMPLETED" />

iOS:
- enable background modes - remote notifications
- enable appdelegate methods - https://github.com/rdelrosario/xamarin-plugins/blob/master/PushNotification/PushNotification/content/PushNotificationApplicationDelegate.txt.pp
