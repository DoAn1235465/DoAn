﻿using DoAn.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;
using DoAn.API.IDB;

namespace DoAn.API.Service
{
	public class sSanPham :  Pros<SanPham>
    {
		Model.DBSanPhamDAEntities db;
		public sSanPham()
		{
			db = new Model.DBSanPhamDAEntities();
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



        /// <summary>
        /// Lấy tất cả sản phẩm theo loại sản phẩm hoặc theo nhóm sản phẩm
        /// </summary>
        /// <param name="id">Mã loại sản phẩm</param>
        /// <param name="id1">Mã nhóm sản phẩm</param>GetAll
        /// <returns></returns>




        public IEnumerable<SanPham> select()
        {
           
            var value = db.SanPhams;
            return value;
        }
        public IQueryable GetAllSP(int pageNo, int PageSize)
        {
            int skip = (pageNo - 1) * PageSize;
            var value = db.SanPhams.OrderBy(c => c.Id).Skip(skip).Take(PageSize);
            return value;
        }


        /// <summary>
        /// Lấy tất cả sản phẩm mới nhất
        /// </summary>
        /// <returns></returns>
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

        SanPham Pros<SanPham>.Get(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<SanPham> GetAll(int id = 0)
        {
            throw new NotImplementedException();
        }

        public bool Insert(SanPham item)
        {
            throw new NotImplementedException();
        }

        public bool UpDate(SanPham item)
        {
            throw new NotImplementedException();
        }

        public bool Delete(int id)
        {
            throw new NotImplementedException();
        }
      
    }

}
