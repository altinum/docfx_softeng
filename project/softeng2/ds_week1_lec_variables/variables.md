# Variables

## Basic variables in C# along with their ranges and memory consumption

| Data Type | Description                    | Size (Bytes)                           | Range                                                   |
| --------- | ------------------------------ | -------------------------------------- | ------------------------------------------------------- |
| `byte`    | Unsigned 8-bit integer         | 1                                      | 0 to 255                                                |
| `sbyte`   | Signed 8-bit integer           | 1                                      | -128 to 127                                             |
| `short`   | Signed 16-bit integer          | 2                                      | -32,768 to 32,767                                       |
| `ushort`  | Unsigned 16-bit integer        | 2                                      | 0 to 65,535                                             |
| `int`     | Signed 32-bit integer          | 4                                      | -2,147,483,648 to 2,147,483,647                         |
| `uint`    | Unsigned 32-bit integer        | 4                                      | 0 to 4,294,967,295                                      |
| `long`    | Signed 64-bit integer          | 8                                      | -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 |
| `ulong`   | Unsigned 64-bit integer        | 8                                      | 0 to 18,446,744,073,709,551,615                         |
| `float`   | 32-bit floating point          | 4                                      | ±1.5 × 10⁻⁴⁵ to ±3.4 × 10³⁸                             |
| `double`  | 64-bit floating point          | 8                                      | ±5.0 × 10⁻³²⁴ to ±1.7 × 10³⁰⁸                           |
| `decimal` | 128-bit precise floating point | 16                                     | ±1.0 × 10⁻²⁸ to ±7.9 × 10²⁸                             |
| `char`    | 16-bit Unicode character       | 2                                      | '\u0000' to '\uffff' (0 to 65,535)                      |
| `bool`    | Boolean (true/false)           | 1 (or more, depends on implementation) | `true` or `false`                                       |





## The etimology of the word “integer”? 

The word **"integer"** in programming comes from **Latin**, where *integer* means **"whole" or "untouched"** (*in-* meaning "not" and *tangere* meaning "to touch"). It was used in mathematics long before programming to refer to **whole numbers** (both positive and negative, including zero) without fractional or decimal parts. 

When programming languages were developed, they adopted **integer** as a data type name to represent whole numbers, distinguishing them from floating-point numbers, which can have decimals. The choice was a natural extension of mathematical terminology into computing. 

## Etimology of the word “bool” in programing? 

The term **"bool"** in programming comes from **"Boolean"**, which is named after **George Boole** (1815–1864), an English **mathematician** and logician. Boole developed Boolean algebra, a system of logic that deals with true/false (or 1/0) values, which became fundamental to computer science and digital logic. 

Many programming languages use "bool" as a shorthand for the Boolean data type, which can hold only two values: `true` or `false`.  



## **0.1 in binary (base 2):**

0.0001100110011001100110011001100...

This pattern **(0011)** repeats infinitely. 

> [!IMPORTANT]
>
> `double` and `float` store numbers in a binary float point format. It means that the decimal 0.1 value converted to `double` of `float` will hold a **rounding error**! Use `decimal` if necessary!

## Immutability of strings

In C#, **strings are immutable**, meaning that once a `string` object is created, its value cannot be changed. Any operation that appears to modify a string actually creates a **new** string object in memory rather than altering the original one.

```c#
string s = "Hello";
s += " World"; // A new string "Hello World" is created, and 's' now references it.
```

The original `"Hello"` string still exists in memory (until garbage collection reclaims it).