using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using DoAn.Model;

namespace DoAn.API.Controllers
{
	[EnableCors("*", "*", "*")]
	public class AdminController : ApiController
    {
        DBSanPhamDoAnEntities db = new DBSanPhamDoAnEntities();
        public JToken GetAll()
        {
            var values = db.TaiKhoans;
            return JToken.FromObject(values);
        }
    }
}
