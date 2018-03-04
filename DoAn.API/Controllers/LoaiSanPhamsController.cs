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
    public class LoaiSanPhamsController : ApiController
    {
        private DBSanPhamDAEntities db = new DBSanPhamDAEntities();

        // GET: api/LoaiSanPhams
        public IQueryable<LoaiSanPham> GetLoaiSanPhams()
        {
            return db.LoaiSanPhams;
        }

        // GET: api/LoaiSanPhams/5
        [ResponseType(typeof(LoaiSanPham))]
        public IHttpActionResult GetLoaiSanPham(int id)
        {
            LoaiSanPham loaiSanPham = db.LoaiSanPhams.Find(id);
            if (loaiSanPham == null)
            {
                return NotFound();
            }

            return Ok(loaiSanPham);
        }

        // PUT: api/LoaiSanPhams/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutLoaiSanPham(int id, LoaiSanPham loaiSanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != loaiSanPham.Id_Loai)
            {
                return BadRequest();
            }

            db.Entry(loaiSanPham).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!LoaiSanPhamExists(id))
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

        // POST: api/LoaiSanPhams
        [ResponseType(typeof(LoaiSanPham))]
        public IHttpActionResult PostLoaiSanPham(LoaiSanPham loaiSanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.LoaiSanPhams.Add(loaiSanPham);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = loaiSanPham.Id_Loai }, loaiSanPham);
        }

        // DELETE: api/LoaiSanPhams/5
        [ResponseType(typeof(LoaiSanPham))]
        public IHttpActionResult DeleteLoaiSanPham(int id)
        {
            LoaiSanPham loaiSanPham = db.LoaiSanPhams.Find(id);
            if (loaiSanPham == null)
            {
                return NotFound();
            }

            db.LoaiSanPhams.Remove(loaiSanPham);
            db.SaveChanges();

            return Ok(loaiSanPham);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool LoaiSanPhamExists(int id)
        {
            return db.LoaiSanPhams.Count(e => e.Id_Loai == id) > 0;
        }
    }
}