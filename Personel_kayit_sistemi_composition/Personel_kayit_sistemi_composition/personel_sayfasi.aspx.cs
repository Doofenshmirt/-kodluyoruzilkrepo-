using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.VisualBasic;
namespace Personel_kayit_sistemi_composition
{
    public partial class personel_sayfasi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int per_sayisi = Convert.ToInt32(Interaction.InputBox("Personel sayisi", "", "", -1, -1));
            Personel[] personeller = new Personel[per_sayisi];
            int sayac=0 ;
            while(sayac<per_sayisi)
            {
                Personel yeni_per = new Personel();
                yeni_per.Sgk_no = Convert.ToInt32(Interaction.InputBox("Sgk gir", "", "", -1, -1));
                yeni_per.Per_ad_soyad = Interaction.InputBox("ad gir", "", "", -1, -1);
                yeni_per.Kidem_yili= Convert.ToInt32(Interaction.InputBox("kıdem yılı gir", "", "", -1, -1));
                yeni_per.Maas_hesapla();
                Adres adr = new Adres()
                {
                   ilce= Interaction.InputBox("ilce gir", "", "", -1, -1),
                   mahalle= Interaction.InputBox("mahalle gir", "", "", -1, -1),
                   aptno= Convert.ToInt32(Interaction.InputBox("apt no gir", "", "", -1, -1))
            };
                yeni_per.Per_adresi = adr;

                yeni_per.Per_bolum = new Bolum()
                {
                  Bol_no= Convert.ToInt32(Interaction.InputBox("bol no gir", "", "", -1, -1)),
                   Bol_adi= Interaction.InputBox("bol adı gir", "", "", -1, -1),
                   Bol_sefi= Interaction.InputBox("bol şefi gir", "", "", -1, -1)
                };
                personeller[sayac] = yeni_per;
                sayac++;
                int cvp = Convert.ToInt32(Interaction.MsgBox("Devam Edecekmisiniz", MsgBoxStyle.YesNo));
                if (cvp == 7) break;
            }//while

           Array.Resize(ref personeller, sayac);

            int secim = Convert.ToInt32(Interaction.InputBox("1-Tümü 2-Sgk ara 3-Bolum adına göre listele", "", "", -1, -1));
            switch (secim)
            {
                case 1:
                    foreach (Personel gelen_per in personeller)
                    {
                        ListBox1.Items.Add(gelen_per.personel_bilgisi());
                    }
                    break;
                case 3:
                    string aranan_bolum = Interaction.InputBox("Aradığınız Bölüm adını giriniz", "", "", -1, -1);
                    foreach (Personel gelen_per in personeller)
                    {
                      
                        if (gelen_per.Per_bolum.Bol_adi==aranan_bolum)
                        ListBox1.Items.Add(gelen_per.personel_bilgisi());
                    }
                    break;
            }

        }
    }
}