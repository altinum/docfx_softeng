namespace LoanCalculator
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            decimal loanAmount = 0;

            if (!decimal.TryParse(textBoxLoanAmount.Text, out loanAmount))
            {
                textBoxLoanAmount.BackColor = Color.Salmon;
                return;
            }

            //decimal loanAmount = decimal.Parse(textBoxLoanAmount.Text);
            decimal monthlyInterest = decimal.Parse(textBoxMonthlyInterest.Text);
            decimal monthlyPaymant = decimal.Parse(textBoxMonthlyPayment.Text);

            decimal reamining = loanAmount;
            decimal paid = 0;

            int month = 0;

            //Loop until the loan is paid off
            while (reamining > 0)
            {
                decimal interest = reamining * (monthlyInterest / 100m);

                if (interest >= monthlyPaymant)
                {
                    //The loan will never be paid off because the interest is greater than or equal to the monthly payment
                    textBoxMonths.Text = "Never";

                    return;
                }

                reamining += interest;
             
                if (reamining < monthlyPaymant)
                {
                    //The last payment can be less than the monthly payment, so we pay off the remaining balance
                    paid += reamining;
                    reamining = 0;
                }
                else
                {
                    paid += monthlyPaymant;
                    reamining -= monthlyPaymant;
                }

                month++;
            }

            //Display results
            textBoxTotalPayment.Text = paid.ToString();
            textBoxMonths.Text = $"{month}";
        }

        private void textBoxLoanAmount_TextChanged(object sender, EventArgs e)
        {
            textBoxLoanAmount.BackColor = Color.White;
        }
    }
}
