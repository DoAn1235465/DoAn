using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http.Cors;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using DoAn.Model;
using System.Web.Http;

namespace DoAn.API.Controllers
{
	[EnableCors("*", "*", "*")]
	public class AdminController : ApiController
    {
        private DBSanPhamDAEntities db = new DBSanPhamDAEntities();

        public JToken GetAll()
        {
            return JToken.FromObject(db.TaiKhoans);
        }
    }
}
