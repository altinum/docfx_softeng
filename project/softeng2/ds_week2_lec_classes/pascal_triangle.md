# Arranging Pascal's Triangle of Buttons

![{\displaystyle {\begin{array}{c}1\\1\quad 1\\1\quad 2\quad 1\\1\quad 3\quad 3\quad 1\\1\quad 4\quad 6\quad 4\quad 1\\1\quad 5\quad 10\quad 10\quad 5\quad 1\\1\quad 6\quad 15\quad 20\quad 15\quad 6\quad 1\\1\quad 7\quad 21\quad 35\quad 35\quad 21\quad 7\quad 1\end{array}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/3a8beb14cd64d7451f9f9e4f965713d3e7e62cbb)



The task is to arrange the first few rows of [Pascal's Triangle](https://en.wikipedia.org/wiki/Pascal's_triangle) using buttons.

The binomial coefficients in Pascal's Triangle can be expressed using factorials:

![{\displaystyle {n \choose k}={\frac {n!}{k!,(n-k)!}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c42a41f48e94296543f7f82ae26e19f69cc73ece)

### 1. Calculating Factorial

The .NET framework does not include a built-in function for calculating factorials, so as a first step, we need to implement it ourselves. There are two possible approaches, and you can choose either solution.

#### Option 1: Calculating Factorial Using Iteration

![img](https://wikimedia.org/api/rest_v1/media/math/render/svg/4234ee890533fa15c15af33b07648b46ef87f08a)

The C# function generates the above product sum:

```c#
int Factorial(int n)
{
    int result = 1;
    for (int i = 1; i <= n; i++) result *= i;
    return result;
}
```

- The `*=` operator multiplies the variable’s value by the value following the operator. Similarly, the `+=`, `-=`, and `/=` operators work the same way.
- The `++` operator increases the variable’s value by 1, while `--` decreases it.

#### Option 2: Calculating Factorial Using Recursion

As mentioned earlier, recursive functions are functions that call themselves. In this approach, we start from the principle that if $n>0$, then $n!=(n-1)!$, and if $n\leq0$, then $n=1$.

In C#:

```c#
int Factorial2(int n)
{ 
    if (n == 0) return 1;
    return n * Factorial2(n - 1);            
}
```

## 2. Arranging the Triangle

(+/-) Arrange the binomial coefficients in a 10x10 grid using `Button` controls based on the following formula:

![{\displaystyle {n \choose k}={\frac {n!}{k!,(n-k)!}}}](https://wikimedia.org/api/rest_v1/media/math/render/svg/c42a41f48e94296543f7f82ae26e19f69cc73ece)

Substitute *n* with the row number and *k* with the column number!

First, place the elements in a grid, then later modify the display so that elements above the main diagonal do not appear, and finally arrange them in a pyramid shape:

```c#
namespace Pascal
{
    public partial class Form1 : Form
    { 
        public Form1()
        {
            InitializeComponent();
            for (int row = 0; row < 10; row++)
            {
                for (int column = 0; column <= 10; column++)
                {
                    Button b = new Button();
                    b.Top = row * 60;
                    b.Left = column * 60;
                    b.Height = 60;
                    b.Width = 60;
                    this.Controls.Add(b);
                    int p = Factorial(row) / (Factorial(column) * (Factorial(row - column)));
                    b.Text = p.ToString();
                }
            }
        }

        int Factorial(int n)
        {
            int result = 1;
            for (int i = 1; i <= n; i++) result *= i; 
                       
            return result;
        }

        int Factorial2(int n)
        { 
            if (n == 0) return 1;
            return n * Factorial2(n - 1);            
        }
    }
} 
```

① Ensure that only the main diagonal and the elements below it are displayed.

> [!TIP] 
>
> Elements below the main diagonal are those where the column number is greater than or equal to the row number. Pascal's Triangle is a triangle, not a square! For now, we will create a right-angled triangle.

② Arrange the elements in a pyramid shape.

> [!TIP] 
>
> Each row should be shifted slightly more to the left than the previous row. Specifically, in each row, the elements should be shifted half a button width further left than the elements in the previous row.

> [!TIP] 
>
> The `ClientRectangle.Width` expression represents the internal window size—excluding borders—in pixels. (For a window, `Width` and `Height` include the border, which depends on the Windows version and theme settings.) The first row should be shifted to the right by half the window width, minus half the element width if we want to be precise.