namespace RendelesApp
{
    partial class TermekKategoriaForm
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
            treeViewKategoriak = new TreeView();
            txtNev = new TextBox();
            txtLeiras = new TextBox();
            button1 = new Button();
            button2 = new Button();
            button3 = new Button();
            button4 = new Button();
            SuspendLayout();
            // 
            // treeViewKategoriak
            // 
            treeViewKategoriak.Location = new Point(12, 12);
            treeViewKategoriak.Name = "treeViewKategoriak";
            treeViewKategoriak.Size = new Size(172, 303);
            treeViewKategoriak.TabIndex = 0;
            treeViewKategoriak.AfterSelect += treeViewKategoriak_AfterSelect;
            // 
            // txtNev
            // 
            txtNev.Location = new Point(206, 12);
            txtNev.Name = "txtNev";
            txtNev.Size = new Size(318, 23);
            txtNev.TabIndex = 1;
            // 
            // txtLeiras
            // 
            txtLeiras.Location = new Point(206, 41);
            txtLeiras.Multiline = true;
            txtLeiras.Name = "txtLeiras";
            txtLeiras.Size = new Size(318, 216);
            txtLeiras.TabIndex = 2;
            // 
            // button1
            // 
            button1.Location = new Point(206, 263);
            button1.Name = "button1";
            button1.Size = new Size(75, 52);
            button1.TabIndex = 3;
            button1.Text = "Új testvér kat.";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // button2
            // 
            button2.Location = new Point(287, 263);
            button2.Name = "button2";
            button2.Size = new Size(75, 52);
            button2.TabIndex = 3;
            button2.Text = "Új gyermek kat.";
            button2.UseVisualStyleBackColor = true;
            button2.Click += button2_Click;
            // 
            // button3
            // 
            button3.Location = new Point(368, 263);
            button3.Name = "button3";
            button3.Size = new Size(75, 52);
            button3.TabIndex = 3;
            button3.Text = "Mentés";
            button3.UseVisualStyleBackColor = true;
            button3.Click += button3_Click;
            // 
            // button4
            // 
            button4.Location = new Point(449, 263);
            button4.Name = "button4";
            button4.Size = new Size(75, 52);
            button4.TabIndex = 3;
            button4.Text = "Törlés";
            button4.UseVisualStyleBackColor = true;
            button4.Click += button4_Click;
            // 
            // TermekKategoriaForm
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(540, 327);
            Controls.Add(button4);
            Controls.Add(button3);
            Controls.Add(button2);
            Controls.Add(button1);
            Controls.Add(txtLeiras);
            Controls.Add(txtNev);
            Controls.Add(treeViewKategoriak);
            Name = "TermekKategoriaForm";
            Text = "TermekKategoriaForm";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TreeView treeViewKategoriak;
        private TextBox txtNev;
        private TextBox txtLeiras;
        private Button button1;
        private Button button2;
        private Button button3;
        private Button button4;
    }
}