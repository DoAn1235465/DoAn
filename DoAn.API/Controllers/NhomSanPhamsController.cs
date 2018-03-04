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

namespace DoAn.API.Controllers
{
	[EnableCors("*","*","*")]
    public class NhomSanPhamsController : ApiController
    {
        private DBSanPhamDAEntities db = new DBSanPhamDAEntities();

        // GET: api/NhomSanPhams
		[ActionName("GetAll")]
        public JToken GetAll()
        {
			var list = db.NhomSanPhams;
			return JToken.FromObject(list.ToList());
        }

        // GET: api/NhomSanPhams/5
        [ResponseType(typeof(NhomSanPham))]
        public IHttpActionResult GetNhomSanPham(int id)
        {
            NhomSanPham nhomSanPham = db.NhomSanPhams.Find(id);
            if (nhomSanPham == null)
            {
                return NotFound();
            }

            return Ok(nhomSanPham);
        }

        // PUT: api/NhomSanPhams/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutNhomSanPham(int id, NhomSanPham nhomSanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != nhomSanPham.Id_Nhom)
            {
                return BadRequest();
            }

            db.Entry(nhomSanPham).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!NhomSanPhamExists(id))
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

        // POST: api/NhomSanPhams
        [ResponseType(typeof(NhomSanPham))]
        public IHttpActionResult PostNhomSanPham(NhomSanPham nhomSanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.NhomSanPhams.Add(nhomSanPham);
            db.SaveChanges();

            return CreatedAtRoute("DefaultApi", new { id = nhomSanPham.Id_Nhom }, nhomSanPham);
        }

        // DELETE: api/NhomSanPhams/5
        [ResponseType(typeof(NhomSanPham))]
        public IHttpActionResult DeleteNhomSanPham(int id)
        {
            NhomSanPham nhomSanPham = db.NhomSanPhams.Find(id);
            if (nhomSanPham == null)
            {
                return NotFound();
            }

            db.NhomSanPhams.Remove(nhomSanPham);
            db.SaveChanges();

            return Ok(nhomSanPham);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool NhomSanPhamExists(int id)
        {
            return db.NhomSanPhams.Count(e => e.Id_Nhom == id) > 0;
        }
    }
}