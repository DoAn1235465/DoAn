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
    
    public partial class LoaiSanPham
    {
        public LoaiSanPham()
        {
            this.SanPhams = new HashSet<SanPham>();
        }
    
        public int Id_Loai { get; set; }
        public string TenLoaiSp { get; set; }
        public Nullable<int> Id_Nhom { get; set; }
        public string GhiChu { get; set; }
    
        public virtual NhomSanPham NhomSanPham { get; set; }
        public virtual ICollection<SanPham> SanPhams { get; set; }
    }
}