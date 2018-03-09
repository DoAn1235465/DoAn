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
	[EnableCors("*","*","*")]
    public class NhomSanPhamsController : ApiController
    {
		sNhomSanPham nsp = new sNhomSanPham();
        // GET: api/NhomSanPhams
        [ActionName("GetAll")]
        public JToken GetAll()
        {
            var request = nsp.GetAll();
            return JToken.FromObject(request);
        }
		[EnableCors("*", "*", "*")]
		[HttpGet]
		public IHttpActionResult GetAll(int pageNo)
		{
			int pageSize = 10;
			var value = nsp.GetAllSP(pageNo, pageSize);
			return Ok(value);
		}
		[EnableCors("*", "*", "*")]
		[HttpGet]
		public IHttpActionResult count()
		{
			var value = nsp.select();
			return Ok(value);
		}
		[EnableCors("*", "*", "*")]
		[HttpGet]
		public IHttpActionResult Delete(string id)
		{
			// return Ok(username);
			if (nsp.Delete(int.Parse(id))) return Ok(true);
			return Ok(false);
		}
	}
}