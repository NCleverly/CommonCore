using System;
using System.Collections.Generic;
using System.Linq;

namespace Xamarin.Forms.CommonCore
{
    public class InjectionManager
    {
        private static List<string> vmContainer = new List<string>();
        private static List<string> srvContainer = new List<string>();

        public static T GetViewModel<T>(bool loadResources = false) where T : ObservableViewModel
        {

            if (!vmContainer.Any(x => x == typeof(T).FullName))
            {
                DependencyService.Register<T>();
                vmContainer.Add(typeof(T).FullName);
            }
            var vm = DependencyService.Get<T>(DependencyFetchTarget.GlobalInstance);

            if (loadResources)
                vm.LoadResources();
            return vm;
        }

        public static void ReleaseResourcesExcept<T>() where T : ObservableViewModel
        {
            var caller = typeof(T).FullName;
            foreach (var name in vmContainer)
            {
                if (!name.Equals(caller))
                    ((ObservableViewModel)GetObjectByName(name)).ReleaseResources();
            }
        }

        public static void SendViewModelMessage(string key, object obj)
        {
            foreach (var name in vmContainer)
            {
                ((ObservableViewModel)GetObjectByName(name)).OnViewMessageReceived(key, obj);
            }
        }

        public static void SendViewModelMessage<T>(string key, object obj) where T : ObservableViewModel
        {
            if (vmContainer.Any(x => x == typeof(T).FullName))
                DependencyService.Get<T>(DependencyFetchTarget.GlobalInstance).OnViewMessageReceived(key, obj);
        }

        public static T GetService<T, K>(bool isSingleton = false) where K : class, T
        {
            if (!srvContainer.Any(x => x == typeof(K).FullName))
            {
                DependencyService.Register<K>();
                srvContainer.Add(typeof(T).FullName);
            }

            var iSrv = default(T);
            if (isSingleton)
            {
                iSrv = (T)DependencyService.Get<K>(DependencyFetchTarget.GlobalInstance);
            }
            else
            {
                iSrv = (T)DependencyService.Get<K>(DependencyFetchTarget.NewInstance);
            }
            return iSrv;
        }

        private static object GetObjectByName(string typeName)
        {
            var method = typeof(DependencyService).GetMethod("Get");
            var t = Type.GetType(typeName);
            var genericMethod = method.MakeGenericMethod(t);
            return genericMethod.Invoke(null, new object[] { DependencyFetchTarget.GlobalInstance });
        }

    }
}

