namespace ChinookUI
{
    partial class FormAddArtist
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
            label1 = new Label();
            button1 = new Button();
            button2 = new Button();
            textBoxName = new TextBox();
            label2 = new Label();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Segoe UI", 22F);
            label1.Location = new Point(2, -1);
            label1.Name = "label1";
            label1.Size = new Size(247, 70);
            label1.TabIndex = 0;
            label1.Text = "Edit artist";
            // 
            // button1
            // 
            button1.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            button1.DialogResult = DialogResult.OK;
            button1.Location = new Point(657, 239);
            button1.Name = "button1";
            button1.Size = new Size(131, 40);
            button1.TabIndex = 1;
            button1.Text = "&Ok";
            button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            button2.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            button2.DialogResult = DialogResult.Cancel;
            button2.Location = new Point(520, 239);
            button2.Name = "button2";
            button2.Size = new Size(131, 40);
            button2.TabIndex = 2;
            button2.Text = "&Cancel";
            button2.UseVisualStyleBackColor = true;
            // 
            // textBoxName
            // 
            textBoxName.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            textBoxName.Location = new Point(12, 152);
            textBoxName.Name = "textBoxName";
            textBoxName.Size = new Size(776, 35);
            textBoxName.TabIndex = 3;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(12, 119);
            label2.Name = "label2";
            label2.Size = new Size(57, 30);
            label2.TabIndex = 4;
            label2.Text = "Title:";
            // 
            // FormAddArtist
            // 
            AutoScaleDimensions = new SizeF(12F, 30F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 291);
            Controls.Add(label2);
            Controls.Add(textBoxName);
            Controls.Add(button2);
            Controls.Add(button1);
            Controls.Add(label1);
            FormBorderStyle = FormBorderStyle.Fixed3D;
            Name = "FormAddArtist";
            Text = "FormAddArtist";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
        private Button button1;
        private Button button2;
        private Label label2;
        public TextBox textBoxName;
    }
}