using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace E_ticaret_Projemiz.Models
{
    public class Sepet//sepetim içindeki ekleme silme sepet toplamı,temizle metotları içerecek
    {
        private List<Sepetlik> _sepetim=new List<Sepetlik>();

        public List<Sepetlik> Sepetim { get => _sepetim; }

        public void Sepete_ekle(urunler gelen_urun,byte adet)
        {
            var sepetteki_urun = _sepetim.FirstOrDefault(x => x.urun.urunid == gelen_urun.urunid);
            if (sepetteki_urun == null)//sepette bu ürün hiç yok
            {
                _sepetim.Add(new Sepetlik { urun = gelen_urun, adet = 1 });
            }
            else if (adet == 0) sepetteki_urun.adet += 1;//linkle tekrar sepete ekle tıklanırsa
            else sepetteki_urun.adet = adet;  //sepeteki adet + - butonları yani formla gelinmişse adet kutusu değerini ver
        }

        public void Sepetten_sil(urunler silinecek_urun)
        {
            _sepetim.RemoveAll(x => x.urun.urunid == silinecek_urun.urunid);
        }
        public double Sepet_toplami()
        {
          return  _sepetim.Sum(x => x.adet * x.urun.fiyat);
        }

        public void Sepet_temizle()
        {
            _sepetim.Clear();
        }
    }
}