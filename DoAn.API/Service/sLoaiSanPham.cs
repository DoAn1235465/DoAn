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
	public class sLoaiSanPham:Pros<LoaiSanPham>
	{
		Model.DBSanPhamDAEntities db;
		public sLoaiSanPham()
		{
			db = new Model.DBSanPhamDAEntities();
		}

		public bool Delete(int id)
		{
            if(!(id >= 0))
            {
                return false;
            }
            db.Entry(db.LoaiSanPhams).State = EntityState.Modified;
            db.LoaiSanPhams.Remove(db.LoaiSanPhams.Find(id));
            db.SaveChanges();
            return true;
		}

		public LoaiSanPham Get(int id)
		{
            if (!(id >= 0))
            {
                var value = db.LoaiSanPhams.Find(id);
                return value;
            }
            return null;
		}

        public IEnumerable<LoaiSanPham> GetAll()
        {

            var value = db.LoaiSanPhams;
            return value;
        }

        public IEnumerable<LoaiSanPham> GetAll(int id = 0)
		{
			var lsp = db.LoaiSanPhams.Include(x => x.NhomSanPham);
			if (id > 0)
			{
				lsp = lsp.Where(x => x.Id_Nhom == id);
			}
			return lsp;
		}

		public bool Insert(LoaiSanPham item)
		{
			if(item != null)
            {
                db.Entry(db.LoaiSanPhams).State = EntityState.Added;
                db.LoaiSanPhams.Add(item);
                db.SaveChanges();
                return true;
            }
            return false;
		}

		public bool UpDate(LoaiSanPham item)
		{
			if(item != null)
            {
                db.Entry(db.LoaiSanPhams).State = EntityState.Modified;
                db.LoaiSanPhams.Add(item);
                db.SaveChanges();
                return true;
            }
            return false;
		}
	}
}
