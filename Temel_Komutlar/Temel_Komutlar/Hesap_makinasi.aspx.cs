using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temel_Komutlar
{
    public partial class Hesap_makinasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void topla_btn_Click(object sender, EventArgs e)
        {

            int sayi1 = Convert.ToInt32(sayi1_txt.Text);
            int sayi2 = Convert.ToInt32(sayi2_txt.Text);
            int top = sayi1 + sayi2;
            Response.Write("Toplama sonucu=" + top);
        }

        protected void cikar_btn_Click(object sender, EventArgs e)
        {
            int sayi1 = Convert.ToInt32(sayi1_txt.Text);
            int sayi2 = Convert.ToInt32(sayi2_txt.Text);
            int fark = sayi1 - sayi2;
            Response.Write("çıkarma sonucu=" + fark);

        }

        protected void top_Click(object sender, EventArgs e)
        {

        }

        protected void carp_btn_Click(object sender, EventArgs e)
        {

        }
    }
}