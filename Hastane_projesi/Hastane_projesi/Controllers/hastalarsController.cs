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
    public class hastalarsController : Controller
    {
        private hastaneEntities db = new hastaneEntities();

        // GET: hastalars
        public async Task<ActionResult> Index()
        {
            return View(await db.hastalar.ToListAsync());
        }

        // GET: hastalars/Details/5
        public async Task<ActionResult> Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            hastalar hastalar = await db.hastalar.FindAsync(id);
            if (hastalar == null)
            {
                return HttpNotFound();
            }
            return View(hastalar);
        }

        // GET: hastalars/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: hastalars/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Create([Bind(Include = "hasta_no,hasta_tc,hasta_adi,hasta_adres,hasta_cinsiyet")] hastalar hastalar)
        {
            if (ModelState.IsValid)
            {
                db.hastalar.Add(hastalar);
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }

            return View(hastalar);
        }

        // GET: hastalars/Edit/5
        public async Task<ActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            hastalar hastalar = await db.hastalar.FindAsync(id);
            if (hastalar == null)
            {
                return HttpNotFound();
            }
            return View(hastalar);
        }

        // POST: hastalars/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> Edit([Bind(Include = "hasta_no,hasta_tc,hasta_adi,hasta_adres,hasta_cinsiyet")] hastalar hastalar)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hastalar).State = EntityState.Modified;
                await db.SaveChangesAsync();
                return RedirectToAction("Index");
            }
            return View(hastalar);
        }

        // GET: hastalars/Delete/5
        public async Task<ActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            hastalar hastalar = await db.hastalar.FindAsync(id);
            if (hastalar == null)
            {
                return HttpNotFound();
            }
            return View(hastalar);
        }

        // POST: hastalars/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> DeleteConfirmed(int id)
        {
            hastalar hastalar = await db.hastalar.FindAsync(id);
            db.hastalar.Remove(hastalar);
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
