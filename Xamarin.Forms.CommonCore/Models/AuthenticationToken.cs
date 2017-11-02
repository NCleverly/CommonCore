using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{
	public class AuthenticationToken
	{
		public string Token { get; set; }
		public string TokenType { get; set; }
		public int ExpiresIn { get; set; }
		public Dictionary<string, string> MetaData { get; set; }
        public DateTime Expires { get; set; } // this.Expires = DateTime.Now.AddSeconds(ExpiresIn);

	}
}
