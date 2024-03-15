using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temel_Komutlar
{
    public partial class if_3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            byte notum = Convert.ToByte(not_txt.Text);
            if (notum == 5)
            { 
                Response.Write("Pekiyi");
                Response.Write("aferin yıldızlı 5");
            }
            else if (notum == 4) Response.Write("iyi");
            else if (notum == 3) Response.Write("orta");
            else if (notum == 2) Response.Write("geçer");
            else if (notum == 1 || notum == 0) Response.Write("kaldın");
            else Response.Write("Yanlış not girişi not 0 ila 5 arasında olmalı");
        }
    }
}