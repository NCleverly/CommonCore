using System;
using System.Collections.Generic;

namespace Xamarin.Forms.CommonCore
{
	public class AuthenticationToken
	{
		public string Token { get; set; }
        public string RefreshToken { get; set; }
		public int ExpiresIn { get; set; }
		public Dictionary<string, string> MetaData { get; set; }
        public long UTCExpiration { get; set; } // this.Expires = DateTime.Now.AddSeconds(ExpiresIn);

	}
}
