using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using E_ticaret_Projemiz.Models;
using System.Data.Entity;
namespace E_ticaret_Projemiz.Controllers
{
    public class HomeController : Controller
    {

        E_ticaretEntities db = new E_ticaretEntities();
        public ActionResult Index(string msj)
        {
            ViewBag.msj = msj;
            return View();
        }

       public ActionResult kategori_doldur()
        {
            var kategori_listem = db.kategoriler.ToList();
            return PartialView(kategori_listem);
        }

        public ActionResult login_giris()
        {
            return PartialView();
        }
        [HttpPost]
        public async Task<ActionResult> login_giris(uyeler gelen_uye)
        {//bu kriterlere uygun ilk kaydı bulup nesne olarak getir
            var uyem = await db.uyeler.FirstOrDefaultAsync(x => x.kuladi == gelen_uye.kuladi && x.sifre == gelen_uye.sifre);
            string msj="";
            if(uyem!=null)
            {
                Session["uyem"] = uyem;
            }
            else
            {
                msj = "Kullanıcı adı veya şifreniz yanlış";
            }
            return RedirectToAction("index",new { msj });
        }



        public ActionResult guv_cikis()
        {
            Session.RemoveAll();
            Session.Abandon();
            return RedirectToAction("index");
        }







        public ActionResult deneme()
        {
            return View();
        }
  
        public ActionResult deneme2()
        {
            return View();
        }
    }
}