using DoAn.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DoAn.API.Service
{
	public class GioHang
	{
		public List<HoaDonSanPham> giohang { get; set;}
		public HoaDon hoaDon { get; set; }
	}
}