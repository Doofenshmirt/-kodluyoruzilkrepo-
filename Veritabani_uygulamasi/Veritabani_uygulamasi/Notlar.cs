using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Veritabani_uygulamasi
{
    public class Notlar
    {
        

        public int id { get; set; }
        public byte yaz1 { get; set; }
        public byte yaz2 { get; set; }
        public byte perf { get; set; }
        public Ogrenciler og_no { get; set; }
        public Dersler ders_no { get; set; }

        public Notlar()
        {
        }

        public Notlar(int id, byte yaz1, byte yaz2, byte perf, Ogrenciler og_no, Dersler ders_no)
        {
            this.id = id;
            this.yaz1 = yaz1;
            this.yaz2 = yaz2;
            this.perf = perf;
            this.og_no = og_no;
            this.ders_no = ders_no;
        }
    }
}