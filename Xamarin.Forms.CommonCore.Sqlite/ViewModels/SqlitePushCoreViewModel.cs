using System;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{
    public partial class CoreViewModel
    {
        /// <summary>
        /// Embedded local database with tables defined by the application configuration file
        /// </summary>
        /// <value>The sqlite db.</value>
        [JsonIgnore]
        protected ISqliteDb SqliteDb
        {
            get
            {
                return (ISqliteDb)CoreDependencyService.GetService<ISqliteDb, SqliteDb>(true);
            }
        }
    }
}
