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
	public class sNhomSanPham: IDB.Pros<NhomSanPham>
	{

		Model.DBSanPhamDAEntities db;
		public sNhomSanPham()
		{
			db = new Model.DBSanPhamDAEntities();
		}

		public bool Delete(int id)
		{
			if (id == null)
				return false;
			//  db.Entry(db.TaiKhoans).State = System.Data.Entity.EntityState.Deleted;
			db.NhomSanPhams.Remove(db.NhomSanPhams.Find(id));
			db.SaveChanges();
			return true;
		}


		public IEnumerable<NhomSanPham> GetAll()
		{
			var lNSP = db.NhomSanPhams;
			return lNSP;
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

        //Sử dụng làm pagelist
        public IEnumerable<NhomSanPham> select()
        {

            var value = db.NhomSanPhams;
            return value;
        }
        public IQueryable GetAllSP(int pageNo, int PageSize)
        {
            int skip = (pageNo - 1) * PageSize;
            var value = db.NhomSanPhams.OrderBy(c => c.Id_Nhom).Skip(skip).Take(PageSize);
            return value;
        }

        NhomSanPham Pros<NhomSanPham>.Get(int id)
        {
            throw new NotImplementedException();
        }

        IEnumerable<NhomSanPham> Pros<NhomSanPham>.GetAll(int id)
        {
            throw new NotImplementedException();
        }

        public bool Insert(NhomSanPham item)
        {
            throw new NotImplementedException();
        }

        public bool UpDate(NhomSanPham item)
        {
            throw new NotImplementedException();
        }
    }
}
