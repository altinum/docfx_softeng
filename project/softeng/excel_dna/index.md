# EXCEL-DNA

## Projekt létrehozása és Nu-Get

"Class Library" sablon alapján kell projektet létrehozni. 

Mehet .NET 8 is, a VSTO-val szemben az EXCEL-DNA kompatibilis a .NET Core-al. 

Telepítendő Nu-Get csomag:

```
ExcelDna.AddIn
```

A "Target OS" (Project Properties) legyen Windows, különben nem fordul. 



## Egyszerű custom függvény

```csharp
public class Class1
{
    [ExcelFunction(description:"Nagyot csinál a kicsiből")]
    public static string MyUpper(string lower) {  
        return lower.ToUpper(); 
    }
}
```



## Spill Array 

```c#
[ExcelFunction(description: "Példa Spill Array")]
public static object[,] MySpillArray()
{
    object[,] data = new object[2, 2]
    {
        { 1, "hello" },
        { 3.14, true }
    };

    return data;
}
```



## Adatbázis olvasása

```c#
[ExcelFunction(IsVolatile = false)]
public static object[,] GetProductData()
{
    using (var context = new SeBikestoreContext())
    {
        var products = context.Products.ToList();
        object[,] data = new object[products.Count, 3];

        for (int i = 0; i < products.Count; i++)
        {
            data[i, 0] = products[i].ProductSk;
            data[i, 1] = products[i].ProductName;
            data[i, 2] = products[i].ListPrice;
        }

        return data;
    }
}
```

## Adatbázis olvasása async

```c#
[ExcelFunction(IsVolatile = false)]
public static object[,] GetProductDataAsync()
{
    var functionName = nameof(GetProductDataAsync);
    var parameters = new object[] { };
    return (object[,]) ExcelAsyncUtil.RunTask(functionName, parameters, async () =>
    {


        using (var context = new SeBikestoreContext())
        {
            // Fetch products asynchronously
            var products = context.Products.ToList();

            // Prepare the 2D array for Excel
            object[,] data = new object[products.Count, 3];
            for (int i = 0; i < products.Count; i++)
            {
                data[i, 0] = products[i].ProductSk;
                data[i, 1] = products[i].ProductName;
                data[i, 2] = products[i].ListPrice;
            }

            return data;
        }
    });
}
```



## Saját Ribbon Bar

```c#
using ExcelDna.Integration;
using ExcelDna.Integration.CustomUI;
public class MyRibbon : ExcelRibbon
{
    public override string GetCustomUI(string ribbonId)
    {
        return @"
        <customUI xmlns='http://schemas.microsoft.com/office/2009/07/customui'>
          <ribbon>
            <tabs>
              <tab id='MyTab' label='My Add-In'>
                <group id='MyGroup' label='Actions'>
                  <button id='Btn1' label='Click Me' onAction='OnWriteCellClick'/>
                </group>
              </tab>
            </tabs>
          </ribbon>
        </customUI>";
    }

    public void OnWriteCellClick(IRibbonControl control)
    {
        System.Diagnostics.Debug.WriteLine("OnWriteCellClick triggered");
        System.Windows.Forms.MessageBox.Show("Button Clicked!");

        
    }
}
```



## Adatbázis olvasása Ribbon Bar-ból

```cs
try
{
    dynamic app = ExcelDnaUtil.Application;
    dynamic ws = app.ActiveSheet;


    ExcelAsyncUtil.QueueAsMacro(() =>
    {
        try
        {
            SeBikestoreContext context = new SeBikestoreContext();
            var products = context.Products.Take(5).ToList();

            object[,] data = new object[products.Count, 3];

            for (int i = 0; i < products.Count; i++)
            {
                data[i, 0] = (double)products[i].ProductSk;
                data[i, 1] = products[i].ProductName;
                data[i, 2] = (double)products[i].ListPrice;
            }
            ws.Range["A1"].Resize[data.GetLength(0), data.GetLength(1)].Value = data;
        }
        catch (Exception ex)
        {
            System.Windows.Forms.MessageBox.Show($"Error: {ex.Message}");
        }
    });


}
catch (Exception ex)
{
    System.Windows.Forms.MessageBox.Show($"Error: {ex.Message}", "Error", System.Windows.Forms.MessageBoxButtons.OK, System.Windows.Forms.MessageBoxIcon.Error);
}
```



A .csproj fájlhoz hozzá kell adni a `<UseWindowsForms>true</UseWindowsForms>` sort, ha WinForms-t is akarunk használni. Valahogy így néz majd ki:

``` xml
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <TargetFramework>net8.0-windows</TargetFramework>
	<UseWindowsForms>true</UseWindowsForms>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
  </PropertyGroup>
```

 



https://techcommunity.microsoft.com/blog/excelblog/advanced-formula-environment-is-becoming-excel-labs-a-microsoft-garage-project/3736518