namespace DoAn.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("HinhAnhSP")]
    public partial class HinhAnhSP
    {
        [Key]
        public int Id_HA { get; set; }

        public int? Id { get; set; }

        [Column(TypeName = "text")]
        public string DiaChi { get; set; }

        public virtual SanPham SanPham { get; set; }
    }
}
