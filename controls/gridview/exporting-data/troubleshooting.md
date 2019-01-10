---
title: Troubleshooting
page_title: Troubleshooting | RadGridView
description: This article lists common issues with the export process and provides solutions.
slug: winforms/gridview/exporting-data/troubleshooting
tags: troubleshooting
published: True
position: 7
previous_url: gridview-exporting-data-export-to-troubleshooting
---

# Troubleshooting

## Exported file is corrupt and will not open in Excel 2003 or Excel 2007

Check for invalid DateTime values, such as "0001-01-01T00:00:00.000". MS Excel does not support DateTime values before "1900-01-01". UPDATE: Since R1 2010 the __ExportToExcelML__ method validates the date values and throws a FormatException with message: "The DateTime value is not supported in Excel!".

## RadGridView cannot export images

Images cannot be exported to MS Excel, because Excel does not support embedded images in cells. In addition, the [ExportToExcelML]({%slug winforms/gridview/exporting-data/export-to-excel-via-excelml-format%}) method uses a special XML format which cannot include images by specification.

## Exporting data programmatically creates a blank Excel document

Since __ExportToExcelML iterates__ through the grid elements, it does not export anything if the grid has not created its child elements yet (i.e. if there is a grid instance but it is not shown on a form). The solution is to use the __LoadElementTree__ method before running the export: 

{{source=..\SamplesCS\GridView\ExportingData\Troubleshooting.cs region=inCaseOfBlankExcelDocument}} 
{{source=..\SamplesVB\GridView\ExportingData\Troubleshooting.vb region=inCaseOfBlankExcelDocument}} 

````C#
this.radGridView1.LoadElementTree();

````
````VB.NET
Me.RadGridView1.LoadElementTree()

````

{{endregion}} 


## MS Excel does not open the file directly after exporting the data from RadGridView (it prompts to save the file instead)

The ExportToExcelML class does not support opening the excel file directly. However, you can easily implement similar functionality through the __Process.Start__ method:

{{source=..\SamplesCS\GridView\ExportingData\Troubleshooting.cs region=openTheFileAfterExport}} 
{{source=..\SamplesVB\GridView\ExportingData\Troubleshooting.vb region=openTheFileAfterExport}} 

````C#
ExportToExcelML exporter = new ExportToExcelML(this.radGridView1);
exporter.RunExport(@"C:\Test.xls");
System.Diagnostics.Process.Start(@"C:\Test.xls");

````
````VB.NET
Dim exporter As ExportToExcelML = New ExportToExcelML(Me.RadGridView1)
exporter.RunExport("C:\Test.xls")
System.Diagnostics.Process.Start("C:\Test.xls")

````

{{endregion}} 

## Wrong text alignment for rows with conditional formatting

__ExportToExcelML__ does not support all text alignment settings for the conditional formatting; because of this ExportToExcelML takes and applies current conditional formatting alignments, but RadGridView skips the default values. This will be improved in future versions of RadGridView, but there is a workaround we can suggest, so feel free to open a [support ticket](http://www.telerik.com/account/support-tickets.aspx) to request it.
# See Also
* [Export Data in a Group to Excel]({%slug winforms/gridview/exporting-data/export-data-in-a-group-to-excel%})

* [Export to CSV]({%slug winforms/gridview/exporting-data/export-to-csv%})

* [Export to Excel via ExcelML Format]({%slug winforms/gridview/exporting-data/export-to-excel-via-excelml-format%})

* [Export to PDF]({%slug winforms/gridview/exporting-data/export-to-pdf%})

* [Export to HTML]({%slug winforms/gridview/exporting-data/export-to-html%})

* [Overview]({%slug winforms/gridview/exporting-data/overview%})

* [Export to Excel]({%slug winforms/gridview/exporting-data/spread-export%})

