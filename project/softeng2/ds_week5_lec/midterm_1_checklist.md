### Checklist for the First Midterm

We recommend not to leave your preparation to the last minute. After reviewing the checklist below, it is advisable to solve all the sample exercises provided so far, following the step-by-step guide for each task. In the first midterm, task descriptions will be broken down into clear, elementary steps. At this stage, independent ideas are not required; we only expect familiarity with the Visual Studio development environment and knowledge of the language elements listed in this checklist.

During the exam, you are allowed to use a single handwritten A4 sheet of notes. However, relying too much on this aid can create a false sense of security. If you lack sufficient practice, you may not be able to correct simple errors quickly enough, such as a missing `;` or `}`.

### Practical Advice:

Do not create your midterm solution on the S: drive. If the storage runs out or a temporary network failure occurs, unexpected issues may arise in Visual Studio that do not clearly indicate the cause of the error. It is recommended to create the project on the desktop instead.

> [!IMPORTANT]
>
> Only lab computers may can used for writing the midterm!



------

## **Checklist for the First Midterm**

### **Project Setup**

- Create a **Windows Form Application** project and compress the entire project into a **ZIP file** for submission. A separate guide has been provided for this.

### **Basic Data Types**

- Familiarity with elementary data types: `int`, `bool`, `double`, `decimal`, `string` etc. 

### **Form Editor Usage**

- Using the **Form Editor**, placing controls such as **Button, TextBox, Label, DataGridView** on the form, setting their names and basic properties.
- Assigning event handlers to events, e.g., assigning an event handler to the form's **Load** event (by double-clicking on an empty area in the designer).

### **Data Type Conversions**

- Converting between basic types, e.g., converting text to numbers or vice versa.
- **Example:** In the loan calculator sample application, the `Text` property of a `TextBox` was read into a `decimal` variable using `decimal.Parse()` . After cost calculation, the `decimal` result was converted to a string using the `.ToString()` method.
- Formatting numbers using eg: `.ToString("N2")` . 
- Handling runtime errors related to type conversion, e.g., using `double.TryParse()`.

**Sample Task:**

1. Place **two input fields** and a **button** on the form.
2. Set the **Enabled** property of the second input field to `false` in the designer.
3. Assign an event handler to the **Click** event of the button.
4. The event handler should display **twice the value** entered in the first input field in the second input field.

### **Creating Controls in Code**

- Example: Creating an instance of the `Button` class (`Button btn = new Button();`), setting its properties (width, height, position, text, color), and adding it to the form's controls list (`Controls.Add(btn);`).

### **Loop Structures**

- **For loops**, e.g., placing ten buttons in a row.
- **Nested loops**, e.g., placing **a 10×10 grid of buttons**.
- **While loops**.
- **Conditional Statements**.

**Sample Task:** Modify the previous example so that buttons appear in a **checkerboard pattern**, displaying only every **other button**.
 This can be achieved by only displaying a button if the sum of the row and column numbers has a remainder of 0 when divided by 2, using the modulo operator `%`:

```c#
if ((row + column) % 2 == 0) { ... }
```

**Important:**

- Use `==` for **equality comparison**.
- Use `=` for **assignment**.

### **Methods**

- **Sample Tasks:**  write methods for **factorial calculation** and determining **a Fibonacci sequence element**.

### **Creating Custom or Derived Classes**

- Adding **variables** to the class.

- Adding **properties** to the class  (`prop-tab-tab`). 

- Extending a class with a **constructor** (`ctor-tab-tab`) and had over parameter over the constructor. eg:

  ```csharp
  internal class KeyValuePair
  {
      public KeyValuePair(string key, string value)
      {
          Key = key;
          Value = value;
      }
      public string Key { get; set; }
      public string Value { get; set; }
  }
  ```

  or if the parameter name in the constructor is similar to the property name: 
  ```csharp
  internal class KeyValuePair
  {
      public KeyValuePair(string Key, string Kalue)
      {
          this.Key = Key;
          this.Value = Value;
      }
      public string Key { get; set; }
      public string Value { get; set; }
  }
  ```

  

## Parsing .csv files

ToDO	

## Using LINQ

ToDO