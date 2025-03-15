

# # LINQ Examples

## Preparations

Let's create a class that holds key-value pairs and a `List` to store a list of key-value pairs. Later the list can be displayed in a `DataGridView`:

```c#
class KeyValuePair
{
    public string Key { get; set; }
    public string Value { get; set; }
}
```

```c#
BindigList<KeyValuePair> keyValuePairs = new BindigList<KeyValuePair>();
dataGridView3.DataSource = keyValuePairs;
```

## Filtering

The "traditional" approach to count certain items based on `foreach`:

```c#
var nuberOfFemales = 0;
foreach (var individual in individuals)
{
    if (individual.Sex==Sex.Female) nuberOfFemales++;
}
keyValuePairs.Add(new KeyValuePair { Key = "Number of females", Value = nuberOfFemales.ToString("N0") });
```

The same using LINQ:

```c#
var allTheMales = from x in individuals where x.Sex == Sex.Male select x;
var nuberOfMales = allTheMales.Count();
```

The whole tihing can be written into a single line:

```c#
var nuberOfMales1 = (from x in individuals where x.Sex == Sex.Male select x).Count();      
```

Or you can use an arrow function:

```c#
var nuberOfMales2 = individuals.Count(i => i.Sex== Sex.Male);
```

The result can be appended to the `keyValuePairs` list:

```c#
keyValuePairs.Add(new KeyValuePair { Key = "Number of males", Value = nuberOfMales1.ToString("N0") });
```

The next example counts the chidren:

```c#
var numberOfChildren = (from x in individuals where 2005 - x.YearOfBirth < 18 select x).Count();
keyValuePairs.Add(new KeyValuePair { Key = "All the children", Value = nuberOfFemales.ToString("N0") });
```

The total fertality rate can be calculated as well:

```c#
var tfr = (from x in individuals where x.NumberOfChildren > 0 select (double)x.NumberOfChildren).Average();
keyValuePairs.Add(new KeyValuePair { Key = "TFR", Value = tfr.ToString("N2") });
```



## Age distribution

In the next examle we simply group individuals by age and count the elements in each group:

```c#
var ageDistribution = 
    from x in individuals
    group x by 2005 - x.YearOfBirth into g
    select new { Age = g.Key, CountOfMales = g.Count() };
```

To give an other example let's avarage the nuber of children by age:

```c#
var nuberOfChildrwnByAge =
    from x in individuals
    group x by 2005 - x.YearOfBirth into g
    select new { Age = g.Key, CountOfMales = g.Average(t=>t.NumberOfChildren) };
```

Combined with a filter the age distribution of both sexes can be calculated:

```c#
var ageDistributionOfMales = 
    from x in individuals
    where x.Sex == Sex.Male
    group x by 2005 - x.YearOfBirth into g
    select new { Age = g.Key, CountOfMale = g.Count() };

var ageDistributionOfFemales =
    from x in individuals
    where x.Sex == Sex.Female
    group x by 2005 - x.YearOfBirth into g
    select new { Age = g.Key, CountOfFemales = g.Count() };
```

Next we want to create a list that holds the age and the number of males and females of the given age. To achieve this golal, let's create a list of the ages involved:

```c#
List<int> ages = new List<int>();
for (int i = 0; i < 110; i++)
{
    ages.Add(i);
}
```

Now let's group individuals by age:

```c#
var ageDistributionOfMales = 
    from x in individuals
    where x.Sex == Sex.Male
    group x by 2005 - x.YearOfBirth into g
    select new { Age = g.Key, CountOfMale = g.Count() };

var ageDistributionOfFemales =
    from x in individuals
    where x.Sex == Sex.Female
    group x by 2005 - x.YearOfBirth into g
    select new { Age = g.Key, CountOfFemales = g.Count() };
```

Now we can join the list holding the ages and the age distribution as follows:

```c#
var ageDistributionTotal =
    from f in ageDistributionOfFemales
    join a in ages
    on f.Age equals a

    select new
    {
        Age = a,
        Females = f.CountOfFemales,
    };
```

We can just as well join three lists in one step:
                

```c#
var ageDistributionTotal2 =
    from f in ageDistributionOfFemales
    join a in ages
    on f.Age equals a
    join m in ageDistributionOfMales
    on a equals m.Age
    select new
    {
        Age = a,
        Females = f.CountOfFemales,
        Males = m.CountOfMale
    };
```

Let's order the list by age and display the results:

```c#
var ageDistributionTotalOrdered = from x in ageDistributionTotal2 orderby x.Age select x;

dataGridView1.DataSource = ageDistributionTotalOrdered.ToList();
```





