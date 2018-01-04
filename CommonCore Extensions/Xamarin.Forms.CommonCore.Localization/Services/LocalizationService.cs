using System.Collections.Generic;
using System.Reflection;
using Plugin.Settings;

namespace Xamarin.Forms.CommonCore
{
    public class LocalizationService: ILocalizationService
    {
        private Dictionary<string, string> localString;

        public string this[string key] => Get(key);


        public LocalizationService()
        {
            var culture = CoreDependencyService.GetDependency<ILocalize>().GetCurrentCultureInfo();
            var fileName = $"{culture.TwoLetterISOLanguageName.ToLower()}.json";

            var storage = (IFileStore)CoreDependencyService.GetService<IFileStore, FileStore>(true);
            storage.GetAsync<Dictionary<string, string>>(fileName).ContinueWith((data) =>
            {
                if(data.Result.Success){
                    localString = data.Result.Response;
                }
            });
        }

        public static void Init(string version)
        {
            var savedVersion = CrossSettings.Current.GetValueOrDefault("localizationversion", null);
            if(savedVersion==null || !savedVersion.Equals(version))
            {
                var fileString = ResourceLoader.GetEmbeddedResourceString(Assembly.GetAssembly(typeof(ResourceLoader)), "localization.csv");
                if(fileString.Error==null)
                {
                    ParseCVS(fileString.Response);
                }
                CrossSettings.Current.AddOrUpdateValue("localizationversion", version);
                CoreDependencyService.GetService<ILocalizationService,LocalizationService>(true);
            }
            else
            {
                CoreDependencyService.GetService<ILocalizationService, LocalizationService>(true);
            }
        }

        private static void ParseCVS(string data)
        {
            var storage = (IFileStore)CoreDependencyService.GetService<IFileStore, FileStore>(true);
            var lines = data.Split('\r');
            var fileNames = lines[0].Split(',');
            var fileData = new Dictionary<string, Dictionary<string, string>>();
            for (int x = 1; x < fileNames.Length; x++)
            {
                fileData.Add(fileNames[x], new Dictionary<string, string>());
            }

            for (int x = 1; x < lines.Length; x++)
            {
                var columns = lines[x].Split(',');
                var varName = columns[0];
                for (int y = 1; y < columns.Length; y++)
                {
                    var lang = fileNames[y];
                    fileData[lang].Add(varName, columns[y].Replace("\n", string.Empty));
                }
            }

            foreach (var key in fileData.Keys)
            {
                storage.SaveAsync<Dictionary<string, string>>($"{key}.json",fileData[key]).ContinueOn();
            }

        }
        public string Get(string key)
        {
            if (localString.ContainsKey(key))
                return localString[key];
            else
                return null;
        }

        public void Reset()
        {
            localString = null;
        }
    }
}
