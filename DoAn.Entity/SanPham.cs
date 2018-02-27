namespace DoAn.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("SanPham")]
    public partial class SanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public SanPham()
        {
            HinhAnhSPs = new HashSet<HinhAnhSP>();
            HoaDonSanPhams = new HashSet<HoaDonSanPham>();
        }

        public int Id { get; set; }

        public int? Id_Loai { get; set; }

        [Required]
        [StringLength(150)]
        public string TenSp { get; set; }

        [StringLength(150)]
        public string MauMuc { get; set; }

        [StringLength(10)]
        public string KichThuoc { get; set; }

        public int Gia { get; set; }

        [StringLength(150)]
        public string GhiChu { get; set; }

        public int? SoLuongBan { get; set; }

        public DateTime NgayCapNhat { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HinhAnhSP> HinhAnhSPs { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<HoaDonSanPham> HoaDonSanPhams { get; set; }

        public virtual LoaiSanPham LoaiSanPham { get; set; }
    }
}
