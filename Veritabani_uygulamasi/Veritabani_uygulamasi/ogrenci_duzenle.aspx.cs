using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Veritabani_uygulamasi
{
    public partial class ogrenci_duzenle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                int og_no = Convert.ToInt32(Request.QueryString["og_no"]);
                Ogrenciler ogrencimiz = new Ogrenciler_dao().ogrenci_bul(og_no);
                ogno_txt.Text = ogrencimiz.og_no.ToString();
                ad_soyad_txt.Text = ogrencimiz.ad_soyad;
                dog_tar_txt.Text = ogrencimiz.dog_tar.ToShortDateString();
                adres_txt.Text = ogrencimiz.adres;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Ogrenciler ogrencimiz = new Ogrenciler()
            {
                og_no = Convert.ToInt32(ogno_txt.Text),
                ad_soyad = ad_soyad_txt.Text,
                dog_tar = Convert.ToDateTime(dog_tar_txt.Text),
                adres = adres_txt.Text,
            };
            int sayi = new Ogrenciler_dao().ogrenci_guncelle(ogrencimiz);
            if (sayi != 0) Response.Write("kayıt güncellendi");
            else Response.Write("kayıt güncellenemedi hata var");
        }
    }
}