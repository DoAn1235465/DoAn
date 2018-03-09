using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using DoAn.Entity;
using DoAn.Model;
using Newtonsoft.Json.Linq;
using DoAn.Entity.Service;
using DoAn.API.Service;
using System.Web.Http.Cors;

namespace DoAn.API.Controllers
{
    [EnableCors("*", "*", "*")]
    public class SanPhamsController : ApiController
    {
        sSanPham sp = new sSanPham();

        // GET: api/SanPhams/
     //   [ActionName("GetLoaiSP")]
  //      public JToken GetLoaiSP(int id)
  //      {
  //          var request = sp.GetAll(id, 0);
  //          return JToken.FromObject(request);
  //      }
		//[ActionName("GetNhomSP")]
		//public JToken GetNhomSP(int id)
		//{
		//	var request = sp.GetAll(0,id);
		//	return JToken.FromObject(request);
		//}
		[ActionName("GetNewSP")]
		public JToken GetNewSP()
		{
			var request = sp.GetNewAllId();
			return JToken.FromObject(request);
		}
		[ActionName("GetDetails")]
		public JToken GetDetails(int id)
		{
			var request = sp.Get(id);
			return JToken.FromObject(request);
		}
		// GET: api/SanPhams/5
		//[ResponseType(typeof(SanPham))]
		//public IHttpActionResult GetSanPham(int id)
		//{
		//    SanPham sanPham = db.SanPhams.Find(id);
		//    if (sanPham == null)
		//    {
		//        return NotFound();
		//    }

        [EnableCors("*", "*", "*")]
        [HttpGet]
        public IHttpActionResult GetAll(int pageNo)
        {
            int pageSize = 10;
            var value = sp.GetAllSP(pageNo, pageSize);
            return Ok(value);
        }
        [EnableCors("*", "*", "*")]
        [HttpGet]
        public IHttpActionResult count()
        {
            var value = sp.select();
            return Ok(value);
        }
        [EnableCors("*", "*", "*")]
        [HttpGet]
        public IHttpActionResult Delete(int id)
        {
            // return Ok(username);
            if (sp.Delete(id)) return Ok(true);
            return Ok(false);
        }
    }
}