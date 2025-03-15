# Microsimulation 

⓿ From last week wa have lists holdnig the initial data:

```csharp
public partial class Form1 : Form
{
    List<Individual> individuals = new List<Individual>();
    List<ProbabilityOfDeath> pDeaths = new List<ProbabilityOfDeath>();
    List<ProbabilityOfBirth> pBirths = new List<ProbabilityOfBirth>();

    public Form1()
    {
        InitializeComponent();
    }
   ...


```

## Buliding the simulation

❶ Let's create two loops:

1) We iterate from year 2005 to 2025
2) We decide on the fate of each individual one by one

[!code-csharp[](msim_0.cs)]

❷ Let's retrieve the `Individaul` from the list:

[!code-csharp[](msim_1.cs?highlight=12)]

❸ If the individual is dead already, we skip to the next iteration step

[!code-csharp[](msim_2.cs?highlight=14)]

❹ Let's calculate the individuals's age:

[!code-csharp[](msim_3.cs?highlight=16)]

❺ We can use LINQ to get the probability of death:

[!code-csharp[](msim_4.cs?highlight=18-22)]

❻ Now we can decide wether the individual in the simulation dies or not. 

> [!NOTE]
> You can append a list during the iteration but deleting items from it breaks the iteration since elemnts shift. That's why the `IsAlive` property of
> the `Individual` class was introcuced. 

[!code-csharp[](msim_5.cs?highlight=23)]

❼ Now let's handle birth! Only women can give birth:

[!code-csharp[](msim_6.cs?highlight=26-29)]

❽ Here is the logic that handles birth:

[!code-csharp[](msim_7.cs?highlight=29-41)]

## Improving performance

[!code-csharp[](p_msim.cs?highlight=10-11,14,43)]



