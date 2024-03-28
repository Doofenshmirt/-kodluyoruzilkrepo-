using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.VisualBasic;

namespace Kirtasiye_kayit_takip
{
    public partial class kayit_takip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int urun_sayisi = Convert.ToInt32(Interaction.InputBox("Girilicek Ürün Sayısını Giriniz", "", "", -1, -1));
            Kirtasiye[] urunler = new Kirtasiye[urun_sayisi];
            int sayac = 0;
            while (sayac < urun_sayisi)
            {
                int secim = Convert.ToInt32(Interaction.InputBox("1-Kitap 2-Sarf Malzeme", "", "", -1, -1));
                switch (secim)
                {
                    case 1:
                        Kitap yeni_kitap = new Kitap()
                        {

                            barkod_no = Convert.ToInt32(Interaction.InputBox("Lütfen Barkod Numarası Giriniz", "", "", -1, -1)),
                            kitap_ad = Interaction.InputBox("Lütfen Kitap Adı Giriniz", "", "", -1, -1),
                            yazar_ad = Interaction.InputBox("Lütfen Yazar Adı Giriniz", "", "", -1, -1),
                            sayfa_sys = Convert.ToInt32(Interaction.InputBox("Lütfen Sayfa Sayısı Giriniz", "", "", -1, -1)),
                            fiyat = Convert.ToInt32(Interaction.InputBox("Lütfen Ürünün Fiyatını Giriniz", "", "", -1, -1)),
                            tedarikci = tedarikci_girisi()

                        };//case1"Kitap"
                        urunler[sayac] = yeni_kitap;
                        break;//"Kitap"
                    case 2:
                        Sarf_malzeme yeni_sarf_malzeme = new Sarf_malzeme()
                        {

                            barkod_no = Convert.ToInt32(Interaction.InputBox("Lütfen Barkod Numarası Giriniz", "", "", -1, -1)),
                            malzeme_ad = Interaction.InputBox("Lütfen Malzeme Adı Giriniz", "", "", -1, -1),
                            malzeme_tur = Interaction.InputBox("Lütfen Malzemenin Türünü Giriniz", "", "", -1, -1),
                            fiyat = Convert.ToInt32(Interaction.InputBox("Lütfen Ürünün Fiyatını Giriniz", "", "", -1, -1)),
                            tedarikci = tedarikci_girisi()

                        };//case2"Sarf Malzeme"
                        urunler[sayac] = yeni_sarf_malzeme;
                        break;//"Sarf Malzeme"
                }//switch
                sayac++;
                int cvp = Convert.ToInt32(Interaction.MsgBox("Devam Edicekmisiniz?", MsgBoxStyle.YesNo));
                if (cvp == 7) break;
            }//while

            Array.Resize(ref urunler, sayac);
            foreach (Kirtasiye gelen_urun in urunler)
            {
                if (gelen_urun is Kitap) ListBox1.Items.Add(((Kitap)gelen_urun).Kitap_bilgi());
                else ListBox1.Items.Add(((Sarf_malzeme)gelen_urun).Sarf_malzeme_bilgi());
            }//foreach "gelen bilginin ne olduğunu belirleme ve ona göre cevap gönderme
        }//button
        public Tedarik tedarikci_girisi()
        {
            Tedarik tedarik = new Tedarik()
            {
                tedarik_ad = Interaction.InputBox("Tedarikçi Adı Giriniz", "", "", -1, -1),
                il = Interaction.InputBox("İl Giriniz", "", "", -1, -1),
                ilce = Interaction.InputBox("İlçe Giriniz", "", "", -1, -1),
                mahalle = Interaction.InputBox("Mahalle Giriniz", "", "", -1, -1),
                sokak = Interaction.InputBox("Sokak Giriniz", "", "", -1, -1),
                tel_no = Convert.ToInt32(Interaction.InputBox("Tedarikçi Bilgileri", "", "", -1, -1))
            };
            return tedarik;


        }//tedarikci_girisi() metodu

    }
}