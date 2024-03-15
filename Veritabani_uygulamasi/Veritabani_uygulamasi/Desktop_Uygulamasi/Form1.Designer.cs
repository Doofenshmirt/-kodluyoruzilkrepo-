
namespace Desktop_Uygulamasi
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.button1 = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.dosyaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.açToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.Form2actoolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.kapatToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.düzenToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.kopyalaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.yapıştırToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStrip1 = new System.Windows.Forms.ToolStrip();
            this.toolStripButton1 = new System.Windows.Forms.ToolStripButton();
            this.toolStripButton2 = new System.Windows.Forms.ToolStripButton();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.text_sag_menu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.kopyalaToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.kesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.yapıştırToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.form_sag_menu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.açToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.kapatToolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.ognoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.adsoyadDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dogtarDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.adresDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ogrencilerBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.ogrencilerlDataSet = new Desktop_Uygulamasi.OgrencilerlDataSet();
            this.btn_sil = new System.Windows.Forms.Button();
            this.adres_txt = new System.Windows.Forms.TextBox();
            this.dog_tar_nesnesi = new System.Windows.Forms.DateTimePicker();
            this.ad_soyad_txt = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.og_no_txt = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.ogrencilerTableAdapter = new Desktop_Uygulamasi.OgrencilerlDataSetTableAdapters.OgrencilerTableAdapter();
            this.btn_guncelle = new System.Windows.Forms.Button();
            this.btn_kaydet = new System.Windows.Forms.Button();
            this.menuStrip1.SuspendLayout();
            this.toolStrip1.SuspendLayout();
            this.text_sag_menu.SuspendLayout();
            this.form_sag_menu.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ogrencilerBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ogrencilerlDataSet)).BeginInit();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.Green;
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.button1.ForeColor = System.Drawing.Color.White;
            this.button1.Location = new System.Drawing.Point(1053, 68);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(132, 40);
            this.button1.TabIndex = 0;
            this.button1.Text = "Form2 aç";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // menuStrip1
            // 
            this.menuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.dosyaToolStripMenuItem,
            this.düzenToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1321, 30);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // dosyaToolStripMenuItem
            // 
            this.dosyaToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.açToolStripMenuItem,
            this.kapatToolStripMenuItem});
            this.dosyaToolStripMenuItem.Name = "dosyaToolStripMenuItem";
            this.dosyaToolStripMenuItem.Size = new System.Drawing.Size(64, 26);
            this.dosyaToolStripMenuItem.Text = "Dosya";
            // 
            // açToolStripMenuItem
            // 
            this.açToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.Form2actoolStripMenuItem1});
            this.açToolStripMenuItem.Name = "açToolStripMenuItem";
            this.açToolStripMenuItem.Size = new System.Drawing.Size(182, 26);
            this.açToolStripMenuItem.Text = "Aç";
            // 
            // Form2actoolStripMenuItem1
            // 
            this.Form2actoolStripMenuItem1.Name = "Form2actoolStripMenuItem1";
            this.Form2actoolStripMenuItem1.Size = new System.Drawing.Size(155, 26);
            this.Form2actoolStripMenuItem1.Text = "Form2 Aç";
            this.Form2actoolStripMenuItem1.Click += new System.EventHandler(this.button1_Click);
            // 
            // kapatToolStripMenuItem
            // 
            this.kapatToolStripMenuItem.Name = "kapatToolStripMenuItem";
            this.kapatToolStripMenuItem.ShortcutKeys = ((System.Windows.Forms.Keys)((System.Windows.Forms.Keys.Control | System.Windows.Forms.Keys.X)));
            this.kapatToolStripMenuItem.Size = new System.Drawing.Size(182, 26);
            this.kapatToolStripMenuItem.Text = "Kapat";
            this.kapatToolStripMenuItem.Click += new System.EventHandler(this.kapatToolStripMenuItem_Click);
            // 
            // düzenToolStripMenuItem
            // 
            this.düzenToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.kopyalaToolStripMenuItem,
            this.yapıştırToolStripMenuItem});
            this.düzenToolStripMenuItem.Name = "düzenToolStripMenuItem";
            this.düzenToolStripMenuItem.Size = new System.Drawing.Size(65, 26);
            this.düzenToolStripMenuItem.Text = "Düzen";
            // 
            // kopyalaToolStripMenuItem
            // 
            this.kopyalaToolStripMenuItem.Name = "kopyalaToolStripMenuItem";
            this.kopyalaToolStripMenuItem.Size = new System.Drawing.Size(146, 26);
            this.kopyalaToolStripMenuItem.Text = "Kopyala";
            // 
            // yapıştırToolStripMenuItem
            // 
            this.yapıştırToolStripMenuItem.Name = "yapıştırToolStripMenuItem";
            this.yapıştırToolStripMenuItem.Size = new System.Drawing.Size(146, 26);
            this.yapıştırToolStripMenuItem.Text = "Yapıştır";
            // 
            // toolStrip1
            // 
            this.toolStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripButton1,
            this.toolStripButton2});
            this.toolStrip1.Location = new System.Drawing.Point(0, 30);
            this.toolStrip1.Name = "toolStrip1";
            this.toolStrip1.Size = new System.Drawing.Size(1321, 31);
            this.toolStrip1.TabIndex = 2;
            this.toolStrip1.Text = "toolStrip1";
            // 
            // toolStripButton1
            // 
            this.toolStripButton1.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButton1.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton1.Name = "toolStripButton1";
            this.toolStripButton1.Size = new System.Drawing.Size(29, 28);
            this.toolStripButton1.Text = "toolStripButton1";
            this.toolStripButton1.Click += new System.EventHandler(this.button1_Click);
            // 
            // toolStripButton2
            // 
            this.toolStripButton2.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.toolStripButton2.ImageTransparentColor = System.Drawing.Color.Magenta;
            this.toolStripButton2.Name = "toolStripButton2";
            this.toolStripButton2.Size = new System.Drawing.Size(29, 28);
            this.toolStripButton2.Text = "toolStripButton2";
            this.toolStripButton2.Click += new System.EventHandler(this.kapatToolStripMenuItem_Click);
            // 
            // textBox1
            // 
            this.textBox1.ContextMenuStrip = this.text_sag_menu;
            this.textBox1.Location = new System.Drawing.Point(653, 46);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(349, 22);
            this.textBox1.TabIndex = 3;
            // 
            // text_sag_menu
            // 
            this.text_sag_menu.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.text_sag_menu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.kopyalaToolStripMenuItem1,
            this.kesToolStripMenuItem,
            this.yapıştırToolStripMenuItem1});
            this.text_sag_menu.Name = "text_sag_menu";
            this.text_sag_menu.Size = new System.Drawing.Size(133, 76);
            // 
            // kopyalaToolStripMenuItem1
            // 
            this.kopyalaToolStripMenuItem1.Name = "kopyalaToolStripMenuItem1";
            this.kopyalaToolStripMenuItem1.Size = new System.Drawing.Size(132, 24);
            this.kopyalaToolStripMenuItem1.Text = "Kopyala";
            // 
            // kesToolStripMenuItem
            // 
            this.kesToolStripMenuItem.Name = "kesToolStripMenuItem";
            this.kesToolStripMenuItem.Size = new System.Drawing.Size(132, 24);
            this.kesToolStripMenuItem.Text = "Kes";
            // 
            // yapıştırToolStripMenuItem1
            // 
            this.yapıştırToolStripMenuItem1.Name = "yapıştırToolStripMenuItem1";
            this.yapıştırToolStripMenuItem1.Size = new System.Drawing.Size(132, 24);
            this.yapıştırToolStripMenuItem1.Text = "Yapıştır";
            // 
            // form_sag_menu
            // 
            this.form_sag_menu.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.form_sag_menu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.açToolStripMenuItem1,
            this.kapatToolStripMenuItem1});
            this.form_sag_menu.Name = "form_sag_menu";
            this.form_sag_menu.Size = new System.Drawing.Size(118, 52);
            // 
            // açToolStripMenuItem1
            // 
            this.açToolStripMenuItem1.Name = "açToolStripMenuItem1";
            this.açToolStripMenuItem1.Size = new System.Drawing.Size(117, 24);
            this.açToolStripMenuItem1.Text = "Aç";
            this.açToolStripMenuItem1.Click += new System.EventHandler(this.button1_Click);
            // 
            // kapatToolStripMenuItem1
            // 
            this.kapatToolStripMenuItem1.Name = "kapatToolStripMenuItem1";
            this.kapatToolStripMenuItem1.Size = new System.Drawing.Size(117, 24);
            this.kapatToolStripMenuItem1.Text = "Kapat";
            this.kapatToolStripMenuItem1.Click += new System.EventHandler(this.kapatToolStripMenuItem_Click);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Location = new System.Drawing.Point(46, 114);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1237, 725);
            this.tabControl1.TabIndex = 6;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.dataGridView1);
            this.tabPage1.Controls.Add(this.btn_sil);
            this.tabPage1.Controls.Add(this.btn_guncelle);
            this.tabPage1.Controls.Add(this.btn_kaydet);
            this.tabPage1.Controls.Add(this.adres_txt);
            this.tabPage1.Controls.Add(this.dog_tar_nesnesi);
            this.tabPage1.Controls.Add(this.ad_soyad_txt);
            this.tabPage1.Controls.Add(this.label4);
            this.tabPage1.Controls.Add(this.label3);
            this.tabPage1.Controls.Add(this.label2);
            this.tabPage1.Controls.Add(this.og_no_txt);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Location = new System.Drawing.Point(4, 25);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1229, 696);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Öğrenci İşlemleri";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.ognoDataGridViewTextBoxColumn,
            this.adsoyadDataGridViewTextBoxColumn,
            this.dogtarDataGridViewTextBoxColumn,
            this.adresDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.ogrencilerBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(28, 436);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.ReadOnly = true;
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(821, 192);
            this.dataGridView1.TabIndex = 14;
            // 
            // ognoDataGridViewTextBoxColumn
            // 
            this.ognoDataGridViewTextBoxColumn.DataPropertyName = "og_no";
            this.ognoDataGridViewTextBoxColumn.HeaderText = "Öğrenci No";
            this.ognoDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.ognoDataGridViewTextBoxColumn.Name = "ognoDataGridViewTextBoxColumn";
            this.ognoDataGridViewTextBoxColumn.ReadOnly = true;
            this.ognoDataGridViewTextBoxColumn.Width = 125;
            // 
            // adsoyadDataGridViewTextBoxColumn
            // 
            this.adsoyadDataGridViewTextBoxColumn.DataPropertyName = "ad_soyad";
            this.adsoyadDataGridViewTextBoxColumn.HeaderText = "Adı Soyadı";
            this.adsoyadDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.adsoyadDataGridViewTextBoxColumn.Name = "adsoyadDataGridViewTextBoxColumn";
            this.adsoyadDataGridViewTextBoxColumn.ReadOnly = true;
            this.adsoyadDataGridViewTextBoxColumn.Width = 125;
            // 
            // dogtarDataGridViewTextBoxColumn
            // 
            this.dogtarDataGridViewTextBoxColumn.DataPropertyName = "dog_tar";
            this.dogtarDataGridViewTextBoxColumn.HeaderText = "Doğum Tarihi";
            this.dogtarDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.dogtarDataGridViewTextBoxColumn.Name = "dogtarDataGridViewTextBoxColumn";
            this.dogtarDataGridViewTextBoxColumn.ReadOnly = true;
            this.dogtarDataGridViewTextBoxColumn.Width = 125;
            // 
            // adresDataGridViewTextBoxColumn
            // 
            this.adresDataGridViewTextBoxColumn.DataPropertyName = "adres";
            this.adresDataGridViewTextBoxColumn.HeaderText = "adres";
            this.adresDataGridViewTextBoxColumn.MinimumWidth = 6;
            this.adresDataGridViewTextBoxColumn.Name = "adresDataGridViewTextBoxColumn";
            this.adresDataGridViewTextBoxColumn.ReadOnly = true;
            this.adresDataGridViewTextBoxColumn.Width = 125;
            // 
            // ogrencilerBindingSource
            // 
            this.ogrencilerBindingSource.DataMember = "Ogrenciler";
            this.ogrencilerBindingSource.DataSource = this.ogrencilerlDataSet;
            // 
            // ogrencilerlDataSet
            // 
            this.ogrencilerlDataSet.DataSetName = "OgrencilerlDataSet";
            this.ogrencilerlDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // btn_sil
            // 
            this.btn_sil.Image = global::Desktop_Uygulamasi.Properties.Resources.trash;
            this.btn_sil.Location = new System.Drawing.Point(416, 333);
            this.btn_sil.Name = "btn_sil";
            this.btn_sil.Size = new System.Drawing.Size(103, 64);
            this.btn_sil.TabIndex = 13;
            this.btn_sil.UseVisualStyleBackColor = true;
            // 
            // adres_txt
            // 
            this.adres_txt.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.adres_txt.Location = new System.Drawing.Point(216, 174);
            this.adres_txt.Multiline = true;
            this.adres_txt.Name = "adres_txt";
            this.adres_txt.Size = new System.Drawing.Size(274, 114);
            this.adres_txt.TabIndex = 10;
            // 
            // dog_tar_nesnesi
            // 
            this.dog_tar_nesnesi.CalendarForeColor = System.Drawing.Color.Red;
            this.dog_tar_nesnesi.CalendarMonthBackground = System.Drawing.Color.AliceBlue;
            this.dog_tar_nesnesi.CalendarTitleBackColor = System.Drawing.Color.Blue;
            this.dog_tar_nesnesi.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.dog_tar_nesnesi.Location = new System.Drawing.Point(216, 124);
            this.dog_tar_nesnesi.Name = "dog_tar_nesnesi";
            this.dog_tar_nesnesi.Size = new System.Drawing.Size(326, 30);
            this.dog_tar_nesnesi.TabIndex = 9;
            // 
            // ad_soyad_txt
            // 
            this.ad_soyad_txt.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.ad_soyad_txt.Location = new System.Drawing.Point(216, 77);
            this.ad_soyad_txt.Name = "ad_soyad_txt";
            this.ad_soyad_txt.Size = new System.Drawing.Size(244, 30);
            this.ad_soyad_txt.TabIndex = 8;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label4.Location = new System.Drawing.Point(62, 77);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(124, 25);
            this.label4.TabIndex = 7;
            this.label4.Text = "Adı Soyadı:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label3.Location = new System.Drawing.Point(62, 124);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(148, 25);
            this.label3.TabIndex = 6;
            this.label3.Text = "Doğum Tarihi:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label2.Location = new System.Drawing.Point(62, 174);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(81, 25);
            this.label2.TabIndex = 5;
            this.label2.Text = "Adresi:";
            // 
            // og_no_txt
            // 
            this.og_no_txt.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.og_no_txt.Location = new System.Drawing.Point(216, 35);
            this.og_no_txt.Name = "og_no_txt";
            this.og_no_txt.Size = new System.Drawing.Size(100, 30);
            this.og_no_txt.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label1.Location = new System.Drawing.Point(62, 35);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(128, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Öğrenci No:";
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 25);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1229, 696);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Not İşlemleri";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // tabPage3
            // 
            this.tabPage3.Location = new System.Drawing.Point(4, 25);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Size = new System.Drawing.Size(1229, 696);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Ders İşlemleri";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // ogrencilerTableAdapter
            // 
            this.ogrencilerTableAdapter.ClearBeforeFill = true;
            // 
            // btn_guncelle
            // 
            this.btn_guncelle.Image = global::Desktop_Uygulamasi.Properties.Resources.update;
            this.btn_guncelle.Location = new System.Drawing.Point(255, 333);
            this.btn_guncelle.Name = "btn_guncelle";
            this.btn_guncelle.Size = new System.Drawing.Size(103, 64);
            this.btn_guncelle.TabIndex = 12;
            this.btn_guncelle.UseVisualStyleBackColor = true;
            // 
            // btn_kaydet
            // 
            this.btn_kaydet.Image = global::Desktop_Uygulamasi.Properties.Resources.save;
            this.btn_kaydet.Location = new System.Drawing.Point(83, 333);
            this.btn_kaydet.Name = "btn_kaydet";
            this.btn_kaydet.Size = new System.Drawing.Size(103, 64);
            this.btn_kaydet.TabIndex = 11;
            this.btn_kaydet.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1321, 842);
            this.ContextMenuStrip = this.form_sag_menu;
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.textBox1);
            this.Controls.Add(this.toolStrip1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.menuStrip1);
            this.MaximizeBox = false;
            this.Name = "Form1";
            this.Text = "Okul Kayıt Takip Sistemi";
            this.Load += new System.EventHandler(this.Form1_Load);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.toolStrip1.ResumeLayout(false);
            this.toolStrip1.PerformLayout();
            this.text_sag_menu.ResumeLayout(false);
            this.form_sag_menu.ResumeLayout(false);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ogrencilerBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ogrencilerlDataSet)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem dosyaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem açToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem kapatToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem düzenToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem kopyalaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem yapıştırToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem Form2actoolStripMenuItem1;
        private System.Windows.Forms.ToolStrip toolStrip1;
        private System.Windows.Forms.ToolStripButton toolStripButton1;
        private System.Windows.Forms.ToolStripButton toolStripButton2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.ContextMenuStrip form_sag_menu;
        private System.Windows.Forms.ToolStripMenuItem açToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem kapatToolStripMenuItem1;
        private System.Windows.Forms.ContextMenuStrip text_sag_menu;
        private System.Windows.Forms.ToolStripMenuItem kopyalaToolStripMenuItem1;
        private System.Windows.Forms.ToolStripMenuItem kesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem yapıştırToolStripMenuItem1;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.DateTimePicker dog_tar_nesnesi;
        private System.Windows.Forms.TextBox ad_soyad_txt;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox og_no_txt;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox adres_txt;
        private System.Windows.Forms.Button btn_kaydet;
        private System.Windows.Forms.Button btn_guncelle;
        private System.Windows.Forms.Button btn_sil;
        private System.Windows.Forms.DataGridView dataGridView1;
        private OgrencilerlDataSet ogrencilerlDataSet;
        private System.Windows.Forms.BindingSource ogrencilerBindingSource;
        private OgrencilerlDataSetTableAdapters.OgrencilerTableAdapter ogrencilerTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn ognoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn adsoyadDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn dogtarDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn adresDataGridViewTextBoxColumn;
    }
}

