using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DoAn.Entity;
using System.Web.Http.Cors;
using Newtonsoft.Json.Linq;

namespace DoAn.API.Controllers
{
	[EnableCors("*","*","*")]
    public class SanPhamController : ApiController
    {
		[ActionName("Get")]
		public JToken Get(int id=0)
		{
			Model.Dao.SanPhamDao sanPham = new Model.Dao.SanPhamDao();
			var list = sanPham.GetAll(id);
			return JToken.FromObject(list);
		}
    }
}
