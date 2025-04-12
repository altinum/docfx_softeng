# Checklist for the Second Midterm

You can use any database from the `bit.uni-corvinus.hu` server for practice, but you can also create your own database in Azure. The Chinook database can be a good start. You can download the scripts that build up the database:
 🔗 [Chinook Database on GitHub](https://github.com/lerocha/chinook-database?tab=readme-ov-file)

------

## User Interfaces

- You should be able to create multiple forms that can be opened at the click of a button.
- You should also be able to create a UI layout where UserForms are created inside a **Panel** placed on **Form1**.

------

## Handling CSV Files

- Save data to CSV files using a `SaveFileDialog` to specify location. You can use an arbitrary NuGet package or write plain C# code.
- Load data from CSV files using an `OpenFileDialog`. You can use an arbitrary NuGet package or write plain C# code.
- Try to solve a more complex task as practice:
   Open a CSV file, iterate through its lines, and append its content to a SQL table.

> [!NOTE] 
>
> If you use packages, you use them at your own risk 😊 but getting familiar with these packages can save you a lot of time.
> Suggested packages: **CsvHelper** and [**FileHelpers**](https://www.filehelpers.net/example/QuickStart/ReadFileDelimited/). If you pick **FileHelpers**, you will have to decorate the class describing the line with some attributes according to the code examples provided with the library, but it's not that sensitive to typos in the column names.

------

## ORM (Object Relational Mapping)

- Install the necessary packages into your project and create the mapping classes according to the `Scaffold-DbContext` command provided.

------

### Example 1

- Load the content of an entire table directly into a `DataGridView`.
- Use a LINQ query to filter data. For example, place a `TextBox` above the grid, assign an event handler to the `TextChanged` event, and filter the database as the user types.

------

### Example 2

- Load the content of an entire table directly into a `DataGridView` using a `BindingSource`.
- Place additional controls like `TextBoxes`, `CheckBoxes`, and `DatePickers` on the form, and bind them to the same `BindingSource`.

------

### Example 3

- Continue the previous example. Create a form that allows the user to create a new record in the database.
- Create a separate form that pops up at the click of an **“Add New”** button.
   The form should contain controls that match the structure of the table (`TextBoxes`, `CheckBoxes`, `DatePickers`, etc.).
- Place **“OK”** and **“Cancel”** buttons on the bottom right corner of the form.
- If the user clicks the **“OK”** button, the new record should be appended to the table.
- Don’t forget to reread data from the database to make the new record visible in the grid.

> 📌 Step-by-step instructions will be uploaded to the site later.

------

### Example 4

- Pick a table that has at least one foreign key column.
- Display the data from the table in a `DataGridView`.
- Use `DataGridViewComboBoxColumn`s to retrieve data from the table referenced by the foreign key column.

------

### Example 5

- Pick a table that has at least one foreign key column.
   In this example, we want to display values referenced by foreign key columns in the data grid without combo boxes.
- Create your own class that describes the lines, including retrieved values of the foreign key columns you want to display.
- Create a LINQ query that retrieves the data using navigation properties.

------

### Example 6

- Display data from master-detail relations.
- Pick two tables from your chosen database that are in a **one-to-many** relationship.
- Display the most relevant column of the table on the “one” side of the relation in a `ListBox` using a `BindingSource`.
- When the user picks an element in the `ListBox`, display the related records from the “many” side of the relation in a `DataGridView`.

