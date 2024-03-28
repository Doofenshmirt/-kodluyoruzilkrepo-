using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Veritabani_uygulamasi
{
    public partial class ogrenci_sil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         int silinecek_ogno=Convert.ToInt32 (Request.QueryString["og_no"]);
          int sayi= new Ogrenciler_dao().ogrenci_sil(silinecek_ogno);
            Response.Redirect("ogrenci_goster.aspx");
        }
    }
}