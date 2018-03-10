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
using DoAn.API.Service;
using System.Web.Http.Cors;

namespace DoAn.API.Controllers
{
	[EnableCors("*","*","*")]
    public class HoaDonsController : ApiController
    {
		sHoaDon hd = new sHoaDon();
        // GET: api/HoaDons
		[ActionName("GetHoaDons")]
        public IHttpActionResult GetHoaDons(string email,int id)
        {
			var hoadon = hd.GetOneAll(email, id);
            return Ok(Json(hoadon));
        }

        // GET: api/HoaDons/5

        // PUT: api/HoaDons/5
        //[ResponseType(typeof(void))]
        //public IHttpActionResult PutHoaDon(int id, HoaDon hoaDon)
        //{
            //if (!ModelState.IsValid)
            //{
            //    return BadRequest(ModelState);
            //}

            //if (id != hoaDon.Id_HoaDon)
            //{
            //    return BadRequest();
            //}

            //db.Entry(hoaDon).State = EntityState.Modified;

            //try
            //{
            //    db.SaveChanges();
            //}
            //catch (DbUpdateConcurrencyException)
            //{
            //    if (!HoaDonExists(id))
            //    {
            //        return NotFound();
            //    }
            //    else
            //    {
            //        throw;
            //    }
            //}

            //return StatusCode(HttpStatusCode.NoContent);
        //}

        // POST: api/HoaDons
        [ActionName("PostHoaDon")]
        public IHttpActionResult PostHoaDon(GioHang GioHang)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

			if (hd.Insert(GioHang.giohang,GioHang.hoaDon))
			{
				return Ok("Thành công");
			}

			return Content(HttpStatusCode.BadRequest,GioHang.hoaDon);
        }

        //// DELETE: api/HoaDons/5
        //[ResponseType(typeof(HoaDon))]
        //public IHttpActionResult DeleteHoaDon(int id)
        //{
        //    HoaDon hoaDon = db.HoaDons.Find(id);
        //    if (hoaDon == null)
        //    {
        //        return NotFound();
        //    }

        //    db.HoaDons.Remove(hoaDon);
        //    db.SaveChanges();

        //    return Ok(hoaDon);
        //}

        //protected override void Dispose(bool disposing)
        //{
        //    if (disposing)
        //    {
        //        db.Dispose();
        //    }
        //    base.Dispose(disposing);
        //}

        //private bool HoaDonExists(int id)
        //{
        //    return db.HoaDons.Count(e => e.Id_HoaDon == id) > 0;
        //}
    }
}