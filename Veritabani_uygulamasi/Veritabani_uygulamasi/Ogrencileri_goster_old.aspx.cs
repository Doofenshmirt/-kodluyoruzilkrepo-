using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
namespace Veritabani_uygulamasi
{
    public partial class Ogrencileri_goster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          ArrayList ogrencilerim=  new Ogrenciler_dao().tum_ogrencileri_getir();
            foreach (Ogrenciler gelen_ogr in ogrencilerim)
            {
                Response.Write(gelen_ogr.og_no + " " + gelen_ogr.ad_soyad
                    + " " + gelen_ogr.dog_tar.ToShortDateString() + " " + gelen_ogr.adres+"<br>");
            }
        }
    }
}