# Lecture: working with classes

Let's assume that we want to track stock exchange data. 

![An example of a green and red candlestick](https://a.c-dn.net/c/content/dam/publicsites/igcom/uk/images/ContentImage/BULLISH%20BEARISH%20CANDLESTICK-150620.jpg/jcr:content/renditions/original-size.webp)

See [source](https://www.ig.com/en/trading-strategies/japanese-candlestick-trading-guide-200615).

![img](https://bpcdn.co/images/2020/04/18151947/Heikin-Ashi-traditional-GBPJPY-daily-chart-example.png)

Sidenote: The terms **bullish** and **bearish** markets have interesting origins that go back to animal symbolism, specifically the behaviors of bulls and bears.

1. **Bullish**: A "bullish" market refers to a market that is rising or expected to rise. The origin of the term comes from the way a bull attacks its prey. Bulls strike upward with their horns, symbolizing an upward movement in the market. When someone is "bullish," they believe prices are going to go up.
2. **Bearish**: Conversely, a "bearish" market is one that is falling or expected to fall. The origin of the term for bears is rooted in the way they swipe their paws downward when attacking. A bearish person believes that prices will decline.



Back to IT: let's create a class with simple member variables:

```c#
class DailyTradingData
{
    string symbol;      // The stock symbol (e.g., AAPL)
    uint day;           // The number of the trading day since jan. 1th, 1970 
    decimal openPrice;  // Opening price
    decimal closePrice; // Closing price
}
```

> [!WARNING]
>
> A variable, property of method without an access modifier is considered to be private!

Let's add `pubclic` access modifiers:

```c#
class DailyTradingData
{
    public string symbol;      // The stock symbol (e.g., AAPL)
    public uint day;           // The number of the trading day since jan. 1th, 1970 
    public decimal openPrice;  // Opening price
    public decimal closePrice; // Closing price
}
```

Now that we have access modifiers we can access variables of our class from the instance:

```c#
DailyTradingData day1 = new DailyTradingData();
day1.symbol = "MOL";
day1.day = 20143;
day1.openPrice = 3.94m;
day1.closePrice = 3.95m;
```

Let's see the difference between a **member variable** and a **property**:

```c#
class DailyTradingData
{
    public string symbol;      // The stock symbol (e.g., AAPL)
    public uint day;           // The number of the trading day since jan. 1th, 1970 
    public decimal openPrice;  // Opening price

    private decimal _closePrice;

    public decimal ClosePrice
    {
        get { return _closePrice; }
        set { _closePrice = value; }
    }
}
```

We do not need full properties all the time, so there is a shorthand `{ get; set; }`: 

```c#
public class DailyTradingData
{
    public string Symbol { get; set; } // The stock symbol (e.g., AAPL)
    public uint Day { get; set; } // The number of the trading day since jan. 1th, 1970 
    public decimal OpenPrice { get; set; } // Opening price
    public decimal ClosePrice { get; set; } // Closing price
}
```

> [!IMPORTANT]
>
> Member variable names start with lower case letters, property names start with upper case letters!

Now let's assume that we want to return a the difference between the open and the close price as well. We can do it as a method:

```c#
public class DailyTradingData
{
    public string Symbol { get; set; } // The stock symbol (e.g., AAPL)
    public uint Day { get; set; } // The number of the trading day since jan. 1th, 1970 
    public decimal OpenPrice { get; set; } // Opening price
    public decimal ClosePrice { get; set; } // Closing price

    public decimal GetPriceChange() {
        return ClosePrice - OpenPrice;
    }
}
```

Or as a property:

```c#
public class DailyTradingData
{
    public string Symbol { get; set; } 
    public uint Day { get; set; } 
    public decimal OpenPrice { get; set; } 
    public decimal ClosePrice { get; set; } 

    public decimal PriceChange
    {
        get { return ClosePrice - OpenPrice; }
    }
}
```

See: no setter method, since it's not needed.

Let's define an other property that returns the price change in percents:

```c#
public class DailyTradingData
{
    public string Symbol { get; set; } 
    public uint Day { get; set; } 
    public decimal OpenPrice { get; set; } 
    public decimal ClosePrice { get; set; } 

    public decimal PriceChange
    {
        get { return ClosePrice - OpenPrice; }
    }

    public decimal PriceChangePercentage
    {
        get { return PriceChange / OpenPrice * 100; }
    }
}
```

We can add some more properties

```c#
public bool IsBullish { get { return ClosePrice > OpenPrice; } }
```

An example of inheritance:

```c#
public class ExtendedDailyTradingData : DailyTradingData
{  
    public decimal HighPrice { get; set; } // Daily high price
    public decimal LowPrice { get; set; } // Daily low price
    public long Volume { get; set; } // Trading volume (quantity)
}
```

It can be acieved in a single step in this case:

```c#
public class DailyTradingData
{
    public string Symbol { get; set; } // The stock symbol (e.g., AAPL)
    public uint Day { get; set; } // The number of the trading day since jan. 1th, 1970 
    public decimal OpenPrice { get; set; } // Opening price
    public decimal HighPrice { get; set; } // Daily high price
    public decimal LowPrice { get; set; } // Daily low price
    public decimal ClosePrice { get; set; } // Closing price
    public long Volume { get; set; } // Trading volume (quantity)
}
```

Let's expand our class with a constructor:

```c#
// Constructor to initialize the properties
    public DailyTradingData(
        string symbol, 
        uint day, 
        decimal openPrice, 
        decimal highPrice, decimal lowPrice, decimal closePrice, long volume)
    {
        Symbol = symbol;
        Day = day;
        OpenPrice = openPrice;
        HighPrice = highPrice;
        LowPrice = lowPrice;
        ClosePrice = closePrice;
        Volume = volume;
    }
```



Now let's build a list of `DailyTradingData` and add data of day 1

```c#
DailyTradingData day1 = new DailyTradingData();
day1.Symbol = "MOL";
day1.Day = 20143;
day1.OpenPrice = 3.94m;
day1.ClosePrice = 3.95m;

List<DailyTradingData> tradingData = new();
tradingData.add(day1);
```

Or using a constructor:

```c#
DailyTradingData day2 = new DailyTradingData("OTP",2143,3.94m, 3.95m,3.9m,4.0m,1200);
```

