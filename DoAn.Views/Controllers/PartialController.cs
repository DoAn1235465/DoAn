using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Entity;
using System.Net.Http;

namespace DoAn.Views.Controllers
{
    public class PartialController : Controller
    {
		
         //GET: Partial

		public PartialViewResult TopNav()
		{
			return PartialView();
		}
		public PartialViewResult TopMenu()
		{
			return PartialView();
		}


		public PartialViewResult ShoppingCart()
		{
			return PartialView();
		}

		public PartialViewResult RightContent()
		{
			return PartialView();
		}
		public PartialViewResult NivoSlider()
		{
			return PartialView();
		}
    }
}