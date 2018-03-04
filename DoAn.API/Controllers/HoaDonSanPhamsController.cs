﻿using System;
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
    public class HoaDonSanPhamsController : ApiController
    {
        private DBSanPhamDAEntities db = new DBSanPhamDAEntities();

        // GET: api/HoaDonSanPhams
        public IQueryable<HoaDonSanPham> GetHoaDonSanPhams()
        {
            return db.HoaDonSanPhams;
        }

        // GET: api/HoaDonSanPhams/5
        [ResponseType(typeof(HoaDonSanPham))]
        public IHttpActionResult GetHoaDonSanPham(int id)
        {
            HoaDonSanPham hoaDonSanPham = db.HoaDonSanPhams.Find(id);
            if (hoaDonSanPham == null)
            {
                return NotFound();
            }

            return Ok(hoaDonSanPham);
        }

        // PUT: api/HoaDonSanPhams/5
        [ResponseType(typeof(void))]
        public IHttpActionResult PutHoaDonSanPham(int id, HoaDonSanPham hoaDonSanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            if (id != hoaDonSanPham.Id)
            {
                return BadRequest();
            }

            db.Entry(hoaDonSanPham).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!HoaDonSanPhamExists(id))
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

        // POST: api/HoaDonSanPhams
        [ResponseType(typeof(HoaDonSanPham))]
        public IHttpActionResult PostHoaDonSanPham(HoaDonSanPham hoaDonSanPham)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            db.HoaDonSanPhams.Add(hoaDonSanPham);

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateException)
            {
                if (HoaDonSanPhamExists(hoaDonSanPham.Id))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtRoute("DefaultApi", new { id = hoaDonSanPham.Id }, hoaDonSanPham);
        }

        // DELETE: api/HoaDonSanPhams/5
        [ResponseType(typeof(HoaDonSanPham))]
        public IHttpActionResult DeleteHoaDonSanPham(int id)
        {
            HoaDonSanPham hoaDonSanPham = db.HoaDonSanPhams.Find(id);
            if (hoaDonSanPham == null)
            {
                return NotFound();
            }

            db.HoaDonSanPhams.Remove(hoaDonSanPham);
            db.SaveChanges();

            return Ok(hoaDonSanPham);
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }

        private bool HoaDonSanPhamExists(int id)
        {
            return db.HoaDonSanPhams.Count(e => e.Id == id) > 0;
        }
    }
}