using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace Personel_kayit_sistemi_composition
{
    public class Bolum
    {
        public int Bol_no
        { get; set;}

        public string Bol_adi
        { get ;  set; }

        public string Bol_sefi
        {  get; set; }

        public  string bolum_bilgisi()
        {
            return "Bolum bilgisi Bolum no=" + Bol_no + "Bolum adı=" + Bol_adi + "Şefi=" + Bol_sefi;
        }
    }
}