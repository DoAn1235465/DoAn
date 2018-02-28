using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DoAn.Entity;
using DoAn.Model;
using System.Web.Http.Cors;

namespace DoAn.API.Controllers
{
	[EnableCors("*", "*", "*")]
	public class AdminController : ApiController
    {
		dbSanPhamEntities db = new dbSanPhamEntities();
		[ActionName("Index")]
		public IHttpActionResult Get()
		{
			return Ok();
		}


		[ActionName("PostLogin")]
		public IHttpActionResult PostLogin(TaiKhoan tk)
		{
			if (ModelState.IsValid)
			{
				var tktt = db.TaiKhoans.Where(x => x.Username == tk.Username).Where(x => x.Password == tk.Password);
				if (tktt!=null)
				{
					return Ok();
				}
				return StatusCode(HttpStatusCode.BadRequest);
			}
			return StatusCode(HttpStatusCode.BadRequest);
		}
    }
}
