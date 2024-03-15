using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temel_Komutlar
{
    public partial class if_5_kur_hesabi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int tl_miktari = Convert.ToInt32(tl_txt.Text);
            double sonuc;
            if (radio_dolar.Checked == true || Radio_euro.Checked == true || Radio_altin.Checked == true)
            {//1iif
                if (radio_dolar.Checked == true)
                {
                    sonuc = tl_miktari / 27.5;
                    Response.Write("Paranızın Dolar karşılığı=" + sonuc);
                }
                else if (Radio_euro.Checked == true)
                {
                    sonuc = tl_miktari / 28.7;
                    Response.Write("Paranızın euro karşılığı=" + sonuc);
                }
                else if (Radio_altin.Checked == true)
                {
                    sonuc = tl_miktari / 1720;
                    Response.Write("Paranızın altın karşılığı=" + sonuc);
                }
            }//1.if
            else Response.Write("lütfen kur seçin");
        }
    }
}