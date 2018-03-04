using DoAn.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DoAn.Entity.Service
{
	public class sSanPham:IDB.GetIdList<IQueryable>,IDB.Pros<SanPham>
	{
		Model.DBSanPhamDAEntities db;
		public sSanPham()
		{
			db = new Model.DBSanPhamDAEntities();
		}
		public long Delete(int id)
		{
			throw new NotImplementedException();
		}

		public IQueryable Get(int id)
		{
			var sanPham = from sp in db.SanPhams where sp.Id == id join ha in db.HinhAnhSPs on sp.Id equals ha.Id select new { Id = sp.Id, Id_Loai = sp.Id_Loai, KichThuoc = sp.KichThuoc, MauMuc = sp.MauMuc, NgayCapNhat = sp.NgayCapNhat, SoLuongBan = sp.SoLuongBan, TenSp = sp.TenSp, HinhAnhSPs = new { Id_HA = ha.Id_HA, DiaChi = ha.DiaChi } };
			return sanPham;

		}

		public IQueryable GetAll(int id=0)
		{
			var sanPham = from sp in db.SanPhams where id==0?(1==1):(sp.Id_Loai==id) join ha in db.HinhAnhSPs on sp.Id equals ha.Id select new { Id = sp.Id, Id_Loai = sp.Id_Loai, KichThuoc = sp.KichThuoc, MauMuc = sp.MauMuc, NgayCapNhat = sp.NgayCapNhat, SoLuongBan = sp.SoLuongBan, TenSp = sp.TenSp, HinhAnhSPs = new { Id_HA = ha.Id_HA, DiaChi = ha.DiaChi } };
			return sanPham;
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
