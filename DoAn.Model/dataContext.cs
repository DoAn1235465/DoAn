namespace DoAn.Model
{
	using System;
	using System.Data.Entity;
	using System.ComponentModel.DataAnnotations.Schema;
	using System.Linq;
	using Entity;

	public partial class dataContext : DbContext
	{
		public dataContext()
			: base("name=DataContext")
		{
		}

		public virtual DbSet<HinhAnhSP> HinhAnhSPs { get; set; }
		public virtual DbSet<HoaDon> HoaDons { get; set; }
		public virtual DbSet<HoaDonSanPham> HoaDonSanPhams { get; set; }
		public virtual DbSet<LienHe> LienHes { get; set; }
		public virtual DbSet<LoaiSanPham> LoaiSanPhams { get; set; }
		public virtual DbSet<NhomSanPham> NhomSanPhams { get; set; }
		public virtual DbSet<SanPham> SanPhams { get; set; }
		public virtual DbSet<TaiKhoan> TaiKhoans { get; set; }

		protected override void OnModelCreating(DbModelBuilder modelBuilder)
		{
			modelBuilder.Entity<HinhAnhSP>()
				.Property(e => e.DiaChi)
				.IsUnicode(false);

			modelBuilder.Entity<HoaDon>()
				.HasMany(e => e.HoaDonSanPhams)
				.WithRequired(e => e.HoaDon)
				.WillCascadeOnDelete(false);

			modelBuilder.Entity<NhomSanPham>()
				.Property(e => e.ChuThich)
				.IsUnicode(false);

			modelBuilder.Entity<SanPham>()
				.HasMany(e => e.HoaDonSanPhams)
				.WithRequired(e => e.SanPham)
				.WillCascadeOnDelete(false);

			modelBuilder.Entity<TaiKhoan>()
				.Property(e => e.Username)
				.IsUnicode(false);

			modelBuilder.Entity<TaiKhoan>()
				.Property(e => e.Password)
				.IsUnicode(false);

			modelBuilder.Entity<TaiKhoan>()
				.Property(e => e.Name)
				.IsUnicode(false);
		}
	}
}
