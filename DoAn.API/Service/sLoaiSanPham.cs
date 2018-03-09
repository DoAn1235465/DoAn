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
		//Sử dụng làm pagelist
		public IEnumerable<LoaiSanPham> select1()
		{

			var value = db.LoaiSanPhams;
			return value;
		}
		public IQueryable select()
		{

			var value = from sp in db.LoaiSanPhams
						join nhom in db.NhomSanPhams on sp.Id_Nhom equals nhom.Id_Nhom
						select new
						{
							Id = sp.Id_Loai,
							TenLoai = sp.TenLoaiSp,
							TenNhom = nhom.TenNhom
						};
			return value;
		}
		public IQueryable GetAllSP(int pageNo, int PageSize)
        {
            int skip = (pageNo - 1) * PageSize;
            var value = db.LoaiSanPhams.OrderBy(c => c.Id_Loai).Skip(skip).Take(PageSize);
            return value;
        }
    }
}
