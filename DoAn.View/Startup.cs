using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(DoAn.View.Startup))]
namespace DoAn.View
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
