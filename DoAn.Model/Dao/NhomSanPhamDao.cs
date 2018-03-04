using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn.Model.Dao
{
	public class NhomSanPhamDao : IDB.GetIdList<IQueryable>
	{

		DBSanPhamDoAnEntities db;
		public NhomSanPhamDao()
		{
			db = new DBSanPhamDoAnEntities();
		}

		public IQueryable Get(int id)
		{
			var nhomSanPham = from nsp in db.NhomSanPhams where nsp.Id_Nhom == id join lsp in db.LoaiSanPhams on nsp.Id_Nhom equals lsp.Id_Nhom join sp in db.SanPhams on lsp.Id_Loai equals sp.Id_Loai select new { Id_Nhom = nsp.Id_Nhom, TenNhom = nsp.TenNhom, LoaiSanPhams = new { TenLoaiSp = lsp.TenLoaiSp, Id_Loai = lsp.Id_Loai } };
			return nhomSanPham;
		}
		public IQueryable GetAll(int id=0)
		{
			var nhomSanPham = from nsp in db.NhomSanPhams select new { Id_Nhom = nsp.Id_Nhom, TenNhom = nsp.TenNhom };
			return nhomSanPham;
		}
	}
}
