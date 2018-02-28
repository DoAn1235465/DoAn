using System.Web.Mvc;

namespace DoAn.Views.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
			context.MapRoute(
				"Admin_default",
				"Admin/{controller}/{action}/{id}",
				new { controller="Home", action = "Login", id = UrlParameter.Optional },
				new string[] { "DoAn.Views.Areas.Admin.Controllers" }
			);
		}
    }
}