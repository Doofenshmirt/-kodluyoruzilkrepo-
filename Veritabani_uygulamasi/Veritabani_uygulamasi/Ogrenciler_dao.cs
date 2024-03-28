using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Data.SqlClient;
namespace Veritabani_uygulamasi
{
    public class Ogrenciler_dao
    {
        public ArrayList tum_ogrencileri_getir()
        {
            ArrayList ogrenci_listem = new ArrayList();
            SqlConnection baglanti = new Veri_tabani_yardimcisi().baglantiya_gec();
           
            baglanti.Open();
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select * from ogrenciler order by og_no asc";
            komut.Connection = baglanti;
            SqlDataReader oku= komut.ExecuteReader();//gelen verileri tutan nesne
            while(oku.Read()==true)//kayıt okuyabildikçe dön
            {
                Ogrenciler yeni_ogr = new Ogrenciler()
                {
                    og_no=Convert.ToInt32(oku["og_no"]),
                    ad_soyad=oku["ad_soyad"].ToString (),
                     dog_tar=Convert.ToDateTime(oku["dog_tar"]),
                    adres=oku["adres"].ToString()   
                };
                ogrenci_listem.Add(yeni_ogr);
            }
            oku.Close();
            baglanti.Close();
            return ogrenci_listem;
        }

        public int ogrenci_kaydet(Ogrenciler yeni_ogr)
        {
            int sayi = 0;
            try
            {
              SqlConnection baglanti = new Veri_tabani_yardimcisi().baglantiya_gec();

                baglanti.Open();
                SqlCommand komut = new SqlCommand();
                komut.CommandText = "insert into ogrenciler(og_no,ad_soyad,dog_tar,adres) values (@og_no,@ad_soyad,@dog_tar,@adres) ";
                komut.Connection = baglanti;
                komut.Parameters.AddWithValue("@og_no", yeni_ogr.og_no);
                komut.Parameters.AddWithValue("@ad_soyad", yeni_ogr.ad_soyad);
                komut.Parameters.AddWithValue("@dog_tar", yeni_ogr.dog_tar);
                komut.Parameters.AddWithValue("@adres", yeni_ogr.adres);
                sayi = komut.ExecuteNonQuery();

                baglanti.Close();
            }
            catch (Exception)
            {
                sayi = -1;
            }


            return sayi;
        }

        public int ogrenci_sil(int silinecek_og_no)
        {
            int sayi = 0;
            SqlConnection baglanti = new Veri_tabani_yardimcisi().baglantiya_gec();

            baglanti.Open();
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "delete from ogrenciler where og_no=@og_no";
            komut.Connection = baglanti;
            komut.Parameters.AddWithValue("@og_no", silinecek_og_no);
            sayi = komut.ExecuteNonQuery();

            baglanti.Close();
            return sayi;
        }

        public Ogrenciler  ogrenci_bul(int og_no)
        {
            SqlConnection baglanti = new Veri_tabani_yardimcisi().baglantiya_gec();
            baglanti.Open();
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "select * from ogrenciler where og_no=@og_no";
            komut.Connection = baglanti;
            komut.Parameters.AddWithValue("@og_no", og_no);
           SqlDataReader oku= komut.ExecuteReader();
            oku.Read();
            Ogrenciler ogrencimiz = new Ogrenciler()
            {
                 og_no=Convert.ToInt32 (oku["og_no"]),
                  ad_soyad =oku["ad_soyad"].ToString (),
                   dog_tar=Convert.ToDateTime (oku["dog_tar"]),
                    adres =oku["adres"].ToString ()
            };
            oku.Close();
            baglanti.Close();
            return ogrencimiz;
        }

        public int ogrenci_guncelle(Ogrenciler ogrencimiz)
        {

            int sayi = 0;
            SqlConnection baglanti = new Veri_tabani_yardimcisi().baglantiya_gec();
            baglanti.Open();
            SqlCommand komut = new SqlCommand();
            komut.CommandText = "update ogrenciler set ad_soyad=@ad_soyad,dog_tar=@dog_tar,adres=@adres where og_no=@og_no";
            komut.Connection = baglanti;
            komut.Parameters.AddWithValue("@ad_soyad",ogrencimiz.ad_soyad);
            komut.Parameters.AddWithValue("@dog_tar",ogrencimiz.dog_tar);
            komut.Parameters.AddWithValue("@adres",ogrencimiz.adres);
            komut.Parameters.AddWithValue("@og_no",ogrencimiz.og_no);
            sayi = komut.ExecuteNonQuery();

            baglanti.Close();
            return sayi;
        }
    }
}