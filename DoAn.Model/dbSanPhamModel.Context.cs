﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DoAn.Model
{
	using Entity;
	using System;
	using System.Data.Entity;
	using System.Data.Entity.Infrastructure;
	using System.Runtime.Serialization;

	[DataContract(IsReference = true)]
    public partial class DBSanPhamDAEntities : DbContext
    {
        public DBSanPhamDAEntities()
            : base("name=DBSanPhamDAEntities")
        {
			Configuration.ProxyCreationEnabled = false;
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<HinhAnhSP> HinhAnhSPs { get; set; }
        public virtual DbSet<HoaDon> HoaDons { get; set; }
        public virtual DbSet<HoaDonSanPham> HoaDonSanPhams { get; set; }
        public virtual DbSet<LienHe> LienHes { get; set; }
        public virtual DbSet<LoaiSanPham> LoaiSanPhams { get; set; }
        public virtual DbSet<NhomSanPham> NhomSanPhams { get; set; }
        public virtual DbSet<SanPham> SanPhams { get; set; }
        public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }
    }
}
