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
    
    public partial class NhomSanPham
    {
        //public NhomSanPham()
        //{
        //    this.LoaiSanPhams = new HashSet<LoaiSanPham>();
        //}
    
        public int Id_Nhom { get; set; }
        public string TenNhom { get; set; }
        public string ChuThich { get; set; }
    
        public virtual ICollection<LoaiSanPham> LoaiSanPhams { get; set; }
    }
}
