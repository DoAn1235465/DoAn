//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoAn.Entity
{
    using System;
    using System.Collections.Generic;
    
    public partial class HoaDonSanPham
    {
        public int Id { get; set; }
        public int Id_HoaDon { get; set; }
        public int SoLuong { get; set; }
        public int DonGia { get; set; }
    
        public virtual HoaDon HoaDon { get; set; }
        public virtual SanPham SanPham { get; set; }
    }
}