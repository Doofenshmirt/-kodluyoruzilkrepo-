using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using E_ticaret_Projemiz.Models;

namespace E_ticaret_Projemiz.Controllers
{
    public class uyelersController : Controller
    {
        private E_ticaretEntities db = new E_ticaretEntities();

        // GET: uyelers
        public async Task<ActionResult> Index()
        {
            if (Session["admin"] == null) return HttpNotFound();
            var uyeler = db.uyeler.Include(u => u.meslek).Include(u => u.sehirler);
            return View(await uyeler.ToListAsync());
        }

        // GET: uyelers/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            uyeler uyeler = await db.uyeler.FindAsync(id);
            if (uyeler == null)
            {
                return HttpNotFound();
            }
            return View(uyeler);
        }

        // GET: uyelers/Create
        public ActionResult Create()
        {
            ViewBag.meslekid = new SelectList(db.meslek, "meslekid", "meslekad");
            ViewBag.plaka = new SelectList(db.sehirler, "plaka", "sehiradi");
            return View();
        }

        // POST: uyelers/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "uyeid,kuladi,sifre,adsoyad,dogtar,cinsiyet,adres,plaka,email,meslekid")] uyeler uyeler)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    db.uyeler.Add(uyeler);
                    await db.SaveChangesAsync();
                    ViewBag.msj = "KAYIT BAŞARILI";
                }            
            }
            catch(Exception hata)
            {
                if (hata.InnerException.ToString().IndexOf("uk_uyeler_kuladi") != -1)//kuladi var

                {
                    ViewBag.uyari = "Aynı kullanıcı adı var değiştirin";
                  List<string> kuladi_onerileri=  kullanici_adi_oner(uyeler.kuladi);
                    ViewBag.kuladi_onerileri = kuladi_onerileri;
                }
                else
                    ViewBag.uyari = "Aynı Email  var değiştirin";
            }


            ViewBag.meslekid = new SelectList(db.meslek, "meslekid", "meslekad", uyeler.meslekid);
            ViewBag.plaka = new SelectList(db.sehirler, "plaka", "sehiradi", uyeler.plaka);

            return View(uyeler);
        }

        // GET: uyelers/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            uyeler uyeler = await db.uyeler.FindAsync(id);
            if (uyeler == null)
            {
                return HttpNotFound();
            }
            ViewBag.meslekid = new SelectList(db.meslek, "meslekid", "meslekad", uyeler.meslekid);
            ViewBag.plaka = new SelectList(db.sehirler, "plaka", "sehiradi", uyeler.plaka);
            return View(uyeler);
        }

        // POST: uyelers/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "uyeid,kuladi,sifre,adsoyad,dogtar,cinsiyet,adres,plaka,email,meslekid")] uyeler uyeler)
        {
            if (ModelState.IsValid)
            {
                db.Entry(uyeler).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.meslekid = new SelectList(db.meslek, "meslekid", "meslekad", uyeler.meslekid);
            ViewBag.plaka = new SelectList(db.sehirler, "plaka", "sehiradi", uyeler.plaka);
            return View(uyeler);
        }

        // GET: uyelers/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            uyeler uyeler = await db.uyeler.FindAsync(id);
            if (uyeler == null)
            {
                return HttpNotFound();
            }
            return View(uyeler);
        }

        // POST: uyelers/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            uyeler uyeler = await db.uyeler.FindAsync(id);
            db.uyeler.Remove(uyeler);
            await db.SaveChangesAsync();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
        int sayac = 1;
        List<string> onerilerimiz = new List<string>();
        public List<string> kullanici_adi_oner(string kuladi)
        {
            System.Threading.Thread.Sleep(300);
            Random uret = new Random();
            string[] harfler = { "a", "g", "t", "y", "p", "s", "r" };
            string oneri = kuladi + harfler[uret.Next(0, 6)] + uret.Next(0, 9);
            int varmi=db.uyeler.Count(x => x.kuladi == oneri);//varsa 1 yoksa 0
            if (varmi == 0)
            {
                onerilerimiz.Add(oneri);
                sayac++;
            }
            if (sayac <= 5) kullanici_adi_oner(kuladi);
            return onerilerimiz;
        }
    }
}
