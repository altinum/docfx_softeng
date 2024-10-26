namespace RendelesApp
{
    partial class UgyfelSzerkesztesForm
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
            lblNev = new Label();
            tbNev = new TextBox();
            ugyfelBindingSource = new BindingSource(components);
            lblEmail = new Label();
            tbEmail = new TextBox();
            lblTelefonszam = new Label();
            tbTelefonszam = new TextBox();
            rbLetezoCim = new RadioButton();
            rbUjCim = new RadioButton();
            cbCimek = new ComboBox();
            label4 = new Label();
            tbOrszag = new TextBox();
            label5 = new Label();
            tbIranyitoszam = new TextBox();
            label6 = new Label();
            tbVaros = new TextBox();
            label7 = new Label();
            tbUtca = new TextBox();
            label8 = new Label();
            tbHazszam = new TextBox();
            btnMentes = new Button();
            btnMegse = new Button();
            errorProvider1 = new ErrorProvider(components);
            cimBindingSource = new BindingSource(components);
            ((System.ComponentModel.ISupportInitialize)ugyfelBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)errorProvider1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)cimBindingSource).BeginInit();
            SuspendLayout();
            // 
            // lblNev
            // 
            lblNev.AutoSize = true;
            lblNev.CausesValidation = false;
            lblNev.Location = new Point(12, 24);
            lblNev.Name = "lblNev";
            lblNev.Size = new Size(28, 15);
            lblNev.TabIndex = 0;
            lblNev.Text = "Név";
            // 
            // tbNev
            // 
            tbNev.CausesValidation = false;
            tbNev.DataBindings.Add(new Binding("Text", ugyfelBindingSource, "Nev", true));
            tbNev.Location = new Point(102, 21);
            tbNev.Name = "tbNev";
            tbNev.Size = new Size(293, 23);
            tbNev.TabIndex = 1;
            tbNev.Validating += tbNev_Validating;
            // 
            // ugyfelBindingSource
            // 
            ugyfelBindingSource.DataSource = typeof(Models.Ugyfel);
            // 
            // lblEmail
            // 
            lblEmail.AutoSize = true;
            lblEmail.CausesValidation = false;
            lblEmail.Location = new Point(12, 53);
            lblEmail.Name = "lblEmail";
            lblEmail.Size = new Size(36, 15);
            lblEmail.TabIndex = 0;
            lblEmail.Text = "Email";
            // 
            // tbEmail
            // 
            tbEmail.CausesValidation = false;
            tbEmail.DataBindings.Add(new Binding("Text", ugyfelBindingSource, "Email", true));
            tbEmail.Location = new Point(102, 50);
            tbEmail.Name = "tbEmail";
            tbEmail.Size = new Size(293, 23);
            tbEmail.TabIndex = 1;
            tbEmail.Validating += tbEmail_Validating;
            // 
            // lblTelefonszam
            // 
            lblTelefonszam.AutoSize = true;
            lblTelefonszam.CausesValidation = false;
            lblTelefonszam.Location = new Point(12, 82);
            lblTelefonszam.Name = "lblTelefonszam";
            lblTelefonszam.Size = new Size(72, 15);
            lblTelefonszam.TabIndex = 0;
            lblTelefonszam.Text = "Telefonszám";
            // 
            // tbTelefonszam
            // 
            tbTelefonszam.CausesValidation = false;
            tbTelefonszam.DataBindings.Add(new Binding("Text", ugyfelBindingSource, "Telefonszam", true));
            tbTelefonszam.Location = new Point(102, 79);
            tbTelefonszam.Name = "tbTelefonszam";
            tbTelefonszam.Size = new Size(293, 23);
            tbTelefonszam.TabIndex = 1;
            tbTelefonszam.Validating += tbTelefonszam_Validating;
            // 
            // rbLetezoCim
            // 
            rbLetezoCim.AutoSize = true;
            rbLetezoCim.CausesValidation = false;
            rbLetezoCim.Checked = true;
            rbLetezoCim.Location = new Point(12, 116);
            rbLetezoCim.Name = "rbLetezoCim";
            rbLetezoCim.Size = new Size(137, 19);
            rbLetezoCim.TabIndex = 2;
            rbLetezoCim.TabStop = true;
            rbLetezoCim.Text = "Létező cím beállítása:";
            rbLetezoCim.UseVisualStyleBackColor = true;
            rbLetezoCim.CheckedChanged += rbLetezoCim_CheckedChanged;
            // 
            // rbUjCim
            // 
            rbUjCim.AutoSize = true;
            rbUjCim.CausesValidation = false;
            rbUjCim.Location = new Point(12, 186);
            rbUjCim.Name = "rbUjCim";
            rbUjCim.Size = new Size(114, 19);
            rbUjCim.TabIndex = 2;
            rbUjCim.Text = "Új cím beállítása:";
            rbUjCim.UseVisualStyleBackColor = true;
            rbUjCim.CheckedChanged += rbUjCim_CheckedChanged;
            // 
            // cbCimek
            // 
            cbCimek.CausesValidation = false;
            cbCimek.DataBindings.Add(new Binding("SelectedValue", ugyfelBindingSource, "LakcimId", true));
            cbCimek.DataSource = cimBindingSource;
            cbCimek.DisplayMember = "CimEgyben";
            cbCimek.FormattingEnabled = true;
            cbCimek.Location = new Point(12, 145);
            cbCimek.Name = "cbCimek";
            cbCimek.Size = new Size(383, 23);
            cbCimek.TabIndex = 3;
            cbCimek.ValueMember = "CimId";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.CausesValidation = false;
            label4.Location = new Point(12, 224);
            label4.Name = "label4";
            label4.Size = new Size(43, 15);
            label4.TabIndex = 4;
            label4.Text = "Ország";
            // 
            // tbOrszag
            // 
            tbOrszag.CausesValidation = false;
            tbOrszag.Enabled = false;
            tbOrszag.Location = new Point(102, 221);
            tbOrszag.Name = "tbOrszag";
            tbOrszag.Size = new Size(293, 23);
            tbOrszag.TabIndex = 5;
            tbOrszag.Validating += tbCim_Validating;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.CausesValidation = false;
            label5.Location = new Point(12, 253);
            label5.Name = "label5";
            label5.Size = new Size(74, 15);
            label5.TabIndex = 4;
            label5.Text = "Irányítószám";
            // 
            // tbIranyitoszam
            // 
            tbIranyitoszam.CausesValidation = false;
            tbIranyitoszam.Enabled = false;
            tbIranyitoszam.Location = new Point(102, 250);
            tbIranyitoszam.Name = "tbIranyitoszam";
            tbIranyitoszam.Size = new Size(293, 23);
            tbIranyitoszam.TabIndex = 5;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.CausesValidation = false;
            label6.Location = new Point(12, 282);
            label6.Name = "label6";
            label6.Size = new Size(35, 15);
            label6.TabIndex = 4;
            label6.Text = "Város";
            // 
            // tbVaros
            // 
            tbVaros.CausesValidation = false;
            tbVaros.Enabled = false;
            tbVaros.Location = new Point(102, 279);
            tbVaros.Name = "tbVaros";
            tbVaros.Size = new Size(293, 23);
            tbVaros.TabIndex = 5;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.CausesValidation = false;
            label7.Location = new Point(12, 311);
            label7.Name = "label7";
            label7.Size = new Size(31, 15);
            label7.TabIndex = 4;
            label7.Text = "Utca";
            // 
            // tbUtca
            // 
            tbUtca.CausesValidation = false;
            tbUtca.Enabled = false;
            tbUtca.Location = new Point(102, 308);
            tbUtca.Name = "tbUtca";
            tbUtca.Size = new Size(293, 23);
            tbUtca.TabIndex = 5;
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.CausesValidation = false;
            label8.Location = new Point(12, 340);
            label8.Name = "label8";
            label8.Size = new Size(54, 15);
            label8.TabIndex = 4;
            label8.Text = "Házszám";
            // 
            // tbHazszam
            // 
            tbHazszam.CausesValidation = false;
            tbHazszam.Enabled = false;
            tbHazszam.Location = new Point(102, 337);
            tbHazszam.Name = "tbHazszam";
            tbHazszam.Size = new Size(293, 23);
            tbHazszam.TabIndex = 5;
            // 
            // btnMentes
            // 
            btnMentes.DialogResult = DialogResult.OK;
            btnMentes.Location = new Point(12, 384);
            btnMentes.Name = "btnMentes";
            btnMentes.Size = new Size(383, 23);
            btnMentes.TabIndex = 7;
            btnMentes.Text = "Ok";
            btnMentes.UseVisualStyleBackColor = true;
            btnMentes.Click += btnMentes_Click;
            // 
            // btnMegse
            // 
            btnMegse.CausesValidation = false;
            btnMegse.DialogResult = DialogResult.Cancel;
            btnMegse.Location = new Point(12, 413);
            btnMegse.Name = "btnMegse";
            btnMegse.Size = new Size(383, 23);
            btnMegse.TabIndex = 8;
            btnMegse.Text = "Mégse";
            btnMegse.UseVisualStyleBackColor = true;
            // 
            // errorProvider1
            // 
            errorProvider1.ContainerControl = this;
            // 
            // cimBindingSource
            // 
            cimBindingSource.DataSource = typeof(Models.Cim);
            // 
            // UgyfelSzerkesztesForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(412, 452);
            Controls.Add(btnMegse);
            Controls.Add(btnMentes);
            Controls.Add(tbHazszam);
            Controls.Add(label8);
            Controls.Add(tbUtca);
            Controls.Add(label7);
            Controls.Add(tbVaros);
            Controls.Add(label6);
            Controls.Add(tbIranyitoszam);
            Controls.Add(label5);
            Controls.Add(tbOrszag);
            Controls.Add(label4);
            Controls.Add(cbCimek);
            Controls.Add(rbUjCim);
            Controls.Add(rbLetezoCim);
            Controls.Add(tbTelefonszam);
            Controls.Add(lblTelefonszam);
            Controls.Add(tbEmail);
            Controls.Add(lblEmail);
            Controls.Add(tbNev);
            Controls.Add(lblNev);
            FormBorderStyle = FormBorderStyle.FixedSingle;
            MaximizeBox = false;
            Name = "UgyfelSzerkesztesForm";
            SizeGripStyle = SizeGripStyle.Hide;
            Text = "UjUgyfelForm";
            Load += UgyfelSzerkesztesForm_Load;
            ((System.ComponentModel.ISupportInitialize)ugyfelBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)errorProvider1).EndInit();
            ((System.ComponentModel.ISupportInitialize)cimBindingSource).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label lblNev;
        private TextBox tbNev;
        private Label lblEmail;
        private TextBox tbEmail;
        private Label lblTelefonszam;
        private TextBox tbTelefonszam;
        private RadioButton rbLetezoCim;
        private RadioButton rbUjCim;
        private ComboBox cbCimek;
        private Label label4;
        private TextBox tbOrszag;
        private Label label5;
        private TextBox tbIranyitoszam;
        private Label label6;
        private TextBox tbVaros;
        private Label label7;
        private TextBox tbUtca;
        private Label label8;
        private TextBox tbHazszam;
        private Button btnMentes;
        private Button btnMegse;
        private ErrorProvider errorProvider1;
        private BindingSource ugyfelBindingSource;
        private BindingSource cimBindingSource;
    }
}