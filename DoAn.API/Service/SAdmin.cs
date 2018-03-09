using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DoAn.API.IDB;
using DoAn.Entity;
namespace DoAn.Entity.Service
{
	public class sAdmin:  API.IDB.Pros<TaiKhoan>
	{
		Model.DBSanPhamDAEntities db;
		public sAdmin()
		{
			db = new Model.DBSanPhamDAEntities();
		}

		public bool CheckLogin(TaiKhoan tk)
		{
			var result = db.TaiKhoans.Count(x => x.Username == tk.Username && x.Password == tk.Password);
			if (result > 0)
				return true;
			return false;
		}

		public bool Delete(int id)
		{
			throw new NotImplementedException();
		}
		public bool Delete(string id)
		{
			if (string.IsNullOrEmpty(id))
				return false;
			//  db.Entry(db.TaiKhoans).State = System.Data.Entity.EntityState.Deleted;
			db.TaiKhoans.Remove(db.TaiKhoans.Find(id));
			db.SaveChanges();
			return true;
		}

		public TaiKhoan Get(int id)
		{
			throw new NotImplementedException();
		}

		public IEnumerable<TaiKhoan> GetAll(int id = 0)
		{
			throw new NotImplementedException();
		}

		public bool Insert(TaiKhoan item)
		{
			if (item == null) return false;
			db.TaiKhoans.Add(item);
			db.SaveChanges();
			return true;
		}

		public bool UpDate(TaiKhoan item)
		{
			throw new NotImplementedException();
		}
		//Sử dụng làm pagelist
		public IEnumerable<TaiKhoan> select()
		{
			var value = db.TaiKhoans;
			return value;
		}
		public IQueryable GetAllSP(int pageNo, int PageSize)
		{
			int skip = (pageNo - 1) * PageSize;
			var value = db.TaiKhoans.OrderBy(c => c.Name).Skip(skip).Take(PageSize);
			return value;
		}
	}
}
