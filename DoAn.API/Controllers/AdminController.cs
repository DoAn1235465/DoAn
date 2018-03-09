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
using DoAn.Entity.Service;
using DoAn.Entity;

namespace DoAn.API.Controllers
{
	[EnableCors("*", "*", "*")]
	public class AdminController : ApiController
    {
        private DBSanPhamDAEntities db = new DBSanPhamDAEntities();
        private sAdmin sa = new sAdmin();
        public JToken GetAll()
        {
            return JToken.FromObject(db.TaiKhoans);
        }
        [EnableCors("*", "*", "*")]
        [HttpGet]
        public IHttpActionResult GetAll(int pageNo)
        {
            int pageSize = 10;
            var value = sa.GetAllSP(pageNo, pageSize);
            return Ok(value);
        }
        [EnableCors("*", "*", "*")]
        [HttpGet]
        public IHttpActionResult count()
        {
            var value = sa.select();
                return Ok(value);
        }
        [EnableCors("*", "*", "*")]
        [HttpGet]
        public IHttpActionResult Delete(string username)
        {
           // return Ok(username);
            if (sa.Delete(username)) return Ok(true);
            return Ok(false);
        }
        [EnableCors("*", "*", "*")]
        [HttpPost]
        public IHttpActionResult Insert(TaiKhoan tk)
        {
            return Ok(tk);
            //if(tk != null)
            //{
            //    if (sa.Insert(tk)) return Ok(true);
            //}
            //return NotFound();
        }
    }
}
