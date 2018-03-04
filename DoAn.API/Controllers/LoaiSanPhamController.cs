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
    public class LoaiSanPhamController : ApiController
    {

		[ActionName("GetAll")]
		public JToken GetAll(int id=0)
		{
			Model.Dao.LoaiSanPhamDao dao = new Model.Dao.LoaiSanPhamDao();
			var lNSP = dao.GetAll(id);
			return JToken.FromObject(lNSP);
		}
    }
}
