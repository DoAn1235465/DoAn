using DoAn.Entity;
using DoAn.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAn.API.Service
{
    public class sHoaDon
    {
        private DBSanPhamDAEntities db = new DBSanPhamDAEntities();
        public IEnumerable<HoaDon> select()
        {
            var value = db.HoaDons;
            return value;
        }
        public IQueryable GetAllSP(int pageNo, int PageSize)
        {
            int skip = (pageNo - 1) * PageSize;
            var value = db.HoaDons.OrderBy(c => c.Id_HoaDon).Skip(skip).Take(PageSize);
            return value;
        }
    }
}