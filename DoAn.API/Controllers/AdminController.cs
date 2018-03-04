using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Cors;
using Newtonsoft.Json.Linq;
using Newtonsoft.Json;
using DoAn.Entity;
namespace DoAn.API.Controllers
{
	[EnableCors("*", "*", "*")]
	public class AdminController : ApiController
    {

		[ActionName("Login")]
		[HttpPost]
        public IHttpActionResult Login(TaiKhoan tk)
        {
			DoAn.Model.Dao.AdminDao dao = new Model.Dao.AdminDao();
			if (dao.CheckLogin(tk))
			{
				return Ok(tk);
			}
			return StatusCode(HttpStatusCode.BadRequest);
        }
    }
}
