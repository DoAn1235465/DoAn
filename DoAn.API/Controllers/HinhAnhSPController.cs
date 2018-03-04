using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace DoAn.API.Controllers
{
    public class HinhAnhSPController : ApiController
    {
        // GET: api/HinhAnhSP
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET: api/HinhAnhSP/5
        public string Get(int id)
        {
            return "value";
        }

        // POST: api/HinhAnhSP
        public void Post([FromBody]string value)
        {
        }

        // PUT: api/HinhAnhSP/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE: api/HinhAnhSP/5
        public void Delete(int id)
        {
        }
    }
}
