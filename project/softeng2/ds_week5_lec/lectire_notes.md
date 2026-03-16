```cs
using var reader = new StreamReader("sample.csv");
 string? line;
 bool isFirstLine = true;

 while ((line = reader.ReadLine()) != null)
 {
     if (isFirstLine) { isFirstLine = false; continue; } // skip header
     if (string.IsNullOrWhiteSpace(line)) continue;

     var parts = line.Split(';');
     if (parts.Length < 5) continue;

     if (!int.TryParse(parts[0].Trim(), out int id)) continue;
     if (!int.TryParse(parts[2].Trim(), out int age)) continue;
     if (!double.TryParse(parts[3].Trim(),
             System.Globalization.NumberStyles.Any,
             System.Globalization.CultureInfo.InvariantCulture,
             out double salary)) continue;

     employees.Add(new Employee
     {
         ID = id,
         Name = parts[1].Trim(),
         Age = age,
         Salary = salary,
         Department = parts[4].Trim()
     });
 }


```





```cs
public class Employee
{
    public int ID { get; set; }
    public string Name { get; set; } = string.Empty;
    public int Age { get; set; }
    public double Salary { get; set; }
    public string Department { get; set; } = string.Empty;
}
```

