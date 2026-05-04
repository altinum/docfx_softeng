## Step 1 — Install ClosedXML via NuGet

Open your project in Visual Studio, then open the **Package Manager Console** (`Tools → NuGet Package Manager → Package Manager Console`) and run:

```powershell
Install-Package ClosedXML
```

Or right-click your project in Solution Explorer → **Manage NuGet Packages** → search for `ClosedXML` and install it.

## Step 2 — Add the Using Directive

At the top of your C# file, add:

```csharp
using ClosedXML.Excel;
```

## Step 3 — Create a Workbook and Worksheet


```csharp
var workbook = new XLWorkbook();
var worksheet = workbook.Worksheets.Add("Sheet1");
```

## Step 4 — Write Data to Cells

```csharp
// Set headers
worksheet.Cell("A1").Value = "Name";
worksheet.Cell("B1").Value = "Age";
worksheet.Cell("C1").Value = "City";

// Set data rows
worksheet.Cell("A2").Value = "Alice";
worksheet.Cell("B2").Value = 30;
worksheet.Cell("C2").Value = "Budapest";

worksheet.Cell("A3").Value = "Bob";
worksheet.Cell("B3").Value = 25;
worksheet.Cell("C3").Value = "Vienna";
```

## Step 5 — Apply Basic Formatting (Optional)

```csharp
// Bold the header row
var headerRow = worksheet.Row(1);
headerRow.Style.Font.Bold = true;

// Auto-fit column widths
worksheet.Columns().AdjustToContents();
```
## Step 6 — Add a Formula (Optional)

```csharp
worksheet.Cell("B4").FormulaA1 = "=AVERAGE(B2:B3)";
```

## Step 7 — Save the File

```csharp
workbook.SaveAs(@"C:\Output\MyReport.xlsx");
```

Make sure the output directory exists, or use `Path.Combine` and `Directory.CreateDirectory` to handle it safely.

## Full Minimal Example


```csharp
using ClosedXML.Excel;

var workbook = new XLWorkbook();
var ws = workbook.Worksheets.Add("Report");

ws.Cell("A1").Value = "Name";
ws.Cell("B1").Value = "Score";
ws.Row(1).Style.Font.Bold = true;

ws.Cell("A2").Value = "Alice";
ws.Cell("B2").Value = 95;

ws.Cell("A3").Value = "Bob";
ws.Cell("B3").Value = 87;

ws.Cell("B4").FormulaA1 = "=AVERAGE(B2:B3)";
ws.Columns().AdjustToContents();

workbook.SaveAs(@"C:\Output\Report.xlsx");
Console.WriteLine("Excel file created successfully.");
```