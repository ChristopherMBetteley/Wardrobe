using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WardrobeMVCApp.Models;

namespace WardrobeMVCApp.Controllers
{
    public class OccasssionsController : Controller
    {
        private WardrobeEntities db = new WardrobeEntities();

        // GET: Occasssions
        public ActionResult Index()
        {
            return View(db.Occasssions.ToList());
        }

        // GET: Occasssions/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Occasssion occasssion = db.Occasssions.Find(id);
            if (occasssion == null)
            {
                return HttpNotFound();
            }
            return View(occasssion);
        }

        // GET: Occasssions/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Occasssions/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "OccassionID,OccassionName")] Occasssion occasssion)
        {
            if (ModelState.IsValid)
            {
                db.Occasssions.Add(occasssion);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(occasssion);
        }

        // GET: Occasssions/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Occasssion occasssion = db.Occasssions.Find(id);
            if (occasssion == null)
            {
                return HttpNotFound();
            }
            return View(occasssion);
        }

        // POST: Occasssions/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "OccassionID,OccassionName")] Occasssion occasssion)
        {
            if (ModelState.IsValid)
            {
                db.Entry(occasssion).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(occasssion);
        }

        // GET: Occasssions/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Occasssion occasssion = db.Occasssions.Find(id);
            if (occasssion == null)
            {
                return HttpNotFound();
            }
            return View(occasssion);
        }

        // POST: Occasssions/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Occasssion occasssion = db.Occasssions.Find(id);
            db.Occasssions.Remove(occasssion);
            db.SaveChanges();
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
