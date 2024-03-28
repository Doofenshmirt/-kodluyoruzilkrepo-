using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Veritabani_uygulamasi
{
    public class Veri_tabani_yardimcisi
    {
        public SqlConnection baglantiya_gec()
        {
            SqlConnection baglanti = new SqlConnection();
            baglanti.ConnectionString = "Data Source=NTC;Initial Catalog=okul;Integrated Security=True";
            return baglanti;
        }

    }
}