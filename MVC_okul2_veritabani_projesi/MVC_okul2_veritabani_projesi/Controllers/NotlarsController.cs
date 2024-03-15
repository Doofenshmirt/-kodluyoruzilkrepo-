using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MVC_okul2_veritabani_projesi.Models;

namespace MVC_okul2_veritabani_projesi.Controllers
{
    public class NotlarsController : Controller
    {
        private okul2Entities db = new okul2Entities();

        // GET: Notlars
        public async Task<ActionResult> Index()
        {
            var notlar = await db.Notlar.ToListAsync();
            return View(notlar);
        }

        // GET: Notlars/Create
        public ActionResult Create()
        {
            ViewBag.ders_no = new SelectList(db.Dersler, "ders_no", "ders_adi");
            ViewBag.og_no = new SelectList(db.Ogrenciler, "og_no", "og_ad_soyad");
            return View();
        }

        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "kayit_no,og_no,ders_no,yaz1,yaz2,soz")] Notlar notlar)
        {
            if (ModelState.IsValid)
            {
                db.Notlar.Add(notlar);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.ders_no = new SelectList(db.Dersler, "ders_no", "ders_adi", notlar.ders_no);
            ViewBag.og_no = new SelectList(db.Ogrenciler, "og_no", "og_ad_soyad", notlar.og_no);
            return View(notlar);
        }

        // GET: Notlars/Edit/5
        public async Task<ActionResult> Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Notlar notlar = await db.Notlar.FindAsync(id);
            if (notlar == null)
            {
                return HttpNotFound();
            }
            ViewBag.ders_no = new SelectList(db.Dersler, "ders_no", "ders_adi", notlar.ders_no);
            ViewBag.og_no = new SelectList(db.Ogrenciler, "og_no", "og_ad_soyad", notlar.og_no);
            return View(notlar);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "kayit_no,og_no,ders_no,yaz1,yaz2,soz")] Notlar notlar)
        {
            if (ModelState.IsValid)
            {
                db.Entry(notlar).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.ders_no = new SelectList(db.Dersler, "ders_no", "ders_adi", notlar.ders_no);
            ViewBag.og_no = new SelectList(db.Ogrenciler, "og_no", "og_ad_soyad", notlar.og_no);
            return View(notlar);
        }

        // GET: Notlars/Delete/5
        public async Task<ActionResult> Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Notlar notlar = await db.Notlar.FindAsync(id);
            if (notlar == null)
            {
                return HttpNotFound();
            }
            db.Notlar.Remove(notlar);
            await db.SaveChangesAsync();

           
            return RedirectToAction("Index");
        }

      
  

        protected override void Dispose(bool disposing)//bir isteğin controller ile işi bittiğinde çalışır
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
