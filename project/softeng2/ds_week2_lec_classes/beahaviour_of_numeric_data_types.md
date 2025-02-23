# **Lecture on Numeric Data Types in C#**

## **Introduction**

In C#, numeric data types exhibit different behaviors depending on their type, especially when dealing with edge cases like **division by zero**, **overflow**, and **special values like `NaN` and `Infinity`**. Understanding these behaviors is crucial for writing robust applications that handle numerical computations effectively.

### **1. Categories of Numeric Types in C#**

C# provides different numeric data types, broadly categorized as:

- **Integral types**: `byte`, `sbyte`, `short`, `ushort`, `int`, `uint`, `long`, `ulong`, `char`
- **Floating-point types**: `float`, `double`
- **Decimal type**: `decimal`
- **BigInteger**: `System.Numerics.BigInteger` (for arbitrarily large numbers)

Each of these has distinct properties regarding storage, precision, overflow handling, and ability to hold special values.

## **2. Behavior of Integral Types**

### **2.1 Overflow and Wrapping**

C# **integral types** are fixed-width and do **not** support special values like `NaN` or `Infinity`. Instead, they either:

- **Wrap around** in unchecked contexts.
- **Throw an exception** in checked contexts.

#### **Example: Overflow Behavior**

```c#
int maxValue = int.MaxValue;
int minValue = int.MinValue;

int overflowedValue = maxValue + 1;  // Wraps around to int.MinValue
Console.WriteLine(overflowedValue); // Output: -2147483648
```

Using the `checked` keyword forces an exception on overflow:

```c#
checked
{
    int x = int.MaxValue;
    x = x + 1;  // Throws OverflowException
}
```

In an `unchecked` context, the overflow wraps around, meaning `int.MaxValue + 1 == int.MinValue`.

### **2.2 Division by Zero**

Integral types do **not** allow division by zero and throw a `DivideByZeroException` at runtime.

```c#
int a = 10;
int b = 0;
int result = a / b; // Throws DivideByZeroException
```

### **2.3 Unsigned Types and Overflow**

Unsigned integers (`uint`, `ulong`, `ushort`, `byte`) behave similarly but wrap within their positive range.

```c#
uint max = uint.MaxValue;
uint wrapped = max + 1; // Wraps to 0
Console.WriteLine(wrapped); // Output: 0
```

------

## **3. Behavior of Floating-Point Types (`float` and `double`)**

Floating-point types (`float` and `double`) follow IEEE 754 standards, which means they support `Infinity`, `-Infinity`, and `NaN` (Not-a-Number).

### **3.1 Division by Zero**

Unlike integers, floating-point numbers do **not** throw exceptions when divided by zero. Instead, they return:

- `Infinity` when divided by zero (positive/zero)
- `NegativeInfinity` when a negative number is divided by zero
- `NaN` (Not-a-Number) when zero is divided by zero.

#### **Example**

```c#
double posInf = 1.0 / 0.0;   // Infinity
double negInf = -1.0 / 0.0;  // -Infinity
double nanVal = 0.0 / 0.0;   // NaN

Console.WriteLine(posInf); // Output: Infinity
Console.WriteLine(negInf); // Output: -Infinity
Console.WriteLine(nanVal); // Output: NaN
```

### **3.2 Special Values: NaN and Infinity**

`NaN` is a special value that means "Not-a-Number" and behaves oddly:

- **Comparisons involving NaN always return false** (even `NaN == NaN` is false).
- Use `double.IsNaN(value)` to check if a value is `NaN`.

#### **Example**

```c#
double x = double.NaN;
Console.WriteLine(x == x); // False

if (double.IsNaN(x))
{
    Console.WriteLine("x is NaN"); // This will print
}
```

### **3.3 Precision Issues**

Floating-point numbers have precision limitations, which can lead to rounding errors.

```c#
double a = 0.1 + 0.2;
Console.WriteLine(a == 0.3); // False due to floating-point precision errors
Console.WriteLine(a); // Output: 0.30000000000000004
```

------

## **4. Behavior of `decimal` Type**

The `decimal` type is a **high-precision fixed-point number** mostly used in financial and monetary calculations. It does **not** support `NaN` or `Infinity`, and division by zero throws an exception.

### **4.1 Division by Zero in `decimal`**

```c#
decimal d = 10m;
decimal result = d / 0m; // Throws DivideByZeroException
```

### **4.2 Precision in `decimal`**

Unlike `double`, `decimal` avoids precision issues:

```c#
decimal d1 = 0.1m + 0.2m;
Console.WriteLine(d1 == 0.3m); // True
```

The tradeoff is that `decimal` is slower than `double` due to its more complex arithmetic.

------

## **5. Behavior of `BigInteger`**

The `BigInteger` type (from `System.Numerics`) allows for arbitrarily large numbers without overflow. However, it does **not** support special values like `NaN` or `Infinity`.

### **Example: No Overflow**

```c#
using System.Numerics;

BigInteger big = BigInteger.Pow(10, 100); // 10^100, a massive number
Console.WriteLine(big);
```

------

## **6. Summary Table**

| Type         | Supports `NaN`? | Supports `Infinity`? | Division by Zero         | Overflow Handling                       |
| ------------ | --------------- | -------------------- | ------------------------ | --------------------------------------- |
| `int`        | No              | No                   | Exception                | Wraps (unchecked) / Exception (checked) |
| `uint`       | No              | No                   | Exception                | Wraps (unchecked) / Exception (checked) |
| `long`       | No              | No                   | Exception                | Wraps (unchecked) / Exception (checked) |
| `ulong`      | No              | No                   | Exception                | Wraps (unchecked) / Exception (checked) |
| `float`      | Yes             | Yes                  | Returns `Infinity`/`NaN` | Approximates (loss of precision)        |
| `double`     | Yes             | Yes                  | Returns `Infinity`/`NaN` | Approximates (loss of precision)        |
| `decimal`    | No              | No                   | Exception                | Exception                               |
| `BigInteger` | No              | No                   | Exception                | No overflow                             |

------

## **7. Best Practices**

1. **Use `decimal` for monetary values** to avoid precision errors.
2. **Use `double` or `float` for scientific computations**, but be aware of precision loss.
3. **Use `checked` for integral operations** where overflow matters.
4. **Handle `NaN` properly** in floating-point computations.
5. **Use `BigInteger` for arbitrarily large numbers**, but remember it has performance overhead.

------

## **Conclusion**

C# numeric types behave differently under special conditions like overflow, division by zero, and precision handling. Choosing the correct data type based on your use case is crucial to avoid unexpected behavior in computations.