using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temel_Komutlar
{
    public partial class Deneme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ad = "tuncay";
            Response.Write(ad + " nbr");
        }//page load

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("merhaba hoşgeldiniz");

        }//buton1 click
    }//deneme sayfası
}