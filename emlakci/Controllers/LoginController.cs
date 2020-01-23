using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using emlakci.Models;
using System.ComponentModel.DataAnnotations;
using System.Web.Security;

namespace emlakci.Controllers
{
    public class LoginController : Controller
    {
        public static string a;
        Models.EMLAKCİEntities1 mymodel = new EMLAKCİEntities1();

        // GET: Login
        public ActionResult Index()
        {
            
            return View();
        }

        public ActionResult Giris()
        {
            return View();
        }
       
        public ActionResult GirisYap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult GirisYap(string email,string sifre)
        {
            if (ModelState.IsValid)
            {
               
                
                var mail = mymodel.MUSTERILER.Where(d => d.EMAIL == email).SingleOrDefault();
                
                var sfre = mymodel.MUSTERILER.Where(d => d.SIFRE == sifre).SingleOrDefault();
                if (mail.EMAIL ==email  && mail.SIFRE == sifre)
                {
                    Session["Kullanici"] = mail.ADI + mail.SOYADI;
                    Session["k_id"] = mail.ID;

                    return Redirect("/İlan/Index");

                }
                else
                {

                    ViewBag.mesaj = "Kullanıcı adı veya Şifre hatalı...";
                    return View();
                }
            }
            else
                return View();
        }
        public ActionResult Uyeol()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Uyeol(string adi,string soyadi,string email,string sifre,string evtel,string ceptel)
        {
            
                string mesaj = "";
                string success = "";
            var m = mymodel.MUSTERILER.Where(d => d.EMAIL == email).SingleOrDefault();

                if (m!= null)
                {
                    mesaj = "Bu mail adresi kullanılmaktadir";
                    ViewBag.mesaj = mesaj;
                }
                else
                {
                    MUSTERILER ekle = new MUSTERILER();
                    ekle.ADI = adi;
                    ekle.SOYADI = soyadi;
                    ekle.EMAIL = email;
                    ekle.SIFRE = sifre;
                    ekle.EVTEL = evtel;
                    ekle.CEPTEL = ceptel;
                    mymodel.MUSTERILER.Add(ekle);
                    mymodel.SaveChanges();
                    success = "Kaydınız Başarıyla Gerçekleşti";
                    ViewBag.success = success;
                }


            

            return View();
        }
    }
}