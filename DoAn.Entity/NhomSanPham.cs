namespace DoAn.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("NhomSanPham")]
    public partial class NhomSanPham
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public NhomSanPham()
        {
            LoaiSanPhams = new HashSet<LoaiSanPham>();
        }

        [Key]
        public int Id_Nhom { get; set; }

        [Required]
        [StringLength(150)]
        public string TenNhom { get; set; }

        [Column(TypeName = "text")]
        public string ChuThich { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<LoaiSanPham> LoaiSanPhams { get; set; }
    }
}
