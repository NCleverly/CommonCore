using System;
namespace Xamarin.Forms.CommonCore
{
    public partial class SqliteSettings
    {
        public string SQLiteDatabase { get; set; }
    }

    public partial class CoreConfiguration
    {
        public SqliteSettings SqliteSettings { get; set; }
    }
}
