using DoAn.API.IDB;
using DoAn.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAn.API.Service
{
	public class sHoaDon
	{
		Model.DBSanPhamDAEntities db;
		public sHoaDon()
		{
			db = new Model.DBSanPhamDAEntities();
		}
		public bool Delete(int id)
		{
			throw new NotImplementedException();
		}

		public IQueryable GetOneAll(string email,int id = 0)
		{
			var hoaDon = from hd in db.HoaDons
						 select new
						 {
							 Cty = hd.Cty,
							 DiaChi = hd.DiaChi,
							 DienThoai = hd.DienThoai,
							 Email = hd.Email,
							 fax = hd.fax,
							 HoTen = hd.HoTen,
							 Id_HoaDon = hd.Id_HoaDon,
							 NgayDat = hd.NgayDat,
							 HoaDonSanPhams = from hdsp in db.HoaDonSanPhams
											  where hdsp.Id_HoaDon == hd.Id_HoaDon select hdsp
						 };
			if (hoaDon == null)
				return null;
			if (id > 0)
				hoaDon = hoaDon.Where(x => x.Id_HoaDon == id).Where(x=>x.Email==email);
			return hoaDon;
		}

		public bool Insert(HoaDonSanPham[] dhssp,HoaDon hd)
		{
			if (dhssp == null || hd == null||dhssp.Length<=0)
				return false;
			HoaDon hoadon = new HoaDon()
			{
				Cty = hd.Cty,
				DiaChi = hd.DiaChi,
				DienThoai = hd.DienThoai,
				Email = hd.Email,
				fax = hd.fax,
				HoTen = hd.HoTen,
				Id_HoaDon = hd.Id_HoaDon,
				NgayDat = hd.NgayDat,
				HoaDonSanPhams = dhssp
			};
			db.HoaDons.Add(hoadon);
			return true;
		}
		public IEnumerable<HoaDon> select()
		{
			var value = db.HoaDons;
			return value;
		}
		public IQueryable GetAllSP(int pageNo, int PageSize)
		{
			int skip = (pageNo - 1) * PageSize;
			var value = db.HoaDons.OrderBy(c => c.Id_HoaDon).Skip(skip).Take(PageSize);
			return value;
		}
	}
}