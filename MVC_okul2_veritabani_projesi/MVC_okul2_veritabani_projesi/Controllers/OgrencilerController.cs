using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Data.Entity;
using System.Web.Mvc;
using MVC_okul2_veritabani_projesi.Models;
namespace MVC_okul2_veritabani_projesi.Controllers
{
    public class OgrencilerController : Controller
    {
        // GET: Ogrenciler
        okul2Entities db = new okul2Entities();
        public async Task<ActionResult> tum_ogrencileri_goster(string silinme_msj)//threading.task
        {
            //if (Session["kontrol"] == null) return HttpNotFound();
            if (Session["kontrol"] == null) return RedirectToAction("yonetim_giris", "Home");
            var ogrenci_listem = await db.Ogrenciler.ToListAsync();//Data.entity
            ViewBag.silinme_msj = silinme_msj;
            return View(ogrenci_listem);
        }

        public ActionResult ogrenci_kaydet()
        {
            ViewBag.sinif_adi = new SelectList(db.siniflar, "sinif_adi", "sinif_adi");

            return View();
        }

        [HttpPost]
        public ActionResult ogrenci_kaydet(Ogrenciler yeni_ogr)
        {
            ViewBag.sinif_adi = new SelectList(db.siniflar, "sinif_adi", "sinif_adi");
         try
            { 
            if (ModelState.IsValid == true)
            {
         
                db.Ogrenciler.Add(yeni_ogr);
                db.SaveChanges();
                ViewBag.msj = "Kayıt Başarılı";
            }
            else ViewBag.msj = "Kayıt Başarısız";

           }
            catch(Exception hata)
            {
                string hata_icerigi = hata.InnerException.ToString();
               if (hata_icerigi.IndexOf("UK_email")!=-1)//demekki hata içeriğinde var
                    ViewBag.msj = "Kayıt Başarısız Aynı Email  var Değiştirin";
               else if (hata_icerigi.IndexOf("UK_tc_kimlik")!=-1)
                    ViewBag.msj = "Kayıt Başarısız Aynı TC kimlik  var Değiştirin";
               else ViewBag.msj = "Kayıt Başarısız Aynı Numaralı Öğrenci var";
            }
            return View();
        }

        public ActionResult ogrenci_sil(int? id)
        {
            if (id == null) return HttpNotFound();
            string silinme_msj = "";
            try
           { 
           var silinecek_ogr= db.Ogrenciler.Find(id);//vt dan ogrencilerden pk alanda arama yapıp geri o öğrenci nesnesini getiriyor
           if (silinecek_ogr == null) return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
           db.Ogrenciler.Remove(silinecek_ogr);
           db.SaveChanges();
          silinme_msj = "Kayıt başarı ile silindi";
            }
            catch (Exception)
            {
                silinme_msj = "Beklenmedik hata kayıt silinemedi";
            }
           return RedirectToAction("tum_ogrencileri_goster",new {silinme_msj });
        }

        public ActionResult ogrenci_duzenle(int? id)
        {
            if (id == null) return HttpNotFound();
            var ogrencimiz= db.Ogrenciler.Find(id);
            if (ogrencimiz==null) return HttpNotFound();
            ViewBag.sinif_adi = new SelectList(db.siniflar, "sinif_adi", "sinif_adi",ogrencimiz.sinif_adi);
            return View(ogrencimiz);
        }
     
        [HttpPost]
        public ActionResult ogrenci_duzenle(Ogrenciler yeni_ogr)
        {          
           try
            {
                if (ModelState.IsValid == true)
                {

                    db.Entry(yeni_ogr).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                    ViewBag.msj = "Kayıt Değiştirildi";
                }
                else ViewBag.msj = "Kayıt Değiştirilemedi";

            }
            catch (Exception hata)
           {
                string hata_icerigi = hata.InnerException.ToString();
                if (hata_icerigi.IndexOf("UK_email") != -1)//demekki hata içeriğinde var
                    ViewBag.msj = "Kayıt Güncellemedi Aynı Email  var Değiştirin";
                else if (hata_icerigi.IndexOf("UK_tc_kimlik") != -1)
                    ViewBag.msj = "Kayıt Güncellemedi Aynı TC kimlik  var Değiştirin";
                
            }
            ViewBag.sinif_adi = new SelectList(db.siniflar, "sinif_adi", "sinif_adi",yeni_ogr.sinif_adi);
            return View(yeni_ogr);
        }


        public ActionResult sinif_bazinda_rapor()
        {
            var ogrenci_listem = db.Ogrenciler.OrderBy(x=>x.og_ad_soyad);
           int mevcud = db.Ogrenciler.Count();
            ViewBag.mevcud = mevcud;
            ViewBag.sinif_adi = new SelectList(db.siniflar, "sinif_adi", "sinif_adi");
            return View(ogrenci_listem);
        }
        [HttpPost]
        public ActionResult sinif_bazinda_rapor(string sinif_adi,string email)
        {
           int mevcud = 0;
            var ogrenci_listem = new List<Ogrenciler>();
            if (sinif_adi=="")
            { 
                ogrenci_listem = db.Ogrenciler.Where(x=>x.email.Contains(email)).OrderBy(x => x.og_ad_soyad).ToList();
                mevcud = db.Ogrenciler.Count(x=>x.email.Contains(email));
            }
            else
            { 
              ogrenci_listem = db.Ogrenciler.Where(x=>x.sinif_adi==sinif_adi && x.email.Contains(email)).OrderBy(x => x.og_ad_soyad).ToList();
              mevcud = db.Ogrenciler.Count(x => x.sinif_adi == sinif_adi && x.email.Contains(email));
                //select * from ogrenciler where sinif_adi='10.A' and email like(%gmail.com%) order by ad_soyad asc
            }
            ViewBag.mevcud = mevcud;
            ViewBag.sinif_adi = new SelectList(db.siniflar, "sinif_adi", "sinif_adi");
            return View(ogrenci_listem);
        }
      

    }


}