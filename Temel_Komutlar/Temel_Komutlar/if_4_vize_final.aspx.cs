using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temel_Komutlar
{
    public partial class if_4_vize_final : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            byte vize = Convert.ToByte(vize_txt.Text);
            byte final = Convert.ToByte(final_txt.Text);
            if (vize >= 0 && vize <= 100 && final >= 0 && final <= 100)
            {//1.if
                double ortalama = vize * 0.4 + final * 0.6;
                sonuc_lbl.Text = ortalama.ToString();
                if (ortalama >= 0 && ortalama < 50) sonuc_lbl.Text = sonuc_lbl.Text + " ile kaldınız";
                else if (ortalama >= 50 && ortalama < 70) sonuc_lbl.Text += " ile orta";
                else if (ortalama >= 70 && ortalama < 85) sonuc_lbl.Text += " ile iyi";
                else sonuc_lbl.Text += " ile mükemmel";
            }//1.if
            else
                sonuc_lbl.Text = "Not değerileri 0 ile 100 arasında olmalı tekrar deneyiniz";

        }
    }
}