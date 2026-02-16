# Loan Monthly Payment Calculator — C# Exercise

## Objective

Create a simple C# desktop application that calculates the monthly payment of a loan.
The user enters parameters in **TextBox controls**, clicks a button, and the application displays the result.

This exercise practices:

- UI input handling
- Numeric parsing and validation
- Mathematical formulas
- Conditional error handling
- Formatting output

------

## Problem Description

Build a Windows Forms application that computes the monthly payment for a fixed-rate loan using the following formula:

$$[
M = P \cdot \frac{r(1+r)^n}{(1+r)^n - 1}
]$$

Where:

- **M** — Monthly payment
- **P** — Loan principal (amount borrowed)
- **r** — Monthly interest rate
- **n** — Number of months

The monthly rate is derived from the annual interest rate:

$$[
r = \frac{\text{annualRate}}{100 \times 12}
]$$

------

## User Interface Requirements

Your form must contain:

| Control | Name            | Purpose                  |
| ------- | --------------- | ------------------------ |
| TextBox | `txtPrincipal`  | Loan amount              |
| TextBox | `txtAnnualRate` | Annual interest rate (%) |
| TextBox | `txtMonths`     | Number of months         |
| Button  | `btnCalculate`  | Trigger calculation      |
| Label   | `lblResult`     | Display output           |

Suggested layout:

```
Loan Amount:        [________]
Annual Rate (%):    [________]
Months:             [________]

[ Calculate ]

Monthly Payment:  ________
```

------

## Functional Requirements

When the user presses **Calculate**:

1. Read values from TextBoxes
2. Validate input:
   - Must be numeric
   - Must be positive
3. Convert interest rate to monthly rate
4. Compute monthly payment
5. Display result formatted to two decimals
6. Show error message if input is invalid

------

## Implementation Example

### Button Click Handler

```csharp
private void btnCalculate_Click(object sender, EventArgs e)
{
    if (!double.TryParse(txtPrincipal.Text, out double principal) ||
        !double.TryParse(txtAnnualRate.Text, out double annualRate) ||
        !int.TryParse(txtMonths.Text, out int months) ||
        principal <= 0 || annualRate < 0 || months <= 0)
    {
        MessageBox.Show("Please enter valid positive numbers.");
        return;
    }

    double r = annualRate / 100.0 / 12.0;

    double payment;

    if (r == 0)
    {
        // Interest-free loan
        payment = principal / months;
    }
    else
    {
        payment = principal *
                  (r * Math.Pow(1 + r, months)) /
                  (Math.Pow(1 + r, months) - 1);
    }

    lblResult.Text = payment.ToString("F2");
}
```

------

## Extension Tasks (Optional)

Try enhancing the application:

1. Display total payment and total interest
2. Add input range limits
3. Highlight invalid fields
4. Add a Reset button
5. Show amortization table

------

## Learning Outcomes

After completing this exercise you should understand:

- Handling UI input in C#
- Safe numeric parsing (`TryParse`)
- Implementing real-world formulas
- Basic validation patterns
- Formatting numeric output

------