using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Veritabani_uygulamasi;
namespace Desktop_Uygulamasi
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form2 form2 = new Form2();
            form2.Show();
            //textBox1.Text = "merhaba Hoş geldiniz";
            //MessageBox.Show("Yazılım Eğtimi");
        }



        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'notlarDataSet.notlar' table. You can move, or remove it, as needed.
            this.notlarTableAdapter.Fill(this.notlarDataSet.notlar);
            // TODO: This line of code loads data into the 'derslerDataSet.dersler' table. You can move, or remove it, as needed.
            this.derslerTableAdapter.Fill(this.derslerDataSet.dersler);
            // TODO: This line of code loads data into the 'okulDataSet.notlar' table. You can move, or remove it, as needed.

            // TODO: This line of code loads data into the 'ogrencilerlDataSet.Ogrenciler' table. You can move, or remove it, as needed.
            grid_guncelle();

        }

        private void kapatToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void dataGridView1_MouseClick(object sender, MouseEventArgs e)
        {
            gezinti();
            
        }

        private void dataGridView1_KeyUp(object sender, KeyEventArgs e)
        {
            gezinti();
        }

        public void gezinti()
        {
            int secili_ogno = Convert.ToInt32(dataGridView1.CurrentRow.Cells[0].Value.ToString());

            Ogrenciler ogrencim = new Ogrenciler_dao().ogrenci_bul(secili_ogno);
            og_no_txt.Text = ogrencim.og_no.ToString();
            ad_soyad_txt.Text = ogrencim.ad_soyad;
            dog_tar_nesnesi.Value = ogrencim.dog_tar;
            adres_txt.Text = ogrencim.adres;
            og_no_txt.ReadOnly = true;
        }

        private void btn_kaydet_Click(object sender, EventArgs e)
        {
            Ogrenciler yeni_ogr = new Ogrenciler()
            {
                og_no=Convert.ToInt32 (og_no_txt.Text),
                ad_soyad=ad_soyad_txt.Text,
                dog_tar=dog_tar_nesnesi.Value,
                adres=adres_txt.Text
            };
         int s=   new Ogrenciler_dao().ogrenci_kaydet(yeni_ogr);
            if (s == 1)
            {
                MessageBox.Show("Kayıt başarılı");
                grid_guncelle();
              }

            else MessageBox.Show("kayıt başarısız hata var.Aynı öğrenci no var.Yada verilerde hata var");
        }

        public void grid_guncelle()
        {
            this.ogrencilerTableAdapter.Fill(this.ogrencilerlDataSet.Ogrenciler);
            dataGridView1.Refresh();
        }

        private void btn_sil_Click(object sender, EventArgs e)
        {
            if (og_no_txt.Text != "")
            {
                int silinecek_ogno = Convert.ToInt32(og_no_txt.Text);
                int s = new Ogrenciler_dao().ogrenci_sil(silinecek_ogno);
                if (s == 1)
                {
                    MessageBox.Show("Kayıt Silindi");
                    grid_guncelle();
                }

                else MessageBox.Show("kayıt Silinmedi hata var.");
            }
            else MessageBox.Show("Silinecek öğrenci seçilmedi");
        }

        private void btn_guncelle_Click(object sender, EventArgs e)
        {
            Ogrenciler yeni_ogr = new Ogrenciler()
            {
                og_no = Convert.ToInt32(og_no_txt.Text),
                ad_soyad = ad_soyad_txt.Text,
                dog_tar = dog_tar_nesnesi.Value,
                adres = adres_txt.Text
            };
            int s = new Ogrenciler_dao().ogrenci_guncelle(yeni_ogr);
            if (s == 1)
            {
                MessageBox.Show("Kayıt Değiştirildi");
                grid_guncelle();
            }

            else MessageBox.Show("kayıt Değiştirilemedi hata var.Aynı öğrenci no var.Yada verilerde hata var");
        }

 
    }
}
