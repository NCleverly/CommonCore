﻿﻿using System;
using System.Collections.Generic;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;

namespace Xamarin.Forms.CommonCore
{
	public partial class AzureSettings
	{
		public string AzureHubName { get; set; }
		public string AzureListenConnection { get; set; }
	}

	public partial class HttpSettings
	{
        public bool DisplayRawJson { get; set; } = false;
		public int HttpTimeOut { get; set; } = 0;
		public bool HttpAllowAutoRedirect { get; set; } = false;
		public string IOSHttpHandler { get; set; } = "Managed";
		public string AndroidHttpHandler { get; set; } = "Managed";
	}
    public partial class SocialMedia
    {
        public GoogleSettings GoogleSettings { get; set; }
        public string FaceBookAppId { get; set; }
        public string MicrosoftAppId { get; set; }
    }

	public partial class GoogleSettings
	{
		public string GoogleAppId { get; set; }
		public string OAuthClientID_iOS { get; set; }
		public string OAuthClientID_Android { get; set; }
		public string OAuthClientID_UWP { get; set; }
	}

	public class SqliteSettings
	{
		public string SQLiteDatabase { get; set; }
	}

	public class MobileCenterHockeyApp
	{
		public string IOSAppId { get; set; }
		public string AndroidAppId { get; set; }
		public string UWPAppId { get; set; }
	}

	public partial class CoreConfiguration
	{
        public bool AnalyticsEnabled { get; set; } = false;
        public string AESEncryptionKey { get; set; }
		public HttpSettings HttpSettings { get; set; }
		public AzureSettings AzureSettings { get; set; }
		public SocialMedia SocialMedia { get; set; }
		public SqliteSettings SqliteSettings { get; set; }
		public MobileCenterHockeyApp MobileCenter_HockeyApp { get; set; }
		public Dictionary<string,string> WebApi { get; set; }
		public Dictionary<string, string> CustomSettings { get; set; }
	}
}
