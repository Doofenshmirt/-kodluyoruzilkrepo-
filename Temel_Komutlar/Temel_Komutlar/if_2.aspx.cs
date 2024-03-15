using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temel_Komutlar
{
    public partial class if_2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kuladi = Kuladi_txt.Text;
            string sifre = sifre_txt.Text;
            if (kuladi == "admin" && sifre == "12345")
            {
                Response.Write("giriş başarılı");
            }
            else Response.Write("Giriş hatalı.kullanıcı adı veya şifreniz yanlış");
           
        }
    }
}