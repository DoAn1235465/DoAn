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
	public class sSanPham : IDB.GetIdList<SanPham>, Pros<SanPham>
    {
		Model.DBSanPhamDAEntities db;
		public sSanPham()
		{
			db = new Model.DBSanPhamDAEntities();
		}
		public bool Delete(int id)
		{
			throw new NotImplementedException();
		}
		/// <summary>
		/// Lấy 1 sản phẩm
		/// </summary>
		/// <param name="id"></param>
		/// <returns></returns>
		public IQueryable Get(int id)
		{
			var spn = db.SanPhams.Include(x => x.LoaiSanPham);
			var onesp = from sp in spn
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
						   HinhAnhSPs = from ha in db.HinhAnhSPs where ha.Id == sp.Id select ha,
						   LoaiSanPham = sp.LoaiSanPham
					   };
			if (id > 0)
			{
				onesp = onesp.Where(x => x.Id == id);
			}
			return onesp;
		}

		public IQueryable GetAll(int id = 0)
		{
			throw new NotImplementedException();
		}

<<<<<<< HEAD
		/// <summary>
		/// Lấy tất cả sản phẩm theo loại sản phẩm hoặc theo nhóm sản phẩm
		/// </summary>
		/// <param name="id">Mã loại sản phẩm</param>
		/// <param name="id1">Mã nhóm sản phẩm</param>
		/// <returns></returns>
		public IQueryable GetAll(int id = 0,int id1=0)
=======
        public IEnumerable<SanPham> GetAll()
        {
            var value = db.SanPhams;
            return value;
        }

        /// <summary>
        /// Lấy tất cả sản phẩm theo loại sản phẩm hoặc theo nhóm sản phẩm
        /// </summary>
        /// <param name="id">Mã loại sản phẩm</param>
        /// <param name="id1">Mã nhóm sản phẩm</param>
        /// <returns></returns>
        public IQueryable GetAll(int id = 0,int id1=0)
>>>>>>> master
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
		public IQueryable GetNewAllId()
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
						   HinhAnhSPs = from ha in db.HinhAnhSPs where ha.Id == sp.Id select ha,
						   LoaiSanPham = sp.LoaiSanPham
					   };
			return hasp.OrderByDescending(x => x.NgayCapNhat);
		}
		/// <summary>
		/// Sắp xếp tất cả sản phẩm theo điều kiện
		/// </summary>
		/// <param name="dk"></param>
		/// <returns></returns>
		public IQueryable GetOrderAll(string dk)
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
		public bool Insert(SanPham item)
		{
			throw new NotImplementedException();
		}

		public bool UpDate(SanPham item)
		{
			throw new NotImplementedException();
		}
<<<<<<< HEAD
	}
=======

		
    }
>>>>>>> master
}
