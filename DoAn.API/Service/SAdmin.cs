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
            throw new NotImplementedException();
        }

        public bool UpDate(TaiKhoan item)
        {
            throw new NotImplementedException();
        }
    }
}
