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
	public class sLoaiSanPham:GetIElist<LoaiSanPham>,Pros<LoaiSanPham>
	{
		Model.DBSanPhamDAEntities db;
		public sLoaiSanPham()
		{
			db = new Model.DBSanPhamDAEntities();
		}

		public long Delete(int id)
		{
			throw new NotImplementedException();
		}

		public LoaiSanPham Get(int id)
		{
			throw new NotImplementedException();
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

		public long Insert(LoaiSanPham item)
		{
			throw new NotImplementedException();
		}

		public long UpDate(LoaiSanPham item)
		{
			throw new NotImplementedException();
		}
	}
}
