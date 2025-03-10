# Code samples for the microsimulation

## Creating classes

### Enumeration for sex

```c#
public enum Sex { Male = 1, Female = 2 }
```

### Individual

```c#
class Individual
{
    public Sex Sex { get; set; }
    public int YearOfBirth { get; set; }
    public byte NumberOfChildren { get; set; }

    public bool IsAlive { get; set; } = true;
}
```

### Probability of death

```c#
class ProbabilityOfDeath
{
    public Sex Sex { get; set; }
    public byte Age { get; set; }
    public double PDeath { get; set; }
}
```

### Probability of birth

```c#
class ProbabilityOfBirth
{
    public byte Age { get; set; }
    public byte NumberOfChildren { get; set; }
    public double PGivingBirth { get; set; }
}
```

## Creating lists

```c#
List<Individual> individuals = new List<Individual>();
List<ProbabilityOfDeath> pDeaths = new List<ProbabilityOfDeath>();
List<ProbabilityOfBirth> pBirths = new List<ProbabilityOfBirth>();
```

## Loading data

### Individulas

```c#
StreamReader sr = new StreamReader(@"c:\temp\census.csv");
 while (!sr.EndOfStream)
 {
     string[] s = sr.ReadLine().Split(';');

     Individual sz = new Individual();
     sz.YearOfBirth = int.Parse(s[0]);
     sz.Sex = (Sex)int.Parse(s[1]);
     sz.NumberOfChildren = byte.Parse(s[2]);

     individuals.Add(sz);
 }
 sr.Close();
```

### Fertality rates

```c#
 StreamReader sr1 = new StreamReader(@"c:\temp\fertality.csv");
 sr1.ReadLine(); //Van fejléc-sor is
 while (!sr1.EndOfStream)
 {
     string[] s = sr1.ReadLine().Split(';');
     ProbabilityOfBirth szv = new ProbabilityOfBirth();
     szv.Age = byte.Parse(s[0]);
     szv.NumberOfChildren = byte.Parse(s[2]);
     szv.PGivingBirth = double.Parse(s[3]);
     pBirths.Add(szv);
 }
 sr1.Close();
```

### Mortality rates

 ```c#
 StreamReader sr2 = new StreamReader(@"c:\temp\mortality.csv", Encoding.Default);
 sr2.ReadLine();
 while (!sr2.EndOfStream)
 {
     string[] s = sr2.ReadLine().Split(';');
     ProbabilityOfDeath hv = new ProbabilityOfDeath();
     hv.Sex = (Sex)byte.Parse(s[0]);
     hv.Age = byte.Parse(s[1]);
     hv.PDeath = double.Parse(s[2],CultureInfo.GetCultureInfo("HU-hu"));
     pDeaths.Add(hv);
 }
 sr2.Close();
 ```



