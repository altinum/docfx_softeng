namespace ChinookUI
{
    partial class Form1
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
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
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            panel1 = new Panel();
            panelRight = new Panel();
            menuStrip1 = new MenuStrip();
            fileToolStripMenuItem = new ToolStripMenuItem();
            quitToolStripMenuItem = new ToolStripMenuItem();
            buttonAlbums = new Button();
            panel1.SuspendLayout();
            menuStrip1.SuspendLayout();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.Controls.Add(buttonAlbums);
            panel1.Dock = DockStyle.Left;
            panel1.Location = new Point(0, 38);
            panel1.Name = "panel1";
            panel1.Size = new Size(227, 646);
            panel1.TabIndex = 0;
            // 
            // panelRight
            // 
            panelRight.Dock = DockStyle.Fill;
            panelRight.Location = new Point(227, 38);
            panelRight.Name = "panelRight";
            panelRight.Size = new Size(962, 646);
            panelRight.TabIndex = 1;
            // 
            // menuStrip1
            // 
            menuStrip1.ImageScalingSize = new Size(28, 28);
            menuStrip1.Items.AddRange(new ToolStripItem[] { fileToolStripMenuItem });
            menuStrip1.Location = new Point(0, 0);
            menuStrip1.Name = "menuStrip1";
            menuStrip1.Size = new Size(1189, 38);
            menuStrip1.TabIndex = 2;
            menuStrip1.Text = "menuStrip1";
            // 
            // fileToolStripMenuItem
            // 
            fileToolStripMenuItem.DropDownItems.AddRange(new ToolStripItem[] { quitToolStripMenuItem });
            fileToolStripMenuItem.Name = "fileToolStripMenuItem";
            fileToolStripMenuItem.Size = new Size(62, 34);
            fileToolStripMenuItem.Text = "&File";
            // 
            // quitToolStripMenuItem
            // 
            quitToolStripMenuItem.Name = "quitToolStripMenuItem";
            quitToolStripMenuItem.Size = new Size(315, 40);
            quitToolStripMenuItem.Text = "&Quit";
            // 
            // buttonAlbums
            // 
            buttonAlbums.Location = new Point(12, 13);
            buttonAlbums.Name = "buttonAlbums";
            buttonAlbums.Size = new Size(198, 40);
            buttonAlbums.TabIndex = 0;
            buttonAlbums.Text = "Albums";
            buttonAlbums.UseVisualStyleBackColor = true;
            buttonAlbums.Click += buttonAlbums_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(12F, 30F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1189, 684);
            Controls.Add(panelRight);
            Controls.Add(panel1);
            Controls.Add(menuStrip1);
            MainMenuStrip = menuStrip1;
            Name = "Form1";
            Text = "Form1";
            panel1.ResumeLayout(false);
            menuStrip1.ResumeLayout(false);
            menuStrip1.PerformLayout();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Panel panel1;
        private Button buttonAlbums;
        private Panel panelRight;
        private MenuStrip menuStrip1;
        private ToolStripMenuItem fileToolStripMenuItem;
        private ToolStripMenuItem quitToolStripMenuItem;
    }
}
