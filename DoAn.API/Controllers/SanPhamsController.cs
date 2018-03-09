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
		[ActionName("GetLoaiSP")]
		public JToken GetLoaiSP(int id,int page)
		{
			int pageSize = 6;
			var request = sp.GetAllSP(page,pageSize,id,0);
			return JToken.FromObject(request);
		}
		[ActionName("GetCountLoaiSP")]
		public IHttpActionResult GetCountLoaiSP(int id)
		{
			var value = sp.select(id);
			return Ok(value);
		}
		[ActionName("GetNhomSP")]
		public JToken GetNhomSP(int id,int page)
		{
			int pageSize = 6;
			var request = sp.GetAllSP(page, pageSize, 0, id);
			return JToken.FromObject(request);
		}
		[ActionName("GetCountNhomSP")]
		public IHttpActionResult GetCountNhomSP(int id)
		{
			var value = sp.select(0,id);
			return Ok(value);
		}
		[ActionName("GetNewSP")]
		public JToken GetNewSP(int page)
		{
			int pageSize = 6;
			var request = sp.GetNewAllId(page,pageSize);
			return JToken.FromObject(request);
		}
		[ActionName("GetDetails")]
		public JToken GetDetails(int id)
		{
			var request = sp.GetOne(id);
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

        [ActionName("GetAll")]
        public IHttpActionResult GetAll(int pageNo)
        {
            int pageSize = 10;
            var value = sp.GetAllSP(pageNo, pageSize);
            return Ok(value);
        }
        [ActionName("GetCount")]
		public IHttpActionResult GetCount()
        {
            var value = sp.select();
            return Ok(value);
        }
    }
}