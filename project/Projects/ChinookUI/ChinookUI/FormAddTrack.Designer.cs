namespace ChinookUI
{
    partial class FormAddTrack
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
            label1 = new Label();
            label2 = new Label();
            textBox1 = new TextBox();
            label3 = new Label();
            textBox2 = new TextBox();
            label4 = new Label();
            textBox3 = new TextBox();
            label5 = new Label();
            label6 = new Label();
            comboBox1 = new ComboBox();
            comboBox2 = new ComboBox();
            label7 = new Label();
            label8 = new Label();
            textBox4 = new TextBox();
            textBox5 = new TextBox();
            label9 = new Label();
            textBox6 = new TextBox();
            button1 = new Button();
            button2 = new Button();
            trackBindingSource = new BindingSource(components);
            mediaTypeBindingSource = new BindingSource(components);
            genreBindingSource = new BindingSource(components);
            ((System.ComponentModel.ISupportInitialize)trackBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)mediaTypeBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)genreBindingSource).BeginInit();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 22F);
            label1.Location = new Point(3, 0);
            label1.Name = "label1";
            label1.Size = new Size(400, 70);
            label1.TabIndex = 0;
            label1.Text = "Add a new track";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(12, 94);
            label2.Name = "label2";
            label2.Size = new Size(69, 30);
            label2.TabIndex = 1;
            label2.Text = "Name";
            // 
            // textBox1
            // 
            textBox1.Location = new Point(12, 127);
            textBox1.Name = "textBox1";
            textBox1.Size = new Size(645, 35);
            textBox1.TabIndex = 2;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(12, 180);
            label3.Name = "label3";
            label3.Size = new Size(112, 30);
            label3.TabIndex = 3;
            label3.Text = "Composer:";
            // 
            // textBox2
            // 
            textBox2.DataBindings.Add(new Binding("Text", trackBindingSource, "Name", true));
            textBox2.Location = new Point(12, 127);
            textBox2.Name = "textBox2";
            textBox2.Size = new Size(645, 35);
            textBox2.TabIndex = 2;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new Point(12, 180);
            label4.Name = "label4";
            label4.Size = new Size(112, 30);
            label4.TabIndex = 3;
            label4.Text = "Composer:";
            // 
            // textBox3
            // 
            textBox3.DataBindings.Add(new Binding("Text", trackBindingSource, "Composer", true));
            textBox3.Location = new Point(12, 213);
            textBox3.Name = "textBox3";
            textBox3.Size = new Size(645, 35);
            textBox3.TabIndex = 2;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new Point(12, 348);
            label5.Name = "label5";
            label5.Size = new Size(122, 30);
            label5.TabIndex = 4;
            label5.Text = "Media type:";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new Point(355, 348);
            label6.Name = "label6";
            label6.Size = new Size(73, 30);
            label6.TabIndex = 4;
            label6.Text = "Genre:";
            // 
            // comboBox1
            // 
            comboBox1.DataBindings.Add(new Binding("SelectedValue", trackBindingSource, "MediaTypeId", true));
            comboBox1.DataSource = mediaTypeBindingSource;
            comboBox1.DisplayMember = "Name";
            comboBox1.FormattingEnabled = true;
            comboBox1.Location = new Point(12, 381);
            comboBox1.Name = "comboBox1";
            comboBox1.Size = new Size(295, 38);
            comboBox1.TabIndex = 5;
            comboBox1.ValueMember = "MediaTypeId";
            // 
            // comboBox2
            // 
            comboBox2.DataBindings.Add(new Binding("SelectedValue", trackBindingSource, "GenreId", true));
            comboBox2.DataSource = genreBindingSource;
            comboBox2.DisplayMember = "Name";
            comboBox2.FormattingEnabled = true;
            comboBox2.Location = new Point(362, 381);
            comboBox2.Name = "comboBox2";
            comboBox2.Size = new Size(295, 38);
            comboBox2.TabIndex = 5;
            comboBox2.ValueMember = "GenreId";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new Point(12, 268);
            label7.Name = "label7";
            label7.Size = new Size(67, 30);
            label7.TabIndex = 4;
            label7.Text = "Bytes:";
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new Point(355, 268);
            label8.Name = "label8";
            label8.Size = new Size(188, 30);
            label8.TabIndex = 6;
            label8.Text = "Length in millisecs:";
            // 
            // textBox4
            // 
            textBox4.DataBindings.Add(new Binding("Text", trackBindingSource, "Bytes", true));
            textBox4.Location = new Point(12, 301);
            textBox4.Name = "textBox4";
            textBox4.Size = new Size(295, 35);
            textBox4.TabIndex = 7;
            // 
            // textBox5
            // 
            textBox5.DataBindings.Add(new Binding("Text", trackBindingSource, "Milliseconds", true));
            textBox5.Location = new Point(362, 301);
            textBox5.Name = "textBox5";
            textBox5.Size = new Size(295, 35);
            textBox5.TabIndex = 7;
            // 
            // label9
            // 
            label9.AutoSize = true;
            label9.Location = new Point(12, 443);
            label9.Name = "label9";
            label9.Size = new Size(107, 30);
            label9.TabIndex = 4;
            label9.Text = "Unit price:";
            // 
            // textBox6
            // 
            textBox6.DataBindings.Add(new Binding("Text", trackBindingSource, "UnitPrice", true));
            textBox6.Location = new Point(12, 476);
            textBox6.Name = "textBox6";
            textBox6.Size = new Size(295, 35);
            textBox6.TabIndex = 7;
            // 
            // button1
            // 
            button1.DialogResult = DialogResult.OK;
            button1.Location = new Point(526, 595);
            button1.Name = "button1";
            button1.Size = new Size(131, 40);
            button1.TabIndex = 8;
            button1.Text = "&Ok";
            button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            button2.DialogResult = DialogResult.Cancel;
            button2.Location = new Point(389, 595);
            button2.Name = "button2";
            button2.Size = new Size(131, 40);
            button2.TabIndex = 8;
            button2.Text = "&Cancel";
            button2.UseVisualStyleBackColor = true;
            // 
            // trackBindingSource
            // 
            trackBindingSource.DataSource = typeof(ChinookModels.Track);
            // 
            // mediaTypeBindingSource
            // 
            mediaTypeBindingSource.DataSource = typeof(ChinookModels.MediaType);
            // 
            // genreBindingSource
            // 
            genreBindingSource.DataSource = typeof(ChinookModels.Genre);
            // 
            // FormAddTrack
            // 
            AutoScaleDimensions = new SizeF(12F, 30F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(669, 647);
            Controls.Add(button2);
            Controls.Add(button1);
            Controls.Add(textBox5);
            Controls.Add(textBox6);
            Controls.Add(textBox4);
            Controls.Add(label8);
            Controls.Add(comboBox2);
            Controls.Add(comboBox1);
            Controls.Add(label9);
            Controls.Add(label6);
            Controls.Add(label7);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(textBox3);
            Controls.Add(textBox2);
            Controls.Add(label3);
            Controls.Add(textBox1);
            Controls.Add(label2);
            Controls.Add(label1);
            Name = "FormAddTrack";
            Text = "FormAddTrack";
            Load += FormAddTrack_Load;
            ((System.ComponentModel.ISupportInitialize)trackBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)mediaTypeBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)genreBindingSource).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Label label2;
        private TextBox textBox1;
        private Label label3;
        private TextBox textBox2;
        private Label label4;
        private TextBox textBox3;
        private Label label5;
        private Label label6;
        private ComboBox comboBox1;
        private ComboBox comboBox2;
        private Label label7;
        private Label label8;
        private TextBox textBox4;
        private TextBox textBox5;
        private Label label9;
        private TextBox textBox6;
        private Button button1;
        private Button button2;
        private BindingSource trackBindingSource;
        private BindingSource mediaTypeBindingSource;
        private BindingSource genreBindingSource;
    }
}