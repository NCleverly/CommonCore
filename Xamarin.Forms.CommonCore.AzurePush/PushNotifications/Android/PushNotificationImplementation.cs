#if __ANDROID__
using Android.Content;
using PushNotification.Plugin.Abstractions;
using Android.Gms.Gcm;
using Java.Lang;
using Android.Content.PM;
using Android.Gms.Iid;
using System.Threading;
using Java.IO;

namespace PushNotification.Plugin
{
    /// <summary>
    /// Implementation for Feature
    /// </summary>
    public class PushNotificationImplementation : IPushNotification
    {
        private const string GcmPreferencesKey = "GCMPreferences";
        private int DefaultBackOffMilliseconds = 3000;
        const string Tag = "PushNotification";

        /// <summary>
        /// Push Notification Listener
        /// </summary>
        internal static IPushNotificationListener Listener { get; set; }

        /// <summary>
        /// GCM Token
        /// </summary>
        public string Token { get { return GetRegistrationId(); } }

        /// <summary>
        /// Register for Push Notifications
        /// </summary>
        public void Register()
        {

            System.Diagnostics.Debug.WriteLine($"{PushNotificationKey.DomainName} - Register -  Registering push notifications");

            if (string.IsNullOrEmpty(CrossPushNotification.SenderId))
            {


                System.Diagnostics.Debug.WriteLine($"{PushNotificationKey.DomainName} - Register - SenderId is missing.");

                CrossPushNotification.PushNotificationListener.OnError($"{PushNotificationKey.DomainName} - Register - Sender Id is missing.", DeviceType.Android);

            }
            else //if (string.IsNullOrEmpty(Token))
            {
                System.Diagnostics.Debug.WriteLine($"{PushNotificationKey.DomainName} - Register -  Registering for Push Notifications");

                ThreadPool.QueueUserWorkItem(state =>
                {
                    try
                    {
                        Intent intent = new Intent(Android.App.Application.Context, typeof(PushNotificationRegistrationIntentService));
                        Android.App.Application.Context.StartService(intent);
                    }
                    catch (System.Exception ex)
                    {

                        System.Diagnostics.Debug.WriteLine($"{Tag} - Error : {ex.Message}");

                        CrossPushNotification.PushNotificationListener.OnError($"{Tag} - Register - {ex.Message}", DeviceType.Android);

                    }

                });
            }

        }

        /// <summary>
        /// Unregister push notifications
        /// </summary>
        public void Unregister()
        {
            
            ThreadPool.QueueUserWorkItem(state =>
            {
                System.Diagnostics.Debug.WriteLine($"{PushNotificationKey.DomainName} - Unregister -  Unregistering push notifications");
                try
                {
                    InstanceID instanceID = InstanceID.GetInstance(Android.App.Application.Context);
                    instanceID.DeleteToken(CrossPushNotification.SenderId, GoogleCloudMessaging.InstanceIdScope);

                    CrossPushNotification.PushNotificationListener.OnUnregistered(DeviceType.Android);
                    PushNotificationImplementation.StoreRegistrationId(Android.App.Application.Context, string.Empty);

                }
                catch (IOException ex)
                {
                    System.Diagnostics.Debug.WriteLine($"{Tag} - Error : {ex.Message}");

                    CrossPushNotification.PushNotificationListener.OnError($"{Tag} - Unregister - {ex.Message}", DeviceType.Android);

                }
            });

        }



        private string GetRegistrationId()
        {
            string retVal = "";

            Context context = Android.App.Application.Context;

            ISharedPreferences prefs = GetGCMPreferences(context);

            string registrationId = prefs.GetString(PushNotificationKey.Token, string.Empty);

            if (string.IsNullOrEmpty(registrationId))
            {
                System.Diagnostics.Debug.WriteLine($"{PushNotificationKey.DomainName} - Registration not found.");

                return retVal;
            }

            int registeredVersion = prefs.GetInt(PushNotificationKey.AppVersion, Integer.MinValue);
            int currentVersion = GetAppVersion(context);
            if (registeredVersion != currentVersion)
            {

                System.Diagnostics.Debug.WriteLine($"{PushNotificationKey.DomainName} - App version changed.");

                return retVal;
            }

            retVal = registrationId;

            return retVal;
        }
        internal static ISharedPreferences GetGCMPreferences(Context context)
        {
            
            return context.GetSharedPreferences(GcmPreferencesKey, FileCreationMode.Private);
        }

        internal static int GetAppVersion(Context context)
        {
            try
            {
                PackageInfo packageInfo = context.PackageManager.GetPackageInfo(context.PackageName, 0);
                return packageInfo.VersionCode;
            }
            catch (Android.Content.PM.PackageManager.NameNotFoundException e)
            {
                // should never happen
                throw new RuntimeException("Could not get package name: " + e);
            }

        }

        internal static void StoreRegistrationId(Context context, string regId)
        {
            ISharedPreferences prefs = GetGCMPreferences(context);
            int appVersion = GetAppVersion(context);

            System.Diagnostics.Debug.WriteLine($"{PushNotificationKey.DomainName} - Saving token on app version {appVersion}");

            ISharedPreferencesEditor editor = prefs.Edit();
            editor.PutString(PushNotificationKey.Token, regId);
            editor.PutInt(PushNotificationKey.AppVersion, appVersion);
            editor.Commit();
        }

    }
}
#endif
