using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.ComponentModel;

namespace Personel_kayit_sistemi_composition
{
    public class Adres
    {

        public string ilce
        {     get;
            set; }

        public string mahalle
        {  get;
            set; }

        public int aptno
        {
            get;
            set;
        }

        public string adres_bilgisi()
        {
            return "Adres= ilce=" + ilce + "mahalle=" + mahalle + "Apt no=" + aptno;
        }
    }
}