using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temel_Komutlar
{
    public partial class if_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            byte not_degeri = Convert.ToByte(not_txt.Text);
            if (not_degeri >= 50) 
            {
                Response.Write("Geçtiniz aferin");
            }//if
            else//değilse
            {
                Response.Write("kaldınız eyülde gel");
            }
        }//click
    }
}