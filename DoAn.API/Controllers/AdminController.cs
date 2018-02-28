using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DoAn.Entity;
using DoAn.Model;
using System.Web.Http.Cors;
using Newtonsoft.Json.Linq;

namespace DoAn.API.Controllers
{
	[EnableCors("*", "*", "*")]
	public class AdminController : ApiController
    {
		dbSanPhamEntities db = new dbSanPhamEntities();

		[ActionName("Get")]
		public JToken Get()
		{
			return JToken.FromObject(db.TaiKhoans.ToList());
		}
		[ActionName("PostLogin")]
		public IHttpActionResult PostLogin(TaiKhoan tk)
		{
			if (ModelState.IsValid)
			{
				var tktt = db.TaiKhoans.Where(x => x.Username.ToLower() == tk.Username.ToLower()).Where(x => x.Password.ToLower() == tk.Password.ToLower());
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
