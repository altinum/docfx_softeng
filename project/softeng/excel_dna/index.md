# EXCEL-DNA

A feladat egy Excel beépülő létrehozása, mely olyan custom függvényt tartalmat, amely egy tetszőlegesen választott adatbázistábla tartalmát adja vissza "spill array" formában. A "spill array" egy két dimenziós `object[,]`tömb, melynek elemei az adatbázis mezői. Az első index a sor, a második az oszlop. 



## Projekt létrehozása és Nu-Get

❶ "Class Library" sablon alapján kell projektet létrehozni. 

❷ Mehet .NET 8 is, a VSTO-val szemben az EXCEL-DNA kompatibilis a .NET Core-al. 

❸ Telepítendő Nu-Get csomag:

```
ExcelDna.AddIn
```

> [!WARNING]
>
> A kötőjeles `Excel-Dna.AddIn` depricated. Csodálatos névválasztás...

❹ A "Target OS" (Project Properties alatt kell beállítani) legyen Windows, különben nem fordul. 



## Egyszerű custom függvény

Kezdjük egy egyszerű példával!  A `Class1`-et kell bővíteni olyan függvénnyel, melynek van egy `[ExcelFunction]` attribútuma. A `description` opcionális.

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

Ez a példa már `object[,]` tömböt ad vissza. Majd ilyen formátumban kell az adatbázistáblát is visszaadni. 

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

## Véletlenekből álló custom függvény

Készíts véletlenekből álló spill array-t visszaadó függvényt. Legyen paraméter a tömb magassága, szélessége, és a legnagyobb generált szám! Használd az előző feladat mintakódját!

## Adatbázis olvasása

Csinálj custom Excel függvényt, ami egy adatbázistábát olvas be. 

```c#
[ExcelFunction(IsVolatile = false)]
public static object[,] GetProductData()
{
    using (var context = new SeBikestoreContext())
    {
        var products = context.Products.ToList();
        object[,] data = new object[products.Count, 3];

        //Járd be a products listát egy ciklussal, és állítsd be a tömb elemeit. 

        return data;
    }
}
```

## Adatbázis olvasása async

Ez csak egy példa, nem kell megycsinálni

```c#
[ExcelFunction(IsVolatile = false)]
public static object[,] GetProductDataAsync()
{
    var functionName = nameof(GetProductDataAsync);
    var parameters = new object[] { };
    return (object[,]) ExcelAsyncUtil.RunTask(functionName, parameters, async () =>
    {

        //Adatok beolvasása az adatbázisból
        
        return data;
    });
}
```



## Saját Ribbon Bar

Ez sem kell gyakorlaton, de azért leírjuk :) Saját ribbon bar-t i s lehet csinálni. 

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

A .csproj fájlhoz hozzá kell adni a `<UseWindowsForms>true</UseWindowsForms>` sort, ha WinForms-t is akarunk használni. Különben nem megy a  `MessageBox.Show()`- Valahogy így néz majd ki:

``` xml
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <TargetFramework>net8.0-windows</TargetFramework>
	<UseWindowsForms>true</UseWindowsForms>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
  </PropertyGroup>
```

 

## Advanced Formula Environment

[Innét tölthető le](https://techcommunity.microsoft.com/blog/excelblog/advanced-formula-environment-is-becoming-excel-labs-a-microsoft-garage-project/3736518) az a a Microsoft Garage Project, ami egy jól használható fügvényszerkesztővel bővíti az Excelt. 