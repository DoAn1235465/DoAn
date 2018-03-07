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
using DoAn.Entity.Service;
using DoAn.Entity;

namespace DoAn.API.Controllers
{
	[EnableCors("*", "*", "*")]
	public class AdminController : ApiController
    {
        private DBSanPhamDAEntities db = new DBSanPhamDAEntities();
        private sAdmin SA = new sAdmin();
        public JToken GetAll()
        {
            return JToken.FromObject(db.TaiKhoans);
        }
        [HttpPost]
        public IHttpActionResult CheckLogin(TaiKhoan tk)
        {
            bool flag = false;
            flag = SA.CheckLogin(tk) ? true : false;
            return Ok(flag);
        }
    }
}
