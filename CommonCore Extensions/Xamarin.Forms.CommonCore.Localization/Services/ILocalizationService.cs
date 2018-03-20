using System;
using System.Threading.Tasks;

namespace Xamarin.Forms.CommonCore
{
    public interface ILocalizationService
    {
        string Get(string key);
        string this[string key] { get; }
        void Reset();
        bool IsLoaded { get; set; }
    }
}
