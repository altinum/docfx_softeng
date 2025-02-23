# Lab example: loan calculator

**Objective**:

Create a Loan Calculator app that calculates how many months it will take to pay off a loan based on the loan amount, monthly interest rate, and monthly payment.

## **Step 1: Setup the Project**

1. Open Visual Studio and create a **Windows Forms App** project.
2. Name the project `LoanCalculator`.

> [!WARNING]
>
> Use the project template that does **NOT** include **(.NET Framework)**. ".NET Framework" referes to the legacy discontinued product line of .NET framework.



------

## **Step 2: Design the Form**

Add the following controls to the Form:

- **TextBox** for Loan Amount (`tbLoanAmount`).
- **TextBox** for Monthly Interest (`tbMonthlyInterest`).
- **TextBox** for MonthlyPayment (`tbMonthlyPayment`).
- **Button** for "Go" (`btnOk`).
- **TextBox**es for displaying the result (`tbMonthCount`, `tbTotalPaid`).



## **Step 3: Implement the Logic**

**Writing the Code**

1. **Open the code behind** for the form by double-clicking `btnOk`. This **assigns an event handler** to the `Click` event of  `btnOk`.
2. Inside the `Form1.cs` file, write the following code.

### Version 1: displaying results in a TextBox

```c#
private void btnOk_Click(object sender, EventArgs e) 
{ 
    decimal loanAmount = decimal.Parse(tbLoanAmount.Text); 
    decimal monthlyInterest = decimal.Parse(tbMonthlyInterest.Text); 
    decimal monthlyPayment = decimal.Parse(cbMonthlyPayment.Text); 

    decimal remainingBalance = loanAmount; 
    decimal totalPaid = 0; 

    List<Row> rows = new List<Row>(); 

    int month = 0; 

    while (remainingBalance > 0) 
    {         
        remainingBalance += (monthlyInterest / 100m) * remainingBalance; 
        remainingBalance -= monthlyPayment; 
        totalPaid += monthlyPayment; 
    } 

    tbMonthCount = totalPaid.ToString(); //Display results on the Form
    rbTotalPaid = month.ToString();
} 
```

Explanation:

- **Loan Amount**: This is the initial loan that the user borrows.

- **Monthly Interest**: This is the monthly interest rate (e.g., 5 means 5% monthly interest).

- **Monthly Payment**: This is how much the user pays every month to pay off the loan.

- **Remaining Balance**: Starts as the loan amount and decreases over time as payments are made, but grows as the interest is added.

- **Total Paid**: The cumulative total of all the payments made.

- **Month**: The number of months it will take to pay off the loan, calculated based on when the remaining balance reaches 0.



### Version 2: displaying results in a DateGridView

#### The `Row` Class

The `Row` class can be considered a composite type capable of storing two numbers:

- The `Month` property, which is of type `int`, stores the month number.
- The `RemainingBalance` property, which is of type `decimal`, stores the arrears for the given month.

```c#
class Row 
{ 
    public int Month { get; set; } 
    public decimal RemainingBalance { get; set; } 
} 
```

#### Lists of Objects

You can create lists of any type, but you need to specify the item type:

```c#
List<int> importentNumbers = new List<int>();
List<string> niceWords = new List<string>();
```

`List` is also a class, and instances are created from it using the `new` keyword.

The exciting part is when a our class `Row` appears in place of the item type, as shown in the example:

```c#
List<Sor> sorok = new List<Sor>();
```

With this, we've essentially created a table in memory where each row contains the month number and the corresponding arrears value for that month.

> [!NOTE]
>
> This will be important later when moving database tables between the SQL server and the application!

#### Instantiating the `Row` Class

`Row` is a class. Instances are created from classes—in this example, we create an instance for each month. The instance is created using the `new` keyword. Then, we can set the properties of the `newRow` instance.

```c#
Row newRow = new Row(); 
newRow.RemainingBalance = Math.Round(remainingBalance); 
newRow.Month = month; 
```

> [!IMPORTANT]
> An **instance created from a class is called an object**! In this example, `newRow` is an object of type `Row`.



```c#
private void btnOk_Click(object sender, EventArgs e) 

{ 
    decimal loanAmount = decimal.Parse(tbLoanAmount.Text); 
    decimal monthlyInterest = decimal.Parse(tbMonthlyInterest.Text); 
    decimal monthlyPayment = decimal.Parse(cbMonthlyPayment.Text); 

    decimal remainingBalance = loanAmount; 
    decimal totalPaid = 0; 

    List<Row> rows = new List<Row>(); //Create a List to store 

    int month = 1; 

    while (remainingBalance > 0) 
    {         
        remainingBalance += (monthlyInterest / 100m) * remainingBalance; 
        remainingBalance -= monthlyPayment; 
        totalPaid += monthlyPayment; 

        month++; 
        
        Row newRow = new Row(); 
        newRow.RemainingBalance = Math.Round(remainingBalance); 
        newRow.Month = month; 

        rows.Add(newRow); 
    } 

    dataGridView1.DataSource = rows; 
} 
```



## **Enhancements**

- Validate input to ensure the loan amount, monthly interest, and monthly payment are positive numbers.
- Add error handling for cases where the user provides invalid input.
- Allow the user to input a custom list of monthly payments and interest rates, instead of just a single rate.
- Handle the case where the debtor can never pay the loan back, since the monthly increment of the loan is higher than the monthly payment.

