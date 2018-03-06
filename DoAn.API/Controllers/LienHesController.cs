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
    public class LienHesController : ApiController
    {
        private DBSanPhamDAEntities db = new DBSanPhamDAEntities();

        // GET: api/LienHes
        public IQueryable<LienHe> GetLienHes()
        {
            return db.LienHes;
        }
    }
}