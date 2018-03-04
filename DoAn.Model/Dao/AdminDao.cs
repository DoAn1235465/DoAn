using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DoAn.Entity;
namespace DoAn.Model.Dao
{
	public class AdminDao
	{
		DBSanPhamDoAnEntities db;
		public AdminDao()
		{
			db = new DBSanPhamDoAnEntities();
		}

		public bool CheckLogin(TaiKhoan tk)
		{
			var result = db.TaiKhoans.Count(x => x.Username == tk.Username && x.Password == tk.Password);
			if (result > 0)
				return true;
			return false;
		}
	}
}
