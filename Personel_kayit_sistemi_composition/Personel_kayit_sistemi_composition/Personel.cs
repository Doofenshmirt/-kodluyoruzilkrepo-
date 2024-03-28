using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace Personel_kayit_sistemi_composition
{
    public class Personel
    {
        private int Per_maas;

        public int Sgk_no{ get; set; }

        public string Per_ad_soyad
        { get; set; }

        public Adres Per_adresi
        { get; set; }

        public Bolum Per_bolum
        { get; set; }

        public int Kidem_yili
        { get; set; }



        public string personel_bilgisi()
        {
            return "Personel Bilgimiz Sgk no=" + Sgk_no + "Ad soyadı=" + Per_ad_soyad + "Kıdem yılı=" + Kidem_yili +
         "Maaşı=" + Per_maas + " Adresi=" + Per_adresi.adres_bilgisi() 
         + "Bölümü=" + Per_bolum.bolum_bilgisi();
        }

        public void Maas_hesapla()
        {
            Per_maas = 10000 + Kidem_yili * 350;
        }
    }
}