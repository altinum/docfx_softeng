## Calculating the Cost of a Loan

This task is intended to demonstrate language elements; it does not approach the problem from a financial perspective.

```csharp
private void btnOk_Click(object sender, EventArgs e)
{
    decimal loanAmount = decimal.Parse(tbLoanAmount.Text);
    decimal monthlyInterest = decimal.Parse(tbMonthlyInterest.Text);
    decimal monthlyPayment = decimal.Parse(cbMonthlyPayment.Text);

    decimal remaining = loanAmount;
    decimal paid = 0;

    List<Row> rows = new List<Row>();

    int month = 1;
    while (remaining > 0)
    {        
        remaining += monthlyInterest * (remaining / 100m);
        remaining -= monthlyPayment;
        paid += monthlyPayment;
        month++;

        Row newRow = new Row();
        newRow.Remaining = Math.Round(remaining);
        newRow.Month = month;

        rows.Add(newRow);
    }

    dataGridView1.DataSource = rows;
}
class Row
{
    public int Month { get; set; }
    public decimal Remaining { get; set; }
}
```

## Notes on the Code

#### The `Row` class

The `Row` class can be understood as a composite type capable of storing two numbers:

- the month number is stored in a property named `Month` of type `int`
- the remaining balance for the given month is stored in a property named `Remaining` of type `decimal`

#### Instantiating the `Row` class

`Row` is a class. We create instances from classes — in this example we create one instance for each month. An instance is created using the `new` keyword. After that, we can set the properties of the instance named `newRow`.

```csharp
Row newRow = new Row();
newRow.Remaining = Math.Round(remaining);
newRow.Month = month;
```

> [!IMPORTANT]
>
> An instance created from a class is called an **object**! In the example, `newRow` is an object of type `Row`.

#### Lists of objects

You can make lists of anything, but you must specify the element type:

```csharp
List<int> integers = new List<int>();
List<string> words = new List<string>();
```

`List` is also a class; we create instances of it using the `new` keyword.

The really interesting case is when a class appears as the element type, as in the example:

```csharp
List<Row> rows = new List<Row>();
```

With this, we essentially created a table in memory whose rows contain the month number and the remaining balance for that month.

This will become important later when we move database tables between an SQL Server and an application!

## Tasks

(+/-) Modify the program so that the remaining balance cannot become negative in the last month.

(+/-) Display the cumulative total of payments alongside the remaining balance. To do this, add a new property to the `Row` class.