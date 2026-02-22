## Calculating the Cost of a Loan

This task is intended to demonstrate language elements; it does not approach the problem from a financial perspective.

```csharp
private void btnOk_Click(object sender, EventArgs e)
{
    decimal loanAmount = decimal.Parse(textBoxLoanAmount.Text);
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

```

## User input error handling

This version of the code does not check for user input errors. If the user enters invalid data in the text boxes in such a way that conversion to a decimal is not possible—for example, by entering a letter—the execution fails with a runtime error.

To avoid this, we use a safe way to convert text to a decimal, as shown below.

```csharp
private void button1_Click(object sender, EventArgs e)
{
    decimal loanAmount = 0;

    if (!decimal.TryParse(textBoxLoanAmount.Text, out loanAmount))
    {
        textBoxLoanAmount.BackColor = Color.Salmon;
        return;
    }
    
    ...
```

> [!IMPORTANT]
>
> Please learn and remember this code pattern, as it is an important one!

Once we change the color of the text box to `Color.Salmon`, the new background color remains forever — or at least until the application terminates. When the user corrects the mistake by modifying the text in the TextBox, we should change the color back to white.

```csharp
private void textBoxLoanAmount_TextChanged(object sender, EventArgs e)
{
    textBoxLoanAmount.BackColor = Color.White;
}
```

## Tasks 

Please make the conversion safe for the remaining two TextBoxes as well!