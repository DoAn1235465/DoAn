using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;

namespace DoAn.API.Controllers
{
	[EnableCors("*","*","*")]
    public class NhomSanPhamController : ApiController
    {
		[ActionName("GetAll")]
		public JToken GetAll()
		{
			Model.Dao.NhomSanPhamDao dao = new Model.Dao.NhomSanPhamDao();
			var lNSP = dao.GetAll();
			return JToken.FromObject(lNSP);
		}
	}
}
