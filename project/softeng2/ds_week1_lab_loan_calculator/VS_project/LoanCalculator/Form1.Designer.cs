namespace LoanCalculator
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
            textBoxLoanAmount = new TextBox();
            label1 = new Label();
            textBoxMonthlyInterest = new TextBox();
            label2 = new Label();
            textBoxMonthlyPayment = new TextBox();
            label3 = new Label();
            button1 = new Button();
            label4 = new Label();
            textBoxTotalPayment = new TextBox();
            label5 = new Label();
            textBoxMonths = new TextBox();
            SuspendLayout();
            // 
            // textBoxLoanAmount
            // 
            textBoxLoanAmount.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            textBoxLoanAmount.Location = new Point(12, 39);
            textBoxLoanAmount.Name = "textBoxLoanAmount";
            textBoxLoanAmount.Size = new Size(172, 23);
            textBoxLoanAmount.TabIndex = 0;
            textBoxLoanAmount.Text = "5000000";
            textBoxLoanAmount.TextChanged += textBoxLoanAmount_TextChanged;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new Point(12, 21);
            label1.Name = "label1";
            label1.Size = new Size(81, 15);
            label1.TabIndex = 1;
            label1.Text = "Loan amount:";
            // 
            // textBoxMonthlyInterest
            // 
            textBoxMonthlyInterest.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            textBoxMonthlyInterest.Location = new Point(12, 99);
            textBoxMonthlyInterest.Name = "textBoxMonthlyInterest";
            textBoxMonthlyInterest.Size = new Size(172, 23);
            textBoxMonthlyInterest.TabIndex = 0;
            textBoxMonthlyInterest.Text = "1";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new Point(12, 81);
            label2.Name = "label2";
            label2.Size = new Size(97, 15);
            label2.TabIndex = 1;
            label2.Text = "Monthly interest:";
            // 
            // textBoxMonthlyPayment
            // 
            textBoxMonthlyPayment.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
            textBoxMonthlyPayment.Location = new Point(12, 163);
            textBoxMonthlyPayment.Name = "textBoxMonthlyPayment";
            textBoxMonthlyPayment.Size = new Size(172, 23);
            textBoxMonthlyPayment.TabIndex = 0;
            textBoxMonthlyPayment.Text = "250000";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new Point(12, 145);
            label3.Name = "label3";
            label3.Size = new Size(105, 15);
            label3.TabIndex = 1;
            label3.Text = "Monthly payment:";
            // 
            // button1
            // 
            button1.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            button1.Location = new Point(109, 205);
            button1.Name = "button1";
            button1.Size = new Size(75, 23);
            button1.TabIndex = 2;
            button1.Text = "&Ok";
            button1.UseVisualStyleBackColor = true;
            button1.Click += button1_Click;
            // 
            // label4
            // 
            label4.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            label4.AutoSize = true;
            label4.Location = new Point(12, 246);
            label4.Name = "label4";
            label4.Size = new Size(86, 15);
            label4.TabIndex = 4;
            label4.Text = "Total payment:";
            // 
            // textBoxTotalPayment
            // 
            textBoxTotalPayment.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            textBoxTotalPayment.BackColor = Color.FromArgb(255, 255, 192);
            textBoxTotalPayment.Enabled = false;
            textBoxTotalPayment.Location = new Point(12, 264);
            textBoxTotalPayment.Name = "textBoxTotalPayment";
            textBoxTotalPayment.Size = new Size(172, 23);
            textBoxTotalPayment.TabIndex = 3;
            // 
            // label5
            // 
            label5.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            label5.AutoSize = true;
            label5.Location = new Point(12, 304);
            label5.Name = "label5";
            label5.Size = new Size(51, 15);
            label5.TabIndex = 6;
            label5.Text = "Months:";
            // 
            // textBoxMonths
            // 
            textBoxMonths.Anchor = AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            textBoxMonths.BackColor = Color.FromArgb(255, 255, 192);
            textBoxMonths.Enabled = false;
            textBoxMonths.Location = new Point(12, 322);
            textBoxMonths.Name = "textBoxMonths";
            textBoxMonths.Size = new Size(172, 23);
            textBoxMonths.TabIndex = 5;
            // 
            // Form1
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(203, 387);
            Controls.Add(label5);
            Controls.Add(textBoxMonths);
            Controls.Add(label4);
            Controls.Add(textBoxTotalPayment);
            Controls.Add(button1);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(textBoxMonthlyPayment);
            Controls.Add(textBoxMonthlyInterest);
            Controls.Add(textBoxLoanAmount);
            Name = "Form1";
            Text = "Form1";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private TextBox textBoxLoanAmount;
        private Label label1;
        private TextBox textBoxMonthlyInterest;
        private Label label2;
        private TextBox textBoxMonthlyPayment;
        private Label label3;
        private Button button1;
        private Label label4;
        private TextBox textBoxTotalPayment;
        private Label label5;
        private TextBox textBoxMonths;
    }
}
