using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kirtasiye_kayit_takip
{
    public class Kirtasiye
    {
        public int barkod_no { get; set; }
        public int fiyat { get; set; }

        public string kirtasiye_bilgisi()
        {
            return "Barkod Numarası=" + barkod_no + "Fiyat'ı=" + fiyat;
        }
            
          

    }
    /*public satın_alma();
        public int MyProperty { get; set; }*/
}