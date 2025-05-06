# Value at Risk Code Samples



## Purpose of the Exercise

The purpose of this exercise is to implement a well-structured development task. There are precise rules for calculating most financial indicators, and determining the `Value at Risk` (VaR) is one such well-defined task.

## Background Information

Value at Risk (VaR) is a metric that indicates the risk of a portfolio composed of fixed instruments. In other words, it answers the question: what is the maximum expected loss over a given period (e.g., day, month) at a specified confidence level? The concept of VaR was introduced by Philippe Jorion in 1999. VaR is a widely used risk indicator, and in 1993, the Basel Committee explicitly recommended its use for measuring the risk exposure of banks. Based on this, it is possible to calculate the necessary capital to offset investment risks.

## Task

There are several methods to calculate VaR. It is important to note that on the stock market, the prices of instruments are interrelated—a market downturn or upturn affects all prices, though not necessarily in the same direction or magnitude. (For example, while the value of real estate may drop, increased demand for traditionally safe assets like gold may lead to price increases.)

**Outline of the Calculation Process**

1. A time window of a given width is moved across historical data.
2. On the first day of the window, the portfolio is purchased, and on the last day, it is sold.
    The signed profit is calculated from the difference between the purchase and sale prices.
3. The window is moved forward in daily steps, and the signed profits are recorded in a list.
4. The values in the list are sorted in ascending order. Losses appear at the beginning, profits at the end. (Unless the portfolio is exceptionally well-chosen and there are no losses at all—though this is unlikely.) The distribution will likely resemble a Gaussian curve.
5. The desired value corresponds to a specific element in the sorted list. (Assuming a list of 1000 elements, the 5% level corresponds to the 50th element.)

**Input**

1. A portfolio containing various instruments (e.g., OTP, MOL, PICK)
2. The duration over which the risk is to be calculated (e.g., 30 days)
3. The risk level in percentage terms (e.g., 5%)

**Output**

The value below which the portfolio is not expected to lose more than, with the probability defined in point 3, over the time period defined in point 2.

**Challenges**

- Historical data is not available for the period before a stock was listed. For example, Facebook only went public in 2012. Missing data must be supplemented using an appropriate algorithm.
- Trading days vary between stock exchanges. National holidays differ, and in Hungary, workday shifts are mandated by law. Workday shifting is not a practice in the United States.
- Stock splits. As explained in a Portfolio.hu article from March 4, 2002:
   “As of today, each previous OTP Bank share is replaced with 10 new shares on the stock exchange. Naturally, this results in a proportional decrease in nominal value. The primary goal of stock splits in international practice is to improve liquidity, as private investors are often reluctant—possibly for psychological reasons—to buy shares with a high nominal price. A stock split is merely a technical adjustment and does not reflect a change in company valuation. Due to the significant weight of foreign institutional investors, the positive effect of increased liquidity may only minimally impact the ownership structure of OTP.”
   If a stock's price drops to exactly one-tenth overnight, it is likely due to a stock split, which must be accounted for in the calculation.

## Connecting to the Database – Reading Historical Trading Data



```powershell
Scaffold-DbContext "Data Source=bit.uni-corvinus.hu;Initial Catalog=Portfolio;Persist Security Info=True;User ID=hallgato;Password=Password123;TrustServerCertificate=true" Microsoft.EntityFrameworkCore.SqlServer -OutputDir PortfolioModels
```

In this task, we will analyze the value of a portfolio consisting of stocks based on historical stock market data. The historical data is stored on an SQL Server, and the connection details are available in the Moodle system. The `Tick` table contains the daily average prices of leading Hungarian stocks up to October 1, 2016.

The fields of the `Tick` table are:

- **Index**: the stock symbol [nchar(15)]
- **TradingDay**: the date of the trading day – the database contains daily average prices [datetime2]
- **Price**: the daily average price [money]
- **Volume**: daily trading volume – not needed for this task [int]
- **Tick_id**: primary key, row identifier – not needed for querying [int]

> In financial applications, it is strictly forbidden to store monetary values in a `double` type variable. The `double` type stores numbers in normalized binary format – with about 15–16 digits of precision. This binary representation introduces small floating-point errors for values like 0.3. Repeated multiplications increase this error. MS SQL Server provides a specific `money` data type. During Object-Relational Mapping (ORM), the `Money` type is mapped to `decimal` in C#.



## Building the code

### `PortfolioItem` class

``` c#
public class PortfolioItem
{
    public string Index { get; set; }
    public decimal Volume { get; set; }
}
```



### Class level 

``` c#
PortfolioModels.PortfolioContext context = new PortfolioModels.PortfolioContext();
List<PortfolioItem> portfolioItems = new List<PortfolioItem>();
List<Tick> ticks;
```

### Creating a Portfolio

```c#
private void CreatePortfolio()
{
    portfolioItems.Add(new PortfolioItem() { Index = "OTP", Volume = 10 });
    portfolioItems.Add(new PortfolioItem() { Index = "ZWACK", Volume = 10 });
    portfolioItems.Add(new PortfolioItem() { Index = "ELMU", Volume = 10 });

    dataGridView2.DataSource = portfolioItems;
}
```

### Calculate Portfolio Value

```c#
private decimal GetPortfolioValue(DateTime date)
{
    decimal value = 0;
    foreach (var item in portfolioItems)
    {
        var lastAvaliableTick = (from x in ticks
                                 where item.Index == x.Index.Trim()
                                    && date <= x.TradingDay
                                 select x)
                    .First();
        value += lastAvaliableTick.Price * item.Volume;
    }
    return value;
}
```

### Calculate Gains and Losses

```c#
void CalculateVar()
{
    List<decimal> gains = new List<decimal>();

    var startDate = (from x in context.Ticks select x.TradingDay).Min();
    var endDate = (from x in context.Ticks select x.TradingDay).Max();
    var intervall = 30; //Number of days to hold the portfolio
    int timespan = (endDate - startDate).Days;


    for (int i = 0; i < timespan - intervall; i++)
    {
        decimal buyPrice = GetPortfolioValue(startDate.AddDays(i));
        decimal sellPrice = GetPortfolioValue(startDate.AddDays(i + intervall));
        Trace.WriteLine($"Buy: {buyPrice} Sell: {sellPrice} Gain:{sellPrice-buyPrice}");
        gains.Add(sellPrice - buyPrice);
    }

    var gainsOrdered = (from x in gains
                        orderby x
                        select new Gain{GainAmmount = x }).ToList();
    dataGridView1.DataSource = gainsOrdered.ToList();

}
```



