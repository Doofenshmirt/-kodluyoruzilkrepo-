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
            // TODO: This line of code loads data into the 'ogrencilerlDataSet.Ogrenciler' table. You can move, or remove it, as needed.
            this.ogrencilerTableAdapter.Fill(this.ogrencilerlDataSet.Ogrenciler);

        }

        private void kapatToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

   
    }
}
