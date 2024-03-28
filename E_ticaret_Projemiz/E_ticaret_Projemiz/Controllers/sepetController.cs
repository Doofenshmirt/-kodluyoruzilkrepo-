using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using E_ticaret_Projemiz.Models;
namespace E_ticaret_Projemiz.Controllers
{
    public class sepetController : Controller
    {
        E_ticaretEntities db = new E_ticaretEntities();

        public Sepet sepeti_getir()//sepete ürün ekleme silme,temizle gösterme işlerinde bize sepet nesnesini getirecek
        {
           Sepet sepetimiz = (Sepet)Session["sepetimiz"];
            if (sepetimiz==null)
            {
                sepetimiz = new Sepet();
                Session["sepetimiz"] = sepetimiz;//sepetimiz nesnesinin adresi
            }

            return sepetimiz;

        }

        // GET: sepet
        public ActionResult Index()//sepet sayfamı getirecek
        {
            return View(sepeti_getir());
        }

        public ActionResult sepete_ekle(int? urunid,byte? adet)
        {
            var _adet=adet ?? 0;
            var eklenecek_urun = db.urunler.FirstOrDefault(x => x.urunid == urunid);
            if (eklenecek_urun != null)//varsa
            {
                sepeti_getir().Sepete_ekle(eklenecek_urun, _adet);

            }
            else//yoksa 
                return HttpNotFound();
            return RedirectToAction("index");

        }
    }
}