namespace MyFirstProject
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
            buttonDontPush = new Button();
            SuspendLayout();
            // 
            // buttonDontPush
            // 
            buttonDontPush.BackColor = Color.Fuchsia;
            buttonDontPush.Location = new Point(213, 184);
            buttonDontPush.Name = "buttonDontPush";
            buttonDontPush.Size = new Size(355, 77);
            buttonDontPush.TabIndex = 0;
            buttonDontPush.Text = "Don not click me!";
            buttonDontPush.UseVisualStyleBackColor = false;
            buttonDontPush.Click += button1_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(800, 450);
            Controls.Add(buttonDontPush);
            Name = "Form1";
            Text = "Form1";
            ResumeLayout(false);
        }

        #endregion

        private Button buttonDontPush;
    }
}
