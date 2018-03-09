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
		
		[ActionName("GetByNSP")]
		public JToken GetByNSP(int id)
		{
			var request = lsp.GetAll(id);
			return JToken.FromObject(request);
		}


		[HttpGet]
        public IHttpActionResult GetAll(int pageNo)
        {
            int pageSize = 10;
            var value = lsp.GetAllSP(pageNo, pageSize);
            return Ok(value);
        }
        [EnableCors("*", "*", "*")]
        [HttpGet]
        public IHttpActionResult count()
        {
            var value = lsp.select();
            return Ok(value);
        }
		[EnableCors("*", "*", "*")]
		[HttpGet]
		public IHttpActionResult Delete(int id)
		{
			// return Ok(username);
			if (lsp.Delete(id)) return Ok(true);
			return Ok(false);
		}
	}
}