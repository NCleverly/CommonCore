﻿﻿using System;
using System.Collections.Generic;

namespace Xamarin.Forms.CommonCore
{
	public class AzureSettings
	{
		public string AzureHubName { get; set; }
		public string AzureListenConnection { get; set; }
	}

	public class HttpSettings
	{
		public int HttpTimeOut { get; set; } = 0;
		public bool HttpAllowAutoRedirect { get; set; } = false;
		public string IOSHttpHandler { get; set; } = "Managed";
		public string AndroidHttpHandler { get; set; } = "Managed";
	}
    public class SocialMedia
    {
        public GoogleSettings GoogleSettings { get; set; }
        public string FaceBookAppId { get; set; }
        public string MicrosoftAppId { get; set; }
    }

	public class GoogleSettings
	{
		public string GoogleAppId { get; set; }
		public string OAuthClientID_iOS { get; set; }
		public string OAuthClientID_Android { get; set; }
		public string OAuthClientID_UWP { get; set; }
	}

	public class TableName
	{
		public string tableName { get; set; }
	}

	public class SqliteSettings
	{
		public string SQLiteDatabase { get; set; }
		public List<TableName> TableNames { get; set; }
	}

	public class MobileCenterHockeyApp
	{
		public string IOSAppId { get; set; }
		public string AndroidAppId { get; set; }
		public string UWPAppId { get; set; }
	}

	public class WebApi
	{
		public string name { get; set; }
		public string url { get; set; }
	}

	public class Setting
	{
		public string name { get; set; }
		public string value { get; set; }
	}

	public class RootObject
	{
		public HttpSettings HttpSettings { get; set; }
		public AzureSettings AzureSettings { get; set; }
		public SocialMedia SocialMedia { get; set; }
		public SqliteSettings SqliteSettings { get; set; }
		public MobileCenterHockeyApp MobileCenter_HockeyApp { get; set; }
		public List<WebApi> WebApi { get; set; }
		public List<Setting> CustomSettings { get; set; }
	}
}
