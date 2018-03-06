using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Http.Description;
using DoAn.Entity;
using DoAn.Model;
using System.Web.Http.Cors;
using Newtonsoft.Json.Linq;
using DoAn.Entity.Service;
using DoAn.API.Service;

namespace DoAn.API.Controllers
{
	[EnableCors("*", "*", "*")]
	public class LoaiSanPhamsController : ApiController
    {
		sLoaiSanPham lsp = new sLoaiSanPham();

        // GET: api/LoaiSanPhams
		//[ActionName("GetAll")]
        public JToken GetAll()
        {
			var request = lsp.GetAll();
			return JToken.FromObject(request.ToList());
        }
	}
}