namespace DoAn.Entity
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("LienHe")]
    public partial class LienHe
    {
        [Key]
        public int Id_LienHe { get; set; }

        [Required]
        [StringLength(50)]
        public string HoTen { get; set; }

        [Required]
        [StringLength(150)]
        public string Cty { get; set; }

        [Required]
        [StringLength(150)]
        public string Email { get; set; }

        [Required]
        [StringLength(14)]
        public string DienThoai { get; set; }

        public int Fax { get; set; }

        [Required]
        [StringLength(150)]
        public string DiaChi { get; set; }

        [Required]
        [StringLength(255)]
        public string NoiDung { get; set; }

        public DateTime NgayLienHe { get; set; }
    }
}
