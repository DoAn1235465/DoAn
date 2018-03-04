using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn.Entity.Service
{
	public class sLoaiSanPham : IDB.GetIdList<IQueryable>
	{
		Model.DBSanPhamDAEntities db;
		public sLoaiSanPham()
		{
			db = new Model.DBSanPhamDAEntities();
		}
		public IQueryable Get(int id)
		{
			var lLSP = from lsp in db.LoaiSanPhams where lsp.Id_Loai==id select new { TenLoaiSp = lsp.TenLoaiSp, Id_Loai = lsp.Id_Loai, Id_Nhom = lsp.Id_Nhom, GhiChu = lsp.GhiChu };
			return lLSP;
		}

		public IQueryable GetAll(int id=0)
		{
			var lLSP = from lsp in db.LoaiSanPhams where id>0?(lsp.Id_Nhom==id):(1==1) select new { TenLoaiSp = lsp.TenLoaiSp, Id_Loai = lsp.Id_Loai, Id_Nhom = lsp.Id_Nhom, GhiChu = lsp.GhiChu };
			return lLSP;
		}
	}
}
