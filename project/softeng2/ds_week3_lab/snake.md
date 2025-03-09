# Snake Game

The purpose of this exercise is to deepen the understanding of lists, introduce enumerations, and organize `foreach` loops.



## Game Structure

❶ Derive a new class named `SnakeSegment` from the `PictureBox` class.

❷ Extend the `SnakeSegment` class with a static integer constant for the size, setting its value to `20`.

```c#
class SnakeSegment  : PictureBox
{
    public static int Size { get; set; } = 20;
}
```

❸ Extend the `SnakeSegment` class with a constructor that resizes itself to 20x20 pixels based on the above constant.

```c#
csharpCopyEditclass SnakeSegment : PictureBox
{
    public static int Size = 10;

    public SnakeSegment(int step)
	{
		Height = Size;
		Width = Size;
        BackColor = Color.Fuchsia;	
	}
}
```

❹ Extend the `Form1` class with `headX` and `headY` variables to store the coordinates of the last placed snake head. Set a reasonable initial value (e.g., `100, 100`).

```c#
namespace Snake
{
    public partial class Form1 : Form
    {
        int directonX = 1;
        int directonY = 0;
        
        public Form1()
        {
            InitializeComponent();
        }
        ...
```

❺ Extend the `Form1` class with `directonX ` and `directonY ` variables to store the movement direction of the snake (`-1`, `0`, `1`). Set an initial value to determine the starting direction.

```c#
        int directonX = 1;
        int directonY = 0;
        int headX = 100;
        int headY = 100;        
```

❻ Extend the `Form1` class with a `stepCounter ` variable initialized to `0`. Add a `snakeLength` to store the snake’s current length!

> [!NOTE]
>
> If you create an `int` type variable, its default initial value will be `0`, so explicit initialization is not required.

```c#
        int directonX = 1;
        int directonY = 0;
        int headX = 100;
        int headY = 100;
        int stepCounter = 0;
        int snakeLength = 5;
```

❼ Place a `Timer` on the form with a 0.5-second interval using the designer, then assign an event handler to its `Tick` event.

❽ In the event handler, update the values of `headX` and `headY` based on the direction and size, then create a new instance of the `SnakeSegment` class. The snake should now move.

```c#
private void timer1_Tick(object sender, EventArgs e)
{
    headX += directonX * SnakeSegment.Size;
    headY += directonY * SnakeSegment.Size;

    SnakeSegment ss = new SnakeSegment(stepCounter);

    ss.Top = headY;
    ss.Left = headX;

    Controls.Add(ss);

    stepCounter++;
}
```

❾ Assign an event handler to the form’s `KeyDown` event.

❿ Change the snake’s direction based on the `e.KeyValue` (or `KeyCode`) value received as a parameter in the event handler.

```c#
{
	if (e.KeyCode == Keys.Up)
	{
		directonY = -1;
		directonX = 0;
	}

	if (e.KeyCode == Keys.Down)
	{
		directonY = 1;
		directonX = 0;
	}

	if (e.KeyCode == Keys.Left)
	{
		directonY = 0;
		directonX = -1;
	}

	if (e.KeyCode == Keys.Right)
	{
		directonY = 0;
		directonX = 1;
	}
}
```

⓫ Implement collision detection! After calculating the new `headX` and `headY` values, iterate through the form’s `Controls` list using a `foreach` loop and check each `SnakeSegment` named `se`. If any element has `Top` and `Left` properties matching `headX` and `headY`, the snake has bitten its tail.

```c#
private void timer1_Tick(object sender, EventArgs e)
{
	headX += directonX * SnakeSegment.Size;
	headY += directonY * SnakeSegment.Size;

	foreach (SnakeSegment item in snake1)
	{
		if (item.Top == headY && item.Left == headX)
		{
			timer1.Enabled = false;
		}
	}
	...
```

⓬ Make the snake "crawl"! If the number of controls on the form exceeds the value of `snakeLength `, remove the first element from the form’s `Controls` list.

If the snake’s length exceeds the desired length, remove the first element from the `Controls` collection, i.e., the oldest added element:

```c#
// Trim the tail
if (Controls.Count > snakeLength )
{
    Controls.RemoveAt(0);
}
```

⓭ Color even and odd-numbered snake elements differently.

```c#
internal class SnakeSegment : PictureBox
{
	public static int Size { get; set; } = 20;
	public SnakeSegment(int step)
	{
		Height = Size;
		Width = Size;

		if (step % 2 == 0)
		{
			BackColor = Color.GreenYellow;
		}
		else
		{
			BackColor = Color.Fuchsia;
		}         
	}
}
```

### Poisons and Apples - Individual Tasks

If you place food and poisons in the form’s controls list, the approach of using `Controls.RemoveAt(0);` to remove the oldest element will become ineffective. To solve this issue, store `SnakeSegment` objects representing the snake’s body in a separate list. Create a list of `SnakeSegment` objects at the class level in `Form1`:

```c#
public partial class Form1 : Form
{
    int directonX = 1;
    int directonY = 0;
    int headX = 100;
    int headY = 100;
    int stepCounter = 0;
    int snakeLength = 5;

    List<SnakeSegment> snake1 = new List<SnakeSegment>();
    ...
```

When a new head is added to the snake, it should be added both to the `snake` list and the form’s control list:

```
csharpCopyEdit// Grow the head
head_x += direction_x * SnakeSegment.Size;
head_y += direction_y * SnakeSegment.Size;   
SnakeSegment se = new SnakeSegment();
snake.Add(se); // Add the new head to the `snake` list...
Controls.Add(se); // ...and to the form's controls list
```

During tail trimming, determine which `SnakeSegment` to remove based on the oldest element in the `snake` list. Collision detection is also handled differently:

```c#
private void timer1_Tick(object sender, EventArgs e)
{
    headX += directonX * SnakeSegment.Size;
    headY += directonY * SnakeSegment.Size;

    foreach (SnakeSegment item in snake1)
    {
        if (item.Top == headY && item.Left == headX)
        {
            timer1.Enabled = false;
        }
    }

    SnakeSegment ss = new SnakeSegment(stepCounter);

    ss.Top = headY;
    ss.Left = headX;

    Controls.Add(ss);
    snake1.Add(ss);

    stepCounter++;

    if (snake1.Count > snakeLength)
    {
        SnakeSegment segmentToBeCut = snake1[0];
        snake1.RemoveAt(0);
        Controls.Remove(segmentToBeCut);
    }
}
```

Now you can create new classes for food and poison, which can be placed randomly on the form at intervals.

### Two Snakes Against Each Other

There can be two snakes:

```c#
List<SnakeSegment> snake1 = new List<SnakeSegment>();
List<SnakeSegment> snake2 = new List<SnakeSegment>();
```

The rest will come naturally. :)

### Review Questions

1. If a form contains only instances of the `Button` class, write a `foreach` loop that iterates through the form’s `Controls` list and sets every button’s `Visible` property to `false`.
2. How can you remove a specific indexed element from the form’s `Controls` list?
3. How can you determine the number of elements in a list?
4. Write a code snippet that determines whether a number is even.
5. Derive a class from the `Button` class that automatically resizes itself to 30x30 pixels.