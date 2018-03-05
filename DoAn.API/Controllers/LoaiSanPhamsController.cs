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
		[ActionName("GetAll")]
        public JToken GetAll(int id)
        {
			var request = lsp.GetAll(id);
			return JToken.FromObject(request.ToList());
        }

		////GET: api/LoaiSanPhams/5
  //      [ResponseType(typeof(LoaiSanPham))]
		//public IHttpActionResult GetLoaiSanPham(int id)
		//{
		//	LoaiSanPham loaiSanPham = db.LoaiSanPhams.Find(id);
		//	if (loaiSanPham == null)
		//	{
		//		return NotFound();
		//	}

		//	return Ok(loaiSanPham);
		//}

		//// PUT: api/LoaiSanPhams/5
		//[ResponseType(typeof(void))]
		//public IHttpActionResult PutLoaiSanPham(int id, LoaiSanPham loaiSanPham)
		//{
		//    if (!ModelState.IsValid)
		//    {
		//        return BadRequest(ModelState);
		//    }

		//    if (id != loaiSanPham.Id_Loai)
		//    {
		//        return BadRequest();
		//    }

		//    db.Entry(loaiSanPham).State = EntityState.Modified;

		//    try
		//    {
		//        db.SaveChanges();
		//    }
		//    catch (DbUpdateConcurrencyException)
		//    {
		//        if (!LoaiSanPhamExists(id))
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

		//// POST: api/LoaiSanPhams
		//[ResponseType(typeof(LoaiSanPham))]
		//public IHttpActionResult PostLoaiSanPham(LoaiSanPham loaiSanPham)
		//{
		//    if (!ModelState.IsValid)
		//    {
		//        return BadRequest(ModelState);
		//    }

		//    db.LoaiSanPhams.Add(loaiSanPham);
		//    db.SaveChanges();

		//    return CreatedAtRoute("DefaultApi", new { id = loaiSanPham.Id_Loai }, loaiSanPham);
		//}

		//// DELETE: api/LoaiSanPhams/5
		//[ResponseType(typeof(LoaiSanPham))]
		//public IHttpActionResult DeleteLoaiSanPham(int id)
		//{
		//    LoaiSanPham loaiSanPham = db.LoaiSanPhams.Find(id);
		//    if (loaiSanPham == null)
		//    {
		//        return NotFound();
		//    }

		//    db.LoaiSanPhams.Remove(loaiSanPham);
		//    db.SaveChanges();

		//    return Ok(loaiSanPham);
		//}

		//protected override void Dispose(bool disposing)
		//{
		//    if (disposing)
		//    {
		//        db.Dispose();
		//    }
		//    base.Dispose(disposing);
		//}

		//private bool LoaiSanPhamExists(int id)
		//{
		//    return db.LoaiSanPhams.Count(e => e.Id_Loai == id) > 0;
		//}
	}
}