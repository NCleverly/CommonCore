using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace Xamarin.Forms.CommonCore
{
	public class AuthenticationToken
	{
		public string access_token { get; set; }
		public string token_type { get; set; }
		public int expires_in { get; set; }
		public Dictionary<string, string> meta_data { get; set; }
		public DateTime expires { get; set; }

		public AuthenticationToken(string jsonSerializedData)
		{
			var token = JsonConvert.DeserializeObject<Dictionary<string, object>>(jsonSerializedData);
			this.access_token = (string)token["access_token"];
			//this.token_type = (string)token["token_type"];
			this.expires_in = int.Parse(token["expires_in"].ToString());
			//this.meta_data = JsonConvert.DeserializeObject<Dictionary<string, string>>((string)token["UserDetail"]);
			this.expires = DateTime.Now.AddSeconds(expires_in);

		}
	}
}
