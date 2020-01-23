using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using emlakci.Models;


namespace emlakci.Controllers
{
    //[Authorize]
    public class İlanController : Controller
    {
        Models.EMLAKCİEntities1 mymodel = new EMLAKCİEntities1();
        
        // GET: İlan
        public ActionResult Index()
        {
            List<EMLAKLAR> emlaklar = mymodel.EMLAKLAR.ToList();
            return View(emlaklar);
        }
        [HttpPost]
        public ActionResult Index(int ID)
        {
            if (ID == 0)
            {
                List<EMLAKLAR> emlaklar = mymodel.EMLAKLAR.ToList();
                return Json(emlaklar);
            }
            else if(ID==1)
            {
                List<EMLAKLAR> fiyatagoreYuksek = (from f in mymodel.EMLAKLAR
                                           orderby f.FIYAT descending
                                           select f).ToList();
                return View(fiyatagoreYuksek);
              
            }
            else
            {

            }
                return Redirect("/İlan/Index");
        }

        
        public ActionResult Emlaklar()
        {

            ViewBag.iller = mymodel.ILLER.ToList();

            return View();
        }
        [HttpPost]
        public ActionResult Emlakekle(int iller,EMLAKLAR emlak)
        {
           if(emlak==null)
            {

            }
           else
            {
                //label1.Text = DateTime.Now.ToShortTimeString();
                //label2.Text = DateTime.Now.ToString("hh:mm:ss");
                DateTime dt = DateTime.Today;
                string a = dt.ToString("dd MMMM yyyy");
                //int yil = dt.Year;
                //int ay = dt.Month;
                //int gun = dt.Day;
                //DateTime dt = DateTime.Today;
                emlak.IL_ID = iller;
                emlak.ILAN_TARIHI =a;
                emlak.MUSTERI_ID =Convert.ToInt32(Session["k_id"]);
                
                mymodel.EMLAKLAR.Add(emlak);
                mymodel.SaveChanges();
                return Redirect("/İlan/Index");
            }
            return View();
        }

        public ActionResult Emlakara()
        {
            List<EMLAKLAR> emlaklar = mymodel.EMLAKLAR.ToList();
           

            ViewBag.iller = mymodel.ILLER.ToList();

            return View(emlaklar);
        }


        public ActionResult Satılık()
        {
           
            List<EMLAKLAR> satilik = (from cust in mymodel.EMLAKLAR
                           where cust.ILAN_KATEGORISI == "Satılık"
                           select cust).ToList();
            List<EMLAKLAR> sa= satilik.ToList();
            ViewBag.iller = mymodel.ILLER.ToList();

            return View(satilik);
        }
        [HttpPost]
        public ActionResult Satılık(EMLAKLAR ozellikler)
        {

            List<EMLAKLAR> satilik = (from cust in mymodel.EMLAKLAR
                                      where cust.ILAN_KATEGORISI == "Satılık"
                                      select cust).ToList();
            List<EMLAKLAR> sa = satilik.ToList();
            ViewBag.iller = mymodel.ILLER.ToList();

            return View(satilik);
        }





        public ActionResult Kiralik()
        {

            List<EMLAKLAR> kiralik = (from cust in mymodel.EMLAKLAR
                                      where cust.ILAN_KATEGORISI == "Kiralık"
                                      select cust).ToList();
            List<EMLAKLAR> sa = kiralik.ToList();
            ViewBag.iller = mymodel.ILLER.ToList();

            return View(kiralik);
        }


        [HttpPost]
        public JsonResult IlIlce(int? ilID, string tip)
        {
            //EntityFramework ile veritabanı modelimizi oluşturduk ve
            //IlilceDBEntities ile db nesnesi oluşturduk.
            Models.EMLAKCİEntities1 mymodel = new EMLAKCİEntities1();
            //geriye döndüreceğim sonucListim
            List<SelectListItem> sonuc = new List<SelectListItem>();
            //bu işlem başarılı bir şekilde gerçekleşti mi onun kontrolunnü yapıyorum
            bool basariliMi = true;
            try
            {
                switch (tip)
                {
                    case "ilGetir":
                        //veritabanımızdaki iller tablomuzdan illerimizi sonuc değişkenimze atıyoruz
                        foreach (var il in mymodel.ILLER.ToList())
                        {
                            sonuc.Add(new SelectListItem
                            {
                                Text = il.ILADI,
                                Value = il.ID.ToString()
                            });
                        }
                        break;
                    case "ilceGetir":
                        //ilcelerimizi getireceğiz ilimizi selecten seçilen ilID sine göre 
                        foreach (var ilce in mymodel.ILCELER.Where(x => x.IL_ID == ilID).ToList())
                        {
                            sonuc.Add(new SelectListItem
                            {
                                Text = ilce.ILCEADI,
                                Value = ilce.ID.ToString()
                            });
                        }
                        break;

                    default:
                        break;

                }
            }
            catch (Exception)
            {
                //hata ile karşılaşırsak buraya düşüyor
                basariliMi = false;
                sonuc = new List<SelectListItem>();
                sonuc.Add(new SelectListItem
                {
                    Text = "Bir hata oluştu :(",
                    Value = "Default"
                });

            }
            //Oluşturduğum sonucları json olarak geriye gönderiyorum
            return Json(new { ok = basariliMi, text = sonuc });
        }

        public ActionResult Benimilanlarim()
        {
            var sesion = Convert.ToInt32(Session["k_id"]);
            var kontroluser = mymodel.MUSTERILER.Where(d => d.ID == sesion).SingleOrDefault();
            if (kontroluser!=null)
            {
                List<EMLAKLAR> benim = (from cust in mymodel.EMLAKLAR
                                          where cust.MUSTERI_ID == sesion
                                          select cust).ToList();

                return View(benim);
            }
            else
            {
                List<EMLAKLAR> emlaklar = mymodel.EMLAKLAR.ToList();
                return View( emlaklar);
            }


            


            


            
        }

    }
}