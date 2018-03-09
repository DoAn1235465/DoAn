using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http.Cors;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using DoAn.Model;
<<<<<<< HEAD
=======
using System.Web.Http;
>>>>>>> cf83f56a7eb2c8efbc26f07e90b2c325ad05610a
using DoAn.Entity.Service;
using DoAn.Entity;

namespace DoAn.API.Controllers
{
	[EnableCors("*", "*", "*")]
	public class AdminController : ApiController
    {
        private DBSanPhamDAEntities db = new DBSanPhamDAEntities();
<<<<<<< HEAD
        private sAdmin SA = new sAdmin();
=======
        private sAdmin sa = new sAdmin();
>>>>>>> cf83f56a7eb2c8efbc26f07e90b2c325ad05610a
        public JToken GetAll()
        {
            return JToken.FromObject(db.TaiKhoans);
        }
<<<<<<< HEAD
        [HttpPost]
        public IHttpActionResult CheckLogin(TaiKhoan tk)
        {
            bool flag = false;
            flag = SA.CheckLogin(tk) ? true : false;
            return Ok(flag);
=======
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
>>>>>>> cf83f56a7eb2c8efbc26f07e90b2c325ad05610a
        }
    }
}
