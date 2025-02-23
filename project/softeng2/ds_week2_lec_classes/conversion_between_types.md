# Lecture: Implicit and Explicit Type Conversion in C#

## **Introduction**

In C#, type conversion (or type casting) is the process of converting one data type to another. C# provides two main types of conversion:

1. **Implicit Conversion (Safe Conversion)**
2. **Explicit Conversion (Type Casting)**

Understanding these concepts is crucial for writing efficient and error-free code.

## **1. Implicit Type Conversion**

### **Definition**

Implicit conversion happens **automatically** when:

- There is no risk of data loss.
- The destination type can accommodate all possible values of the source type.

Implicit conversions occur in widening conversions, such as from a smaller to a larger numeric type.

### **Examples of Implicit Conversion**

#### **Example 1: Converting `int` to `long`**

```c#
int smallNumber = 100;
long bigNumber = smallNumber; // Implicit conversion
Console.WriteLine(bigNumber);
```

- Here, `int` (4 bytes) is converted to `long` (8 bytes) without explicit casting since `long` can hold any `int` value.

#### **Example 2: Converting `float` to `double`**

```c#
float pi = 3.14f;
double precisePi = pi; // Implicit conversion
Console.WriteLine(precisePi);
```

- `float` (4 bytes) is implicitly converted to `double` (8 bytes) because `double` has more precision.

#### **Example 3: Converting `char` to `int`**

```c#
char letter = 'A';
int asciiValue = letter; // Implicit conversion
Console.WriteLine(asciiValue); // Outputs: 65
```

### **Key Points**

- Implicit conversions **do not require** a cast operator.
- No risk of data loss.
- It mainly happens in widening numeric conversion



## **2. Explicit Type Conversion**

### **Definition**

Explicit conversion (also called **type casting**) requires a cast operator `(type)`, because:

- There is a risk of data loss.
- The conversion is not naturally safe.

### **Examples of Explicit Conversion**

### 2.1 Type Casting

Type casting in C# is used to **explicitly convert** one data type into another when implicit conversion is not possible. This requires the **cast operator `(type)`**.

#### **Example: Converting `double` to `int` (Data Loss)**

```c#
double preciseValue = 9.99;
int roundedValue = (int)preciseValue; // Explicit conversion
Console.WriteLine(roundedValue); // Outputs: 9
```

- `double` to `int` requires explicit conversion because it may cause loss of decimal values.

#### **Example 2: Converting `int` to `byte` (Possible Overflow)**

```c#
int number = 256;
byte smallByte = (byte)number; // Explicit conversion
Console.WriteLine(smallByte); // Output: 0 (due to overflow)
```

- `byte` can only store values from `0` to `255`. Since `256` exceeds this, the value wraps around.

#### **Example 3: Converting `long` to `int`**

```c#
long bigNumber = 5000000000000;
int smallNumber = (int)bigNumber; // Explicit conversion
Console.WriteLine(smallNumber);
```

- If `bigNumber` exceeds `int.MaxValue`, data loss will occur.

#### **Key Points**

- Requires a cast `(type)`.
- Data loss or runtime exceptions can occur.
- Necessary for narrowing conversions.



### 2.2 Using `Convert` Class

The `Convert` class safely converts types while handling exceptions.

```c#
double price = 99.99;
int roundedPrice = Convert.ToInt32(price);
Console.WriteLine(roundedPrice); // Outputs: 100 (Rounded)
```



### **2.3 Using `ToString()` for String Conversion**

```c#
int number = 50;
string text = number.ToString(); // Convert int to string
Console.WriteLine(text);
```

### **2.4 Using `Parse()` and `TryParse()` for String to Number Conversion**

```c#
string numberText = "123";
int numberValue = int.Parse(numberText);
Console.WriteLine(numberValue);
```

```c#
string invalidText = "abc";
bool success = int.TryParse(invalidText, out int result);
Console.WriteLine(success); // Outputs: False
```

- `TryParse()` prevents runtime exceptions.

## **Conclusion**

| Conversion Type | Implicit     | Explicit (Casting)  |
| --------------- | ------------ | ------------------- |
| Safety          | Safe         | May cause data loss |
| Requires Cast?  | No           | Yes  -- `(type)`    |
| Example         | `int → long` | `double → int`      |
| Numeric Types   | Widening     | Narrowing           |

Understanding implicit and explicit conversions in C# is crucial for writing robust applications. Implicit conversions simplify type handling, while explicit conversions provide flexibility but require careful handling to prevent errors.