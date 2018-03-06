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
using Newtonsoft.Json.Linq;
using DoAn.Entity.Service;
using System.Web.Http.Cors;
using DoAn.API.Service;

namespace DoAn.API.Controllers
{
	[EnableCors("*","*","*")]
    public class SanPhamsController : ApiController
    {
		sSanPham sp = new sSanPham();

        // GET: api/SanPhams/
		[ActionName("GetLoaiSP")]
        public JToken GetLoaiSP(int id)
        {
            var request = sp.GetAll(id,0);
            return JToken.FromObject(request); 
        }
		[ActionName("GetNhomSP")]
		public JToken GetNhomSP(int id)
		{
			var request = sp.GetAll(0,id);
			return JToken.FromObject(request);
		}
<<<<<<< HEAD
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

		//    return Ok(sanPham);
		//}

		//// PUT: api/SanPhams/5
		//[ResponseType(typeof(void))]
		//public IHttpActionResult PutSanPham(int id, SanPham sanPham)
		//{
		//    if (!ModelState.IsValid)
		//    {
		//        return BadRequest(ModelState);
		//    }

		//    if (id != sanPham.Id)
		//    {
		//        return BadRequest();
		//    }

		//    db.Entry(sanPham).State = EntityState.Modified;

		//    try
		//    {
		//        db.SaveChanges();
		//    }
		//    catch (DbUpdateConcurrencyException)
		//    {
		//        if (!SanPhamExists(id))
		//        {
		//            return NotFound();
		//        }
		//        else
		//        {
		//            throw;
		//        }
		//    }

		//    return StatusCode(HttpStatusCode.NoContent);
		//}

		//// POST: api/SanPhams
		//[ResponseType(typeof(SanPham))]
		//public IHttpActionResult PostSanPham(SanPham sanPham)
		//{
		//    if (!ModelState.IsValid)
		//    {
		//        return BadRequest(ModelState);
		//    }

		//    db.SanPhams.Add(sanPham);
		//    db.SaveChanges();

		//    return CreatedAtRoute("DefaultApi", new { id = sanPham.Id }, sanPham);
		//}

		//// DELETE: api/SanPhams/5
		//[ResponseType(typeof(SanPham))]
		//public IHttpActionResult DeleteSanPham(int id)
		//{
		//    SanPham sanPham = db.SanPhams.Find(id);
		//    if (sanPham == null)
		//    {
		//        return NotFound();
		//    }

		//    db.SanPhams.Remove(sanPham);
		//    db.SaveChanges();

		//    return Ok(sanPham);
		//}

		//protected override void Dispose(bool disposing)
		//{
		//    if (disposing)
		//    {
		//        db.Dispose();
		//    }
		//    base.Dispose(disposing);
		//}

		//private bool SanPhamExists(int id)
		//{
		//    return db.SanPhams.Count(e => e.Id == id) > 0;
		//}
	}
=======


        public JToken GetAll()
        {
            var value = sp.GetAll();
            return JToken.FromObject(value);
        }
    }
>>>>>>> master
}