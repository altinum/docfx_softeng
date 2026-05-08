namespace ChinookUI
{
    partial class FormEditArtist
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
            label2 = new Label();
            textBoxName = new TextBox();
            artistBindingSource = new BindingSource(components);
            button2 = new Button();
            button1 = new Button();
            label1 = new Label();
            ((System.ComponentModel.ISupportInitialize)artistBindingSource).BeginInit();
            SuspendLayout();
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(9, 116);
            label2.Name = "label2";
            label2.Size = new Size(74, 30);
            label2.TabIndex = 9;
            label2.Text = "Name:";
            // 
            // textBoxName
            // 
            textBoxName.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            textBoxName.DataBindings.Add(new Binding("Text", artistBindingSource, "Name", true));
            textBoxName.Location = new Point(9, 149);
            textBoxName.Name = "textBoxName";
            textBoxName.Size = new Size(782, 35);
            textBoxName.TabIndex = 8;
            // 
            // artistBindingSource
            // 
            artistBindingSource.DataSource = typeof(ChinookModels.Artist);
            // 
            // button2
            // 
            button2.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            button2.DialogResult = DialogResult.Cancel;
            button2.Location = new Point(523, 206);
            button2.Name = "button2";
            button2.Size = new Size(131, 40);
            button2.TabIndex = 7;
            button2.Text = "&Cancel";
            button2.UseVisualStyleBackColor = true;
            button2.Click += button2_Click;
            // 
            // button1
            // 
            button1.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            button1.DialogResult = DialogResult.OK;
            button1.Location = new Point(660, 206);
            button1.Name = "button1";
            button1.Size = new Size(131, 40);
            button1.TabIndex = 6;
            button1.Text = "&Ok";
            button1.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 22F);
            label1.Location = new Point(-1, -4);
            label1.Name = "label1";
            label1.Size = new Size(403, 70);
            label1.TabIndex = 5;
            label1.Text = "Add a new artist";
            // 
            // FormEditArtist
            // 
            AutoScaleDimensions = new SizeF(12F, 30F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(806, 258);
            Controls.Add(label2);
            Controls.Add(textBoxName);
            Controls.Add(button2);
            Controls.Add(button1);
            Controls.Add(label1);
            FormBorderStyle = FormBorderStyle.Fixed3D;
            Name = "FormEditArtist";
            Text = "FormEditArtist";
            Load += FormEditArtist_Load;
            ((System.ComponentModel.ISupportInitialize)artistBindingSource).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label2;
        public TextBox textBoxName;
        private Button button2;
        private Button button1;
        private Label label1;
        private BindingSource artistBindingSource;
    }
}