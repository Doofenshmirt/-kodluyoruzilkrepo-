using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace Ajanda_uygulamasi
{
    public class Veri_tabani_yardimcisi
    {
        public SqlConnection baglantiya_gec()
        {
            SqlConnection baglanti = new SqlConnection();
            baglanti.ConnectionString = "Data Source=DESKTOP-D3IP2VD;Initial Catalog=Telefon_Rehberi;Integrated Security=True";
            return baglanti;
        }
    }
}
