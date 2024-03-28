using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kirtasiye_kayit_takip
{
    public class Kitap:Kirtasiye
    {
        public string kitap_ad { get; set; }
        public string yazar_ad { get; set; }
        public int sayfa_sys { get; set; }
        public Tedarik tedarikci { get; set; }





        public string Kitap_bilgi()
        {
            return kirtasiye_bilgisi() + "Kitap Adı=" + kitap_ad + "Yazar Adı=" + yazar_ad + "Sayfa Sayısı=" + sayfa_sys + "Tedarikçi Bilgisi=" + tedarikci.Tedarik_bilgisi();
        }
    }
}