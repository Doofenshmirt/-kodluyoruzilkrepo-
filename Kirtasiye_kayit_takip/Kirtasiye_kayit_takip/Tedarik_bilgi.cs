using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kirtasiye_kayit_takip
{
    public class Tedarik:Kirtasiye
    {
        public string tedarik_ad { get; set; }
        public string  il { get; set; }
        public string ilce { get; set; }
        public string mahalle { get; set; }
        public string sokak { get; set; }
        public int tel_no { get; set; }

        public string Tedarik_bilgisi()
        {
            return  "Tedarikçi Adı=" +tedarik_ad+ "İl=" +il+ "İlçe=" +ilce+ "Mahalle=" +mahalle+ "Sokak=" +sokak+ "Tel NO=" +tel_no;
        }
    }
}