# Mock test

Generate a sample dataset using ChatGPT using something like the propt as follows:

```
Create a sample dataset in ;-separated CSV format for a data analysis example with five columns. One of the columns should contain decimal numbers, and another should contain integers. Include column headers. The dataset should have 100 rows.
```

The result should be something like this:

```
ID;Name;Age;Salary;Department
1;Alice;25;45000.50;HR
2;Bob;30;55000.75;IT
3;Charlie;28;48000.00;Finance
4;David;35;62000.25;Marketing
5;Eve;40;75000.80;IT
6;Frank;27;47000.60;HR
7;Grace;33;60000.10;Finance
...
```

## Task

❶ Save the result to a `.CSV` file in `C:\temp`! The sample file can be downloaded [here](sample.csv).

❷ Create an application in Visual Studio using the **Windows Forms** template!

**Define classes for the CSV Data and the query results**

❸ In the application, create a class that represents a line of the `.csv` file! Use a descriptive class name that meets the naming conventions!

❹ Create **another** class as well named `KeyValuePair` that holds a `string` type property called `Key` and **another** `string` type property called `Value`.

**Define Data Structures in `Form1`**

❺ Create a `BindingList<KeyValuePair>` named `keyValuePairs` at the class level in `Form1`. (This list will hold the results of some LINQ queries.)

❻ Create **another** `BindingList<>` at the class level in `Form1` that holds the data read from the `.csv` file.

**Design the UI and read data from the file** 

❼ Place two `DataGridView` controls on the Form and a `Button`!

❽ Assign an event handler to the `Click` event of the button! In the event handler:

❾ Bind the `DataGridView` controls to the `BindingList<>` objects through the grid's `DataSource` property!

❿ Read the content of the file to the list using the `StreamReader` class. (Geeks can use third-party packages like [FileHelpers](https://www.filehelpers.net/example/QuickStart/ReadFileDelimited/) at their own risk. [Here](https://www.joelverhagen.com/blog/2020/12/fastest-net-csv-parsers) is a comparison of available CSV parser packages for .NET.)

⚠ The content of the file should appear in one of the grids!

**Enable Data Entry**

⓫ Place `TextBox` controls and a `Button` with its `Text` property set to `ADD` next to the grid! The button should append a new line to the list according to the values entered in the `TextBox` controls. Each column should have a separate `TextBox`.

⓬ Prevent runtime errors if the user enters values that can't be converted to the appropriate numeric format. It's up to you how to handle the errors. For example, `TextBox` controls with bad values can be colored.

**Display Query Results in the Second Grid**

Display the results of the following queries in the grid that holds the key-value pairs:

⓭ Number of items in the list

⓮ Age of the youngest employee

⓯ Average age

⓰ Name of the employee with an ID of 5

**Display Query Results in a Third Grid**

⓱ Create a third `DataGridView`! In this grid, display the names of the employees that make the most!

