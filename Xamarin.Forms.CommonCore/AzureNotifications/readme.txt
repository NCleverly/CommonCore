﻿
Implement CrossPushNotificationListener per the explanation found at:
	https://github.com/rdelrosario/xamarin-plugins/tree/master/PushNotification

Droid:
- In the MainActivity set LocalNotify.MainType = typeof(MainActivity);
- You might have to enable in the project settings Multi-Dex

iOS:
- enable background modes - remote notifications
- enable appdelegate methods - https://github.com/rdelrosario/xamarin-plugins/blob/master/PushNotification/PushNotification/content/PushNotificationApplicationDelegate.txt.pp