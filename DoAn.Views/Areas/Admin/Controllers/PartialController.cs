using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAn.Views.Areas.Admin.Controllers
{
    public class PartialController : Controller
    {
        // GET: Admin/Partial
        public PartialViewResult TopNav()
        {
            return PartialView();
        }
    }
}