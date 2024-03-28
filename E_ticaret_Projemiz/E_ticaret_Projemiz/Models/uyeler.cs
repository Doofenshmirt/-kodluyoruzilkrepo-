//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace E_ticaret_Projemiz.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    public partial class uyeler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public uyeler()
        {
            this.siparisler = new HashSet<siparisler>();
        }
    
        public int uyeid { get; set; }
        [Required(ErrorMessage ="Kullan�c� Ad� Gerekli")]
        public string kuladi { get; set; }
        [Required(ErrorMessage = "�ifre Gerekli")]
        [MinLength(8,ErrorMessage ="�ifreniz en az 8 karakter olmal�")]
        public string sifre { get; set; }
        [Required(ErrorMessage = "ad Gerekli")]
        public string adsoyad { get; set; }
        [Required(ErrorMessage = "Do�um tarihi Gerekli")]
        public System.DateTime dogtar { get; set; }
        [Required(ErrorMessage = "cinsiyet se�ilmeli")]
        public bool? cinsiyet { get; set; }
        [Required(ErrorMessage = "adres Gerekli")]
        public string adres { get; set; }
        [Required(ErrorMessage = "�ehir se�ilmeli")]
        public byte plaka { get; set; }
        [Required(ErrorMessage = "Email se�ilmeli"),EmailAddress(ErrorMessage ="Do�ru formatta email giriniz")]
        public string email { get; set; }
        [Required(ErrorMessage = "Meslek se�ilmeli")]
        public short meslekid { get; set; }
    
        public virtual meslek meslek { get; set; }
        public virtual sehirler sehirler { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<siparisler> siparisler { get; set; }
    }
}