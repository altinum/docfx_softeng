# Fibonacci Sequence

## Displaying the Sequence with Buttons

❶ Display the first ten elements of the [Fibonacci sequence](https://en.wikipedia.org/wiki/Fibonacci_number) using buttons on the form.

For reference:

![](https://wikimedia.org/api/rest_v1/media/math/render/svg/47f0f322e5c0d6f9ef56bd8236e4163f8816e870)

Based on the above, the function that returns the *n*-th element of the Fibonacci sequence:

```csharp
int Fibonacci(int n)
{
    if (n == 0) return 0;
    if (n == 1) return 1;
    return Fibonacci(n - 1) + Fibonacci(n - 2);
}
```

> [!NOTE]
> Recursive functions are functions that call themselves. The function above is a good example of this.

Placing the buttons can be done in the form's constructor, but we could also create an event handler for the form's `Load` event:

```csharp
public Form1()
{
    InitializeComponent();
    for (int i = 1; i < 10; i++)
    { 
        Button b = new Button();
        b.Top = i * 30;
        b.Text = Fibonacci(i).ToString();
        Controls.Add(b);
    }
}      
```

## Displaying Data in a Grid
❷ Place a `DataGridView` control on the form, where the values will be displayed in a tabular format!

❸ Add a class named `Element` to the project. The class should have an `int` property called `Index` and a `long` property called `Value`!

❹ Create a list named `elements`, which consists of `Element` objects! It is best to initialize this before the loop.

❺ In each loop iteration, create a new `Element`, set its properties, and add it to the `elements` list.

❻ Use the `DataGridView`'s `DataSource` property to display the list contents on the form!

> [!TIP]
> The wording of this task is similar to what you can expect in the exam.

> [!Tip]
>
> **Question to AI:** What Fibonacci Sequencea are used for in real life?



