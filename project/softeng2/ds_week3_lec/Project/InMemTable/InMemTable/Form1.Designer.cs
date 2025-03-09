namespace InMemTable
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
            tbFirstName = new TextBox();
            tbLastName = new TextBox();
            textBox3 = new TextBox();
            dateTimePickerDateOfBirth = new DateTimePicker();
            button1 = new Button();
            dataGridView1 = new DataGridView();
            btDelete = new Button();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            SuspendLayout();
            // 
            // tbFirstName
            // 
            tbFirstName.Location = new Point(726, 49);
            tbFirstName.Name = "tbFirstName";
            tbFirstName.Size = new Size(355, 35);
            tbFirstName.TabIndex = 0;
            // 
            // tbLastName
            // 
            tbLastName.Location = new Point(726, 99);
            tbLastName.Name = "tbLastName";
            tbLastName.Size = new Size(355, 35);
            tbLastName.TabIndex = 1;
            // 
            // textBox3
            // 
            textBox3.Location = new Point(726, 151);
            textBox3.Name = "textBox3";
            textBox3.Size = new Size(355, 35);
            textBox3.TabIndex = 2;
            // 
            // dateTimePickerDateOfBirth
            // 
            dateTimePickerDateOfBirth.Location = new Point(726, 209);
            dateTimePickerDateOfBirth.Name = "dateTimePickerDateOfBirth";
            dateTimePickerDateOfBirth.Size = new Size(355, 35);
            dateTimePickerDateOfBirth.TabIndex = 3;
            // 
            // button1
            // 
            button1.Location = new Point(933, 269);
            button1.Name = "button1";
            button1.Size = new Size(148, 47);
            button1.TabIndex = 4;
            button1.Text = "&Add";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // dataGridView1
            // 
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new Point(28, 49);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowHeadersWidth = 72;
            dataGridView1.Size = new Size(676, 625);
            dataGridView1.TabIndex = 5;
            // 
            // btDelete
            // 
            btDelete.Location = new Point(933, 322);
            btDelete.Name = "btDelete";
            btDelete.Size = new Size(148, 49);
            btDelete.TabIndex = 6;
            btDelete.Text = "button2";
            btDelete.UseVisualStyleBackColor = true;
            btDelete.Click += btDelete_Click;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(12F, 30F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1126, 742);
            Controls.Add(btDelete);
            Controls.Add(dataGridView1);
            Controls.Add(button1);
            Controls.Add(dateTimePickerDateOfBirth);
            Controls.Add(textBox3);
            Controls.Add(tbLastName);
            Controls.Add(tbFirstName);
            Name = "Form1";
            Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox tbFirstName;
        private TextBox tbLastName;
        private TextBox textBox3;
        private DateTimePicker dateTimePickerDateOfBirth;
        private Button button1;
        private DataGridView dataGridView1;
        private Button btDelete;
    }
}
