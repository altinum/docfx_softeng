## Step-by-step guide for creating an Excel VSTO plugin in C# with Visual Studio

It is worth noting that Excel VSTO only works in a Windows environment and is built on the older .NET 4.8 framework. .NET 4.8 has not been discontinued by Microsoft, but it is no longer being actively developed. To this day, a large number of enterprise technologies are still built on version 4.8. For new projects, it is preferable to use the Excel-DNA library instead, though it lacks a visual Ribbon editor. A viable workaround is to create an Excel VSTO project, design the ribbon there, and then copy the resulting XML into the Excel-DNA project.

## 1. Install prerequisites one-time

In the Visual Studio Installer, enable the **Office/SharePoint Development** workload. This adds VSTO templates and required assemblies.

## 2. Create a new project

Go to **File → New → Project**. Search for _Excel_ and select **Excel VSTO Add-in** (C#). Name your project and click Create.

## 3. Explore the generated structure

Visual Studio generates `ThisAddIn.cs` as the entry point, with `ThisAddIn_Startup` and `ThisAddIn_Shutdown` event handlers.

``` csharp
// Example: write to the active cell on startup private void 
ThisAddIn_Startup(object sender, EventArgs e) 
{ 
		Excel.Worksheet sheet = (Excel.Worksheet)Application.ActiveSheet; 
		Excel.Range cell = sheet.Cells[1, 1]; 
		cell.Value2 = "Hello from VSTO!"; 
}
```

## 5. Add a Ribbon (optional)

Right-click the project → **Add → New Item → Ribbon (Visual Designer)**. Drag controls from the toolbox and wire up click events in the code-behind.

