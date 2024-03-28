using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using E_ticaret_Projemiz.Models;
using System.IO;
using PagedList;
using System.Data.Entity;
using PagedList.Mvc;
namespace E_ticaret_Projemiz.Controllers
{
    public class UrunlersController : Controller
    {
        E_ticaretEntities db = new E_ticaretEntities();
        // GET: Urunlers
        public ActionResult urun_goster(int? sayfa,int? id)//ürünleri gösterecek action
        {
            var sayfa_no = sayfa ?? 1;//if (sayfa==null) sayfa_no=1
          //var urun_listesi = db.urunler.ToList().ToPagedList(sayfa_no, 3);
            var urun_listesi = db.urunler.Where(x => x.kateno == id).ToList().ToPagedList(sayfa_no, 8);
            return View(urun_listesi);
        }

        public ActionResult urun_kaydet()
        {
            var kategoriler = new SelectList(db.kategoriler, "kateno", "kateadi");
            ViewBag.kateno = kategoriler;
            return View();
        }

        [HttpPost]
        public async Task<ActionResult> urun_kaydet(urunler yeni_urun,HttpPostedFileBase dosya_nesnesi)
        {
            string resim_adi = "resimyok.jpg";

            if (dosya_nesnesi != null)
            {
                string uzanti = Path.GetExtension(dosya_nesnesi.FileName);//uzantısını
                if (uzanti.Equals(".jpg") || uzanti.Equals(".png"))
                {
                    int son_urun_no = db.urunler.Max(x => x.urunid);
                    son_urun_no += 1;
                    resim_adi = Path.GetFileName(dosya_nesnesi.FileName);//Filename ile bana dosyanın tam yolu ve adı gelir.Getfilename ad ve uzantıyı alır
                    string tam_yol = Server.MapPath("~/urun_resimleri/") + son_urun_no + resim_adi; //mappath serverdaki dosya veya klsörün fiziki yerini verir
                    dosya_nesnesi.SaveAs(tam_yol);//save serverdaki kayıt olacak yolu ve dosya adını ister
                    ViewBag.msj = "Resim transfer edildi ve vtye kayıt oldu";
                    yeni_urun.resim = resim_adi;
                    db.urunler.Add(yeni_urun);
                    await db.SaveChangesAsync();
                }
                else
                {
                    ViewBag.msj = "Lütfen bir resim Dosyası Seçiniz";
                }
            }
            else
            {
                ViewBag.msj = "Resimsiz Şekilde Ürün  vtye kayıt oldu";
                yeni_urun.resim = resim_adi;
                db.urunler.Add(yeni_urun);
               await db.SaveChangesAsync();
            }



                var kategoriler = new SelectList(db.kategoriler, "kateno", "kateadi");
            ViewBag.kateno = kategoriler;

            return View();
        }
    }
}