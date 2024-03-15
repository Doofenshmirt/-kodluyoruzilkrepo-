using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Hastane_projesi.Models;

namespace Hastane_projesi.Controllers
{
    public class YatislarsController : Controller
    {
        private hastaneEntities db = new hastaneEntities();

        // GET: Yatislars
        public async Task<ActionResult> Index()
        {
            var yatislar = db.Yatislar.Include(y => y.Departmanlar).Include(y => y.Doktorlar).Include(y => y.hastalar);
            return View(await yatislar.ToListAsync());
        }

        // GET: Yatislars/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Yatislar yatislar = await db.Yatislar.FindAsync(id);
            if (yatislar == null)
            {
                return HttpNotFound();
            }
            return View(yatislar);
        }

        // GET: Yatislars/Create
        public ActionResult Create()
        {
            ViewBag.dept_no = new SelectList(db.Departmanlar, "dept_no", "dept_adi");
            ViewBag.doktor_no = new SelectList(db.Doktorlar, "doktor_no", "doktor_adi");
            ViewBag.hasta_no = new SelectList(db.hastalar, "hasta_no", "hasta_adi");
            return View();
        }

        // POST: Yatislars/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "yatis_tarihi,cikis_tarihi,hasta_no,doktor_no,oda_no,dept_no,kayit_no")] Yatislar yatislar)
        {
            if (ModelState.IsValid)
            {
                db.Yatislar.Add(yatislar);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            ViewBag.dept_no = new SelectList(db.Departmanlar, "dept_no", "dept_adi", yatislar.dept_no);
            ViewBag.doktor_no = new SelectList(db.Doktorlar, "doktor_no", "doktor_adi", yatislar.doktor_no);
            ViewBag.hasta_no = new SelectList(db.hastalar, "hasta_no", "hasta_adi", yatislar.hasta_no);
            return View(yatislar);
        }

        // GET: Yatislars/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Yatislar yatislar = await db.Yatislar.FindAsync(id);
            if (yatislar == null)
            {
                return HttpNotFound();
            }
            ViewBag.dept_no = new SelectList(db.Departmanlar, "dept_no", "dept_adi", yatislar.dept_no);
            ViewBag.doktor_no = new SelectList(db.Doktorlar, "doktor_no", "doktor_adi", yatislar.doktor_no);
            ViewBag.hasta_no = new SelectList(db.hastalar, "hasta_no", "hasta_adi", yatislar.hasta_no);
            return View(yatislar);
        }

        // POST: Yatislars/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "yatis_tarihi,cikis_tarihi,hasta_no,doktor_no,oda_no,dept_no,kayit_no")] Yatislar yatislar)
        {
            if (ModelState.IsValid)
            {
                db.Entry(yatislar).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            ViewBag.dept_no = new SelectList(db.Departmanlar, "dept_no", "dept_adi", yatislar.dept_no);
            ViewBag.doktor_no = new SelectList(db.Doktorlar, "doktor_no", "doktor_adi", yatislar.doktor_no);
            ViewBag.hasta_no = new SelectList(db.hastalar, "hasta_no", "hasta_adi", yatislar.hasta_no);
            return View(yatislar);
        }

        // GET: Yatislars/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Yatislar yatislar = await db.Yatislar.FindAsync(id);
            if (yatislar == null)
            {
                return HttpNotFound();
            }
            return View(yatislar);
        }

        // POST: Yatislars/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            Yatislar yatislar = await db.Yatislar.FindAsync(id);
            db.Yatislar.Remove(yatislar);
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
    }
}
