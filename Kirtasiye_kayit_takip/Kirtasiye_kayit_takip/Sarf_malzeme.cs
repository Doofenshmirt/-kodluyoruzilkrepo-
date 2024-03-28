using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kirtasiye_kayit_takip
{
    public class Sarf_malzeme:Kirtasiye
    {
        public string malzeme_ad { get; set; }
        public string malzeme_tur { get; set; }
        public Tedarik tedarikci { get; set; }
        
      public string Sarf_malzeme_bilgi()
        {
            return kirtasiye_bilgisi() + "Malzeme Adı=" + malzeme_ad + "Malzeme_türü=" + malzeme_tur + "Tedarikçi=" + tedarikci.Tedarik_bilgisi();
        }

    }
}