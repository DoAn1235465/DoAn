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

namespace DoAn.API.Controllers
{
    public class HoaDonsController : ApiController
    {
        private DBSanPhamDAEntities db = new DBSanPhamDAEntities();

        // GET: api/HoaDons
        public IHttpActionResult GetHoaDons()
        {
            return Ok(Json(db.HoaDons));
        }

        // GET: api/HoaDons/5
        [ResponseType(typeof(HoaDon))]
        public IHttpActionResult GetHoaDon(int id)
        {
            HoaDon hoaDon = db.HoaDons.Find(id);
            if (hoaDon == null)
            {
                return NotFound();
            }

            return Ok(hoaDon);
        }

        // PUT: api/HoaDons/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutHoaDon(int id, HoaDon hoaDon)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != hoaDon.Id_HoaDon)
            {
                return BadRequest();
            }

            db.Entry(hoaDon).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!HoaDonExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return StatusCode(HttpStatusCode.NoContent);
        }

        // POST: api/HoaDons
        [ResponseType(typeof(HoaDon))]
        public IHttpActionResult PostHoaDon(HoaDon hoaDon)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.HoaDons.Add(hoaDon);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = hoaDon.Id_HoaDon }, hoaDon);
        }

        // DELETE: api/HoaDons/5
        [ResponseType(typeof(HoaDon))]
        public IHttpActionResult DeleteHoaDon(int id)
        {
            HoaDon hoaDon = db.HoaDons.Find(id);
            if (hoaDon == null)
            {
                return NotFound();
            }

            db.HoaDons.Remove(hoaDon);
            db.SaveChanges();

            return Ok(hoaDon);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool HoaDonExists(int id)
        {
            return db.HoaDons.Count(e => e.Id_HoaDon == id) > 0;
        }
    }
}