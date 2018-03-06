using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using DoAn.Entity;

namespace DoAn.API.Service
{
	public class sNhomSanPham: IDB.GetIElist<NhomSanPham>,IDB.Pros<SanPham>
	{

		Model.DBSanPhamDAEntities db;
		public sNhomSanPham()
		{
			db = new Model.DBSanPhamDAEntities();
		}

		public long Delete(int id)
		{
			throw new NotImplementedException();
		}

		public NhomSanPham Get(int id)
		{
			throw new NotImplementedException();
		}

		public IEnumerable<NhomSanPham> GetAll(int id = 0)
		{
			var lNSP = db.NhomSanPhams;
			return lNSP;
		}

		public long Insert(SanPham item)
		{
			throw new NotImplementedException();
		}

		public long UpDate(SanPham item)
		{
			throw new NotImplementedException();
		}
	}
}
