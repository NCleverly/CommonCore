﻿﻿using System;
using System.Collections.Generic;
using System.Net;
using Microsoft.Practices.Unity;
using Microsoft.Practices.ServiceLocation;
using Newtonsoft.Json;
using System.Reflection;
using System.Linq;

#if __ANDROID__
using Android.Widget;
#endif
#if __IOS__
using Foundation;
#endif

namespace Xamarin.Forms.CommonCore
{
    public class InjectionManager
    {
        private static UnityContainer _container;
        private static UnityServiceLocator _serviceLocator;

        public static UnityContainer Container
        {
            get
            {
                return _container ?? (_container = new UnityContainer());
            }
        }
        public static T GetViewModel<T>(bool loadResources = false) where T : ObservableViewModel
        {
            if (_serviceLocator == null)
                InitializeServiceLocator();

            if (!Container.IsRegistered<T>())
                Container.RegisterType<T>(new ContainerControlledLifetimeManager());

            var vm = Container.Resolve<T>();
            if (loadResources)
                vm.LoadResources();

            return vm;
        }

        public static void ReleaseResourcesExcept<T>() where T: ObservableViewModel
        {
            if (_serviceLocator == null)
                return;
            
            foreach (var reg in Container.Registrations)
            {
                var isViewModel = reg.RegisteredType.IsSubclassOf(typeof(ObservableViewModel));
                if(isViewModel && reg.RegisteredType.Name!=typeof(T).Name)
                {
					var obj = (ObservableViewModel)Container.Resolve(reg.RegisteredType);
                    obj.ReleaseResources();
                }
            }
        }

        public static void SendViewModelMessage(string key, object obj)
        {
            if (_serviceLocator == null)
                InitializeServiceLocator();

            foreach (ContainerRegistration item in Container.Registrations)
            {
                var instance = Container.Resolve(item.RegisteredType, item.Name);
                if (instance is ObservableViewModel)
                {
                    ((ObservableViewModel)instance).OnViewMessageReceived(key, obj);
                }
            }
        }

        public static void SendViewModelMessage<T>(string key, object obj) where T : ObservableViewModel
        {
            if (_serviceLocator == null)
                InitializeServiceLocator();

            if (Container.IsRegistered<T>())
            {
                Container.Resolve<T>().OnViewMessageReceived(key, obj);
            }
        }

        public static T GetService<T, K>(bool isSingleton = false) where K : T
        {
            if (_serviceLocator == null)
                InitializeServiceLocator();

            if (!Container.IsRegistered<T>())
            {
                if (isSingleton)
                    Container.RegisterType<T, K>(new ContainerControlledLifetimeManager());
                else
                    Container.RegisterType<T, K>();
            }

            return Container.Resolve<T>();
        }

        public static T Get<T>(bool isSingleton = false) where T : class
        {
            if (_serviceLocator == null)
                InitializeServiceLocator();

            if (Container.IsRegistered<T>())
            {
                return Container.Resolve<T>();
            }
            else
            {
                return null;
            }

        }

        private static void InitializeServiceLocator()
        {
            _serviceLocator = new UnityServiceLocator(Container);
            ServiceLocator.SetLocatorProvider(() => _serviceLocator);
        }
    }


}

