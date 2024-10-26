namespace RendelesApp
{
    partial class RendelesForm
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
            components = new System.ComponentModel.Container();
            lbUgyfelek = new ListBox();
            ugyfelBindingSource = new BindingSource(components);
            txtSzuro = new TextBox();
            lbTermek = new ListBox();
            termekBindingSource = new BindingSource(components);
            dgvTetelek = new DataGridView();
            rendelesBindingSource = new BindingSource(components);
            allTermekBindingSource = new BindingSource(components);
            btnHozzaad = new Button();
            btnTorol = new Button();
            lblRendelesLabel = new Label();
            lbRendeles = new ListBox();
            label2 = new Label();
            label3 = new Label();
            label4 = new Label();
            btnUjRendeles = new Button();
            cbCimek = new ComboBox();
            cimEgybenDTOBindingSource = new BindingSource(components);
            label6 = new Label();
            label7 = new Label();
            label8 = new Label();
            label9 = new Label();
            txtKedvezmeny = new TextBox();
            btnMentes = new Button();
            btnExcel = new Button();
            txtMennyiseg = new TextBox();
            label1 = new Label();
            cbStatusz = new ComboBox();
            label10 = new Label();
            label11 = new Label();
            ((System.ComponentModel.ISupportInitialize)ugyfelBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)termekBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)dgvTetelek).BeginInit();
            ((System.ComponentModel.ISupportInitialize)rendelesBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)allTermekBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)cimEgybenDTOBindingSource).BeginInit();
            SuspendLayout();
            // 
            // lbUgyfelek
            // 
            lbUgyfelek.DataSource = ugyfelBindingSource;
            lbUgyfelek.DisplayMember = "Nev";
            lbUgyfelek.FormattingEnabled = true;
            lbUgyfelek.ItemHeight = 15;
            lbUgyfelek.Location = new Point(10, 76);
            lbUgyfelek.Name = "lbUgyfelek";
            lbUgyfelek.Size = new Size(250, 364);
            lbUgyfelek.TabIndex = 0;
            lbUgyfelek.ValueMember = "UgyfelId";
            lbUgyfelek.SelectedIndexChanged += lbUgyfelek_SelectedIndexChanged;
            // 
            // ugyfelBindingSource
            // 
            ugyfelBindingSource.DataSource = typeof(Models.Ugyfel);
            // 
            // txtSzuro
            // 
            txtSzuro.Location = new Point(10, 32);
            txtSzuro.Name = "txtSzuro";
            txtSzuro.Size = new Size(250, 23);
            txtSzuro.TabIndex = 1;
            txtSzuro.TextChanged += txtSzuro_TextChanged;
            // 
            // lbTermek
            // 
            lbTermek.DataSource = termekBindingSource;
            lbTermek.DisplayMember = "Nev";
            lbTermek.FormattingEnabled = true;
            lbTermek.ItemHeight = 15;
            lbTermek.Location = new Point(1403, 76);
            lbTermek.Name = "lbTermek";
            lbTermek.Size = new Size(250, 364);
            lbTermek.TabIndex = 0;
            lbTermek.ValueMember = "TermekId";
            // 
            // termekBindingSource
            // 
            termekBindingSource.DataSource = typeof(Models.Termek);
            // 
            // dgvTetelek
            // 
            dgvTetelek.AllowUserToAddRows = false;
            dgvTetelek.AllowUserToDeleteRows = false;
            dgvTetelek.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvTetelek.Location = new Point(522, 120);
            dgvTetelek.Name = "dgvTetelek";
            dgvTetelek.ReadOnly = true;
            dgvTetelek.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dgvTetelek.Size = new Size(789, 320);
            dgvTetelek.TabIndex = 3;
            // 
            // rendelesBindingSource
            // 
            rendelesBindingSource.DataSource = typeof(Models.Rendeles);
            // 
            // allTermekBindingSource
            // 
            allTermekBindingSource.DataSource = typeof(Models.Termek);
            // 
            // btnHozzaad
            // 
            btnHozzaad.Location = new Point(1317, 215);
            btnHozzaad.Name = "btnHozzaad";
            btnHozzaad.Size = new Size(80, 52);
            btnHozzaad.TabIndex = 5;
            btnHozzaad.Text = "Tétel hozzáadás";
            btnHozzaad.UseVisualStyleBackColor = true;
            btnHozzaad.Click += btnHozzaad_Click;
            // 
            // btnTorol
            // 
            btnTorol.Location = new Point(1317, 273);
            btnTorol.Name = "btnTorol";
            btnTorol.Size = new Size(80, 52);
            btnTorol.TabIndex = 6;
            btnTorol.Text = "Tétel törlés";
            btnTorol.UseVisualStyleBackColor = true;
            btnTorol.Click += btnTorol_Click;
            // 
            // lblRendelesLabel
            // 
            lblRendelesLabel.AutoSize = true;
            lblRendelesLabel.Location = new Point(522, 447);
            lblRendelesLabel.Name = "lblRendelesLabel";
            lblRendelesLabel.Size = new Size(130, 15);
            lblRendelesLabel.TabIndex = 7;
            lblRendelesLabel.Text = "A rendelés teljes értéke:";
            // 
            // lbRendeles
            // 
            lbRendeles.DataSource = rendelesBindingSource;
            lbRendeles.DisplayMember = "RendelesDatum";
            lbRendeles.FormattingEnabled = true;
            lbRendeles.ItemHeight = 15;
            lbRendeles.Location = new Point(266, 76);
            lbRendeles.Name = "lbRendeles";
            lbRendeles.Size = new Size(250, 364);
            lbRendeles.TabIndex = 0;
            lbRendeles.ValueMember = "RendelesId";
            lbRendeles.SelectedIndexChanged += lbRendeles_SelectedIndexChanged;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(10, 58);
            label2.Name = "label2";
            label2.Size = new Size(53, 15);
            label2.TabIndex = 8;
            label2.Text = "Ügyfelek";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(266, 58);
            label3.Name = "label3";
            label3.Size = new Size(66, 15);
            label3.TabIndex = 8;
            label3.Text = "Rendelések";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(1403, 58);
            label4.Name = "label4";
            label4.Size = new Size(57, 15);
            label4.TabIndex = 9;
            label4.Text = "Termékek";
            // 
            // btnUjRendeles
            // 
            btnUjRendeles.Location = new Point(266, 443);
            btnUjRendeles.Name = "btnUjRendeles";
            btnUjRendeles.Size = new Size(250, 23);
            btnUjRendeles.TabIndex = 11;
            btnUjRendeles.Text = "Új rendelés";
            btnUjRendeles.UseVisualStyleBackColor = true;
            btnUjRendeles.Click += btnUjRendeles_Click;
            // 
            // cbCimek
            // 
            cbCimek.DataBindings.Add(new Binding("SelectedValue", rendelesBindingSource, "SzallitasiCimId", true, DataSourceUpdateMode.OnPropertyChanged));
            cbCimek.DataSource = cimEgybenDTOBindingSource;
            cbCimek.DisplayMember = "CimEgyben";
            cbCimek.FormattingEnabled = true;
            cbCimek.Location = new Point(522, 76);
            cbCimek.Name = "cbCimek";
            cbCimek.Size = new Size(453, 23);
            cbCimek.TabIndex = 12;
            cbCimek.ValueMember = "CimId";
            // 
            // cimEgybenDTOBindingSource
            // 
            cimEgybenDTOBindingSource.DataSource = typeof(CimEgybenDTO);
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(10, 14);
            label6.Name = "label6";
            label6.Size = new Size(94, 15);
            label6.TabIndex = 8;
            label6.Text = "Ügyfelek szűrése";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(522, 58);
            label7.Name = "label7";
            label7.Size = new Size(83, 15);
            label7.TabIndex = 8;
            label7.Text = "Rendelés címe";
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new Point(522, 102);
            label8.Name = "label8";
            label8.Size = new Size(85, 15);
            label8.TabIndex = 8;
            label8.Text = "Rendelt tételek";
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Location = new Point(981, 58);
            label9.Name = "label9";
            label9.Size = new Size(74, 15);
            label9.TabIndex = 8;
            label9.Text = "Kedvezmény";
            // 
            // txtKedvezmeny
            // 
            txtKedvezmeny.DataBindings.Add(new Binding("Text", rendelesBindingSource, "Kedvezmeny", true, DataSourceUpdateMode.OnPropertyChanged, "0", "0.00%"));
            txtKedvezmeny.Location = new Point(981, 76);
            txtKedvezmeny.Name = "txtKedvezmeny";
            txtKedvezmeny.Size = new Size(95, 23);
            txtKedvezmeny.TabIndex = 13;
            // 
            // btnMentes
            // 
            btnMentes.Location = new Point(1082, 444);
            btnMentes.Name = "btnMentes";
            btnMentes.Size = new Size(112, 23);
            btnMentes.TabIndex = 15;
            btnMentes.Text = "Mentés";
            btnMentes.UseVisualStyleBackColor = true;
            btnMentes.Click += btnMentes_Click;
            // 
            // btnExcel
            // 
            btnExcel.Location = new Point(1200, 443);
            btnExcel.Name = "btnExcel";
            btnExcel.Size = new Size(111, 23);
            btnExcel.TabIndex = 16;
            btnExcel.Text = "Excel export";
            btnExcel.UseVisualStyleBackColor = true;
            btnExcel.Click += btnExcel_Click;
            // 
            // txtMennyiseg
            // 
            txtMennyiseg.Location = new Point(1317, 167);
            txtMennyiseg.Name = "txtMennyiseg";
            txtMennyiseg.Size = new Size(80, 23);
            txtMennyiseg.TabIndex = 17;
            txtMennyiseg.Text = "1";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(1317, 149);
            label1.Name = "label1";
            label1.Size = new Size(65, 15);
            label1.TabIndex = 18;
            label1.Text = "Mennyiség";
            // 
            // cbStatusz
            // 
            cbStatusz.DataBindings.Add(new Binding("Text", rendelesBindingSource, "Statusz", true, DataSourceUpdateMode.OnPropertyChanged));
            cbStatusz.FormattingEnabled = true;
            cbStatusz.Items.AddRange(new object[] { "Feldolgozás alatt", "Szállítás", "Kiszállítva", "Törölve" });
            cbStatusz.Location = new Point(1082, 76);
            cbStatusz.Name = "cbStatusz";
            cbStatusz.Size = new Size(121, 23);
            cbStatusz.TabIndex = 19;
            // 
            // label10
            // 
            label10.AutoSize = true;
            label10.Location = new Point(1082, 58);
            label10.Name = "label10";
            label10.Size = new Size(44, 15);
            label10.TabIndex = 8;
            label10.Text = "Státusz";
            // 
            // label11
            // 
            label11.AutoSize = true;
            label11.DataBindings.Add(new Binding("Text", rendelesBindingSource, "Vegosszeg", true, DataSourceUpdateMode.OnPropertyChanged, "?? Ft", "0 Ft"));
            label11.Location = new Point(658, 448);
            label11.Name = "label11";
            label11.Size = new Size(17, 15);
            label11.TabIndex = 20;
            label11.Text = "??";
            // 
            // RendelesForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1540, 482);
            Controls.Add(label11);
            Controls.Add(cbStatusz);
            Controls.Add(label1);
            Controls.Add(txtMennyiseg);
            Controls.Add(btnExcel);
            Controls.Add(btnMentes);
            Controls.Add(txtKedvezmeny);
            Controls.Add(cbCimek);
            Controls.Add(btnUjRendeles);
            Controls.Add(label4);
            Controls.Add(label10);
            Controls.Add(label9);
            Controls.Add(label7);
            Controls.Add(label8);
            Controls.Add(label3);
            Controls.Add(label6);
            Controls.Add(label2);
            Controls.Add(lblRendelesLabel);
            Controls.Add(btnHozzaad);
            Controls.Add(btnTorol);
            Controls.Add(dgvTetelek);
            Controls.Add(txtSzuro);
            Controls.Add(lbTermek);
            Controls.Add(lbRendeles);
            Controls.Add(lbUgyfelek);
            Name = "RendelesForm";
            Text = "RendelesForm";
            Load += RendelesForm_Load;
            ((System.ComponentModel.ISupportInitialize)ugyfelBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)termekBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)dgvTetelek).EndInit();
            ((System.ComponentModel.ISupportInitialize)rendelesBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)allTermekBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)cimEgybenDTOBindingSource).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private ListBox lbUgyfelek;
        private TextBox txtSzuro;
        private ListBox lbTermek;
        private DataGridView dgvTetelek;
        private Button btnHozzaad;
        private Button btnTorol;
        private Label lblRendelesLabel;
        private BindingSource ugyfelBindingSource;
        private BindingSource termekBindingSource;
        private ListBox lbRendeles;
        private Label label2;
        private Label label3;
        private BindingSource rendelesBindingSource;
        private Label label4;
        private Button btnUjRendeles;
        private ComboBox cbCimek;
        private Label label6;
        private Label label7;
        private Label label8;
        private Label label9;
        private TextBox txtKedvezmeny;
        private Button btnMentes;
        private Button btnExcel;
        private TextBox txtMennyiseg;
        private Label label1;
        private ComboBox cbStatusz;
        private Label label10;
        private Label label11;
        private BindingSource allTermekBindingSource;
        private BindingSource cimEgybenDTOBindingSource;
    }
}