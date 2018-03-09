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
using DoAn.API.Service;

namespace DoAn.API.Controllers
{
	[EnableCors("*","*","*")]
    public class HoaDonSanPhamsController : ApiController
    {
		private sHoaDon hd = new sHoaDon();
		//	[EnableCors("*", "*", "*")]
		[ActionName("GetSanPham")]
		public JToken GetSanPham(int id)
		{
			sSanPham sp = new sSanPham();
			var sanpham = sp.GetOne(id);
			return JToken.FromObject(sanpham);
		}


		//[EnableCors("*", "*", "*")]
		//[HttpGet]
		//public IHttpActionResult GetAll(int pageNo)
		//{
		//	int pageSize = 10;
		//	var value = hd.GetAllSP(pageNo, pageSize);
		//	return Ok(value);
		//}
		//[EnableCors("*", "*", "*")]
		//[HttpGet]
		//public IHttpActionResult count()
		//{
		//	var value = hd.select();
		//	return Ok(value);
		//}
	}
}