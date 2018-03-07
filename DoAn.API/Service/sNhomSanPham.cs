using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using DoAn.Entity;
using DoAn.API.IDB;

namespace DoAn.API.Service
{
	public class sNhomSanPham: IDB.Pros<SanPham>
	{

		Model.DBSanPhamDAEntities db;
		public sNhomSanPham()
		{
			db = new Model.DBSanPhamDAEntities();
		}

        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }

        public SanPham Get(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<NhomSanPham> GetAll()
		{
			var lNSP = db.NhomSanPhams;
			return lNSP;
		}

        public IEnumerable<SanPham> GetAll(int id = 0)
        {
            throw new NotImplementedException();
        }

        public bool Insert(SanPham item)
		{
			if(item != null)
            {
                db.Entry(db.SanPhams).State = EntityState.Modified;
                db.SanPhams.Add(item);
                db.SaveChanges();
                return true;
            }
            return false;
		}

        public bool UpDate(SanPham item)
        {
            throw new NotImplementedException();
        }
    }
}
