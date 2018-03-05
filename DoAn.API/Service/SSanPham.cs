using DoAn.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using DoAn.API.IDB;

namespace DoAn.API.Service
{
	public class sSanPham : IDB.GetIdList<SanPham>, IDB.Pros<SanPham>
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

		public SanPham Get(int id)
		{
			throw new NotImplementedException();
		}
		/// <summary>
		/// Lấy tất cả sản phẩm theo loại sản phẩm hoặc theo nhóm sản phẩm
		/// </summary>
		/// <param name="id">Mã loại sản phẩm</param>
		/// <param name="id1">Mã nhóm sản phẩm</param>
		/// <returns></returns>
		public IQueryable GetAll(int id = 0,int id1=0)
		{

			var spn = db.SanPhams.Include(x => x.LoaiSanPham);
			var hasp = from sp in spn
					   select new
					   {
						   Id = sp.Id,
						   Id_Loai = sp.Id_Loai,
						   TenSp = sp.TenSp,
						   MauMuc = sp.MauMuc,
						   KichThuoc = sp.KichThuoc,
						   Gia = sp.Gia,
						   GhiChu = sp.GhiChu,
						   SoLuongBan = sp.SoLuongBan,
						   NgayCapNhat = sp.NgayCapNhat,
						   HinhAnhSPs = from  ha in db.HinhAnhSPs where ha.Id == sp.Id select ha,
						   LoaiSanPham = sp.LoaiSanPham
					   };
			if (id > 0)
			{
				hasp = hasp.Where(x => x.Id_Loai == id);
			}
			else if (id1 > 0)
			{
				hasp = hasp.Where(x => x.LoaiSanPham.Id_Nhom == id1);
			}
			return hasp;
		}
		public IEnumerable<SanPham> GetNewAll(int id)
		{
			throw new NotImplementedException();
		} 
		//Lấy tất cả sản phẩm mới nhất
		public IQueryable GetNewAllId(int id)
		{
			var spn = db.SanPhams.Include(x => x.LoaiSanPham).Take(4).OrderByDescending(x => x.NgayCapNhat);
			var hasp = from sp in spn
					   join ha in db.HinhAnhSPs on sp.Id equals ha.Id
					   select new
					   {
						   Id = sp.Id,
						   Id_Loai = sp.Id_Loai,
						   TenSp = sp.TenSp,
						   MauMuc = sp.MauMuc,
						   KichThuoc = sp.KichThuoc,
						   Gia = sp.Gia,
						   GhiChu = sp.GhiChu,
						   SoLuongBan = sp.SoLuongBan,
						   NgayCapNhat = sp.NgayCapNhat,
						   HinhAnhSPs = ha
					   };
			return hasp;
		}
		/// <summary>
		/// Sắp xếp tất cả sản phẩm theo điều kiện
		/// </summary>
		/// <param name="dk"></param>
		/// <returns></returns>
		public IEnumerable<SanPham> GetOrderAll(string dk)
		{
			var spo = db.SanPhams.Include(x => x.LoaiSanPham);
			if (dk == "Ngày cập nhật")
				spo = spo.OrderBy(x => x.NgayCapNhat);
			else if (dk == "Tên sản phẩm")
				spo = spo.OrderBy(x => x.TenSp);
			else if (dk == "Giá")
				spo = spo.OrderBy(x => x.Gia);
			return spo;
		}
		public long Insert(SanPham item)
		{
			throw new NotImplementedException();
		}

		public long UpDate(SanPham item)
		{
			throw new NotImplementedException();
		}

		IEnumerable<SanPham> GetIdList<SanPham>.GetAll(int id)
		{
			throw new NotImplementedException();
		}
	}
}
