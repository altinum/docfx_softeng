# Multiplication Table 

## Display a 10x10 multiplication table on the screen using buttons!

❶ Adding a single button to the screen:

``` csharp
Button btn = new Button();
this.Controls.Add(btn);
```

❷ Set it's `Height` and `Width` properties:

```csharp
Button btn = new Button();
this.Controls.Add(btn);

btn.Height = 40;
btn.Width = 40;
```



❸ Create an iteration loop that creates a grid of 10x10 `Button`s:

```csharp
int buttonSize = 40; // Button dimensions
for (int row = 0; row < 10; row++)
{
    for (int col = 0; col < 10; col++)
    {
        Button btn = new Button();
        btn.Height = buttonSize;
        btn.Width = buttonSize;
        btn.Left = col * buttonSize;
        btn.Top = row * buttonSize;
        this.Controls.Add(btn);
    }
}
```



❹ Set the `Text` on the button faces:

 To display the multiplication values on the buttons:

```cs
btn.Text = ((row + 1) * (col + 1)).ToString();
```



Modify the loop:

```csharp
for (int row = 0; row < 10; row++)
{
    for (int col = 0; col < 10; col++)
    {
        Button btn = new Button();
        btn.Height = buttonSize;
        btn.Width = buttonSize;
        btn.Left = col * buttonSize;
        btn.Top = row * buttonSize;
        btn.Text = ((row + 1) * (col + 1)).ToString(); // Set multiplication value
        this.Controls.Add(btn);
    }
}
```

