using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Views.Controllers
{
    public class SanPhamController : Controller
    {
		[ActionName("GetAll")]
		// GET: SanPham
		public ActionResult GetAll()
        {
            return View();
        }
		[ActionName("GetLoaiSP")]
		public ActionResult GetLoaiSP(int id)
		{
			ViewBag.Id = id;
			return View();
		}
	}
}