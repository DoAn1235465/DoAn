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
    [EnableCors("*", "*", "*")]
    public class SanPhamsController : ApiController
    {
        sSanPham sp = new sSanPham();

        // GET: api/SanPhams/
        [ActionName("GetLoaiSP")]
        public JToken GetLoaiSP(int id)
        {
            var request = sp.GetAll(id, 0);
            return JToken.FromObject(request);
        }
        [ActionName("GetNhomSP")]
        public JToken GetNhomSP(int id)
        {
            var request = sp.GetAll(0, id);
            return JToken.FromObject(request);
        }

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

        public JToken GetAll()
        {
            var value = sp.GetAll();
            return JToken.FromObject(value);
        }
    }

}