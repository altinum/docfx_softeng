# Automate Excel using VSTO 

The primary purpose of VSTO-based Excel automation is to eliminate repetitive manual work and extend Excel beyond its built-in capabilities. Common use cases include automatically generating reports, importing and transforming data from external sources, enforcing business rules and data validation, etc. 

**VSTO solutions run inside the Excel process itself**, which makes them fast and deeply integrated — they feel like a natural part of the application rather than an external tool.



## Steps to automate Excel using VSTO 

#### Step 1 — Create the Project

In Visual Studio, create a new project.

#### Step 2 — Add the COM Reference

1. Right-click **Dependencies** in Solution Explorer → **Add COM Reference**.
2. Go to the **COM** tab and search for **"Microsoft Excel XX.0 Object Library"** (version depends on your Office installation).
3. Check it and click **OK**.

Visual Studio generates a Primary Interop Assembly (PIA) wrapper automatically.

#### Step 3 — Add the Using Directive

At the top of your file:

```csharp
using Excel = Microsoft.Office.Interop.Excel;
```

#### Step 4 — Open or Create a Workbook

The code sample below pops up a new instance of the Excel application, and creates a new workbook.

```csharp
var app = new Excel.Application();
app.Visible = true; // set false for headless automation

Excel.Workbook  wb = app.Workbooks.Add();          // new workbook
// or: wb = app.Workbooks.Open(@"C:\data.xlsx");   // existing file

Excel.Worksheet ws = (Excel.Worksheet)wb.Sheets[1];
```

#### Step 5 — Read and Write Cells

```csharp
// Write
ws.Cells[1, 1] = "Hello";          // row 1, col 1  (A1)
ws.Range["B2"].Value = 42;

// Read
string val = ws.Range["A1"].Value?.ToString();
```

#### Step 6 — Work with Ranges (Formatting, Formulas)

```csharp
Excel.Range header = ws.Range["A1:C1"];
header.Font.Bold = true;
header.Interior.Color = System.Drawing.ColorTranslator.ToOle(System.Drawing.Color.LightBlue);

ws.Range["D1"].Formula = "=SUM(A1:C1)";
```

#### Step 7 — Save and Close Cleanly

Always release COM objects explicitly to avoid Excel ghost processes:

csharp

```csharp
wb.SaveAs(@"C:\output.xlsx");
wb.Close(false);
app.Quit();

// Release COM objects
System.Runtime.InteropServices.Marshal.ReleaseComObject(ws);
System.Runtime.InteropServices.Marshal.ReleaseComObject(wb);
System.Runtime.InteropServices.Marshal.ReleaseComObject(app);

GC.Collect();
GC.WaitForPendingFinalizers();
```

