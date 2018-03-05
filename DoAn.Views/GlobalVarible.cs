using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;

namespace DoAn.Views
{
	public static class GlobalVarible
	{
		public static HttpClient client = new HttpClient();
		static GlobalVarible()
		{
			client.BaseAddress = new Uri("http://localhost:52178/api/");
			client.DefaultRequestHeaders.Clear();
			client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
		}
	}
}