//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CodeVista.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class KullaniciProfili
    {
        public int KullaniciİD { get; set; }
        public string KullaniciAdi { get; set; }
        public string Email { get; set; }
        public string TercihEdilenDil { get; set; }
        public string ProfilResmiURL { get; set; }
        public bool Cinsiyet { get; set; }
        public System.DateTime DogumTarihi { get; set; }
        public string Ulke { get; set; }
        public string Sehir { get; set; }
        public string İlgiAlanlari { get; set; }
        public string KullaniciRolu { get; set; }
        public byte[] KayitTarihi { get; set; }
        public System.DateTime SonGirisTarihi { get; set; }
        public bool ProfilTamamlamaDurumu { get; set; }
        public string SosyelMedyaHesaplari { get; set; }
        public string İletisimBilgileri { get; set; }
        public string OdemeBilgileri { get; set; }
        public int SeviyeİD { get; set; }
        public Nullable<int> ResimID { get; set; }
    
        public virtual Kullanicilar Kullanicilar { get; set; }
        public virtual Resimler Resimler { get; set; }
    }
}