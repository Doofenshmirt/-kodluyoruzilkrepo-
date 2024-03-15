using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace Ajanda_uygulamasi
{
  public partial class Not_ekle : Form
    {
        public Not_ekle()
        {
            InitializeCompent();
        }
        public string Tarih
        {
            get { return Label1.Text; }
            set { Label1.Text; }
        }
        public string Gun
        {
            get { return gun; }
            set { gun = value; }
        }

        public string Ay
        {
            get { return ay; }
            set { ay = value; }
        }
        public string Yil
        {
            get { return yil; }
            set { yil = value; }
        }

        public string Saat
        {
            get { return TextBox1.Text; }
            set { TextBox1.Text = value; }
        }

        public string ID
        {
            get { return id; }
            set { id = value; }
        }

        public string Notlar
        {
            get { return RichTextBox1.Text; }
            set { RichTextBox1.Text = value; }
        }

        public string Alarm
        {
            get { return ComboBox1.SelectedItem.ToString(); }
            set { ComboBox1.SelectedItem = value; }
        }

        public bool Guncelle
        {
            get { return guncelle; }
            set { guncelle = value; }
        }

        bool guncelle;
        string gun, ay, yil, id;

        SqlConnection baglanti = new Veri_tabani_yardimcisi().baglantiya_gec();

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (baglanti.State != ConnectionState.Open) baglanti.Open();
                if (Guncelle == true)
                {
                    MySqlCommand ekle = new MySqlCommand("update ajanda set notlar='" + Notlar + "',gun='" + Gun + "',ay='" + Ay + "'yil='" + Yil + "',saat='" + Saat + "',alarm='" + Alarm + "'where id='" + ID + "", baglanti);
                    object sonuc = null;
                    sonuc = ekle.ExecuteNonQuery();
                    if (sonuc != null)
                    {
                        MessageBox.Show("Başarıyla Güncellendi:)");
                    }
                    else
                    {
                        MessageBox.Show("Malesef,Güncellenemedi:/");
                        baglanti.Close();
                    }
                }
                else
                {
                    MySqlCommand ekle = new MySqlCommand("İnsert into ajanda (notlar,gun,ay,yil,saat,alarm) values ('" + Notlar + "','" + Gun + "','" + Ay + "','" + Yil + "','" + Saat + "','" + Alarm + "')", baglanti);
                    object sonuc = null;
                    sonuc = ekle.ExecuteNonQuery();
                    if (sonuc != null)
                    {
                        MessageBox.Show("Başarıyla Güncellendi:)");
                    }
                    else
                    {
                        MessageBox.Show("Malesef,Güncellenemedi:/");
                        baglanti.Close();
                    }
                }
            }
        }
  }
}
