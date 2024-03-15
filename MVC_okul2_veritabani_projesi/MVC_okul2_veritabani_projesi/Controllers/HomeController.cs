using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC_okul2_veritabani_projesi.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

      public ActionResult yonetim_giris()
        {
            return View();
        }
        [HttpPost]
        public ActionResult yonetim_giris(string kul_adi,string sifre)
        {
            if (kul_adi == "admin" && sifre == "admin_124")
            { 
                ViewBag.msj = "Sisteme Giriş Yapıldı";
                Session["kontrol"] = "admin";
            }
                
            else
                ViewBag.msj = "Yanlış kullanıcı adı veya şifre Girdiniz";
            return View();
        }
    }
}