---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/spreadprocessing/getting-started
tags: getting,started
published: True
position: 1
previous_url: spreadprocessing-getting-started
---

# Getting Started



This article will get you started in using the __RadSpreadProcessing__ library. It contains the following sections:
      

* [Assembly References](#assembly-references)

* [Creating a Workbook](#creating-a-workbook)

* [Exporting](#exporting)

* [Using RadSpreadsheet](#Using_RadSpreadsheet)

## Assembly References

In order to use the model of the __RadSpreadProcessing__ library in your project you need to add references to the following assemblies:
        

* Telerik.Windows.Documents.Core.dll
            

* Telerik.Windows.Documents.Spreadsheet.dll
            

* Telerik.Windows.Maths.dll
            

The following assemblies are required in order to be able to export to Xlsx and PDF formats:
        

* Telerik.Windows.Documents.Spreadsheet.FormatProviders.OpenXml.dll
            

* Telerik.Windows.Documents.Fixed.dll 
            

* Telerik.Windows.Documents.Spreadsheet.FormatProviders.Pdf.dll
            

* Telerik.Windows.Zip.dll
            

The following .NET assemblies are required as well"

* PresentationCore
          

* WindowsBase
          

* PresentationFramework
            

## Creating a Workbook

The document model allows you to instantiate a new [workbook]({%slug winforms/spreadprocessing/working-with-workbooks/whats-is-a-workbook?%}) and populate it with any data you want.
        

__Example 1__ shows how you can create a workbook and add a new worksheet to it.

#### Example 1: Create Workbook

{{source=..\SamplesCS\RadSpreadProcessing\RadSpreadProcessingGettingStarted.cs region=radspreadprocessing-getting-started_0}} 
{{source=..\SamplesVB\RadSpreadProcessing\RadSpreadProcessingGettingStarted.vb region=radspreadprocessing-getting-started_0}} 

````C#
Workbook workbook = new Workbook();
Worksheet worksheet = workbook.Worksheets.Add();

````
````VB.NET
Dim workbook As New Workbook()
Dim worksheet As Worksheet = workbook.Worksheets.Add()

````

{{endregion}} 

You can then create a [CellSelection]({%slug winforms/spreadprocessing/working-with-cells/get-set-and-clear-cell-properties%}) and set any value to the selected cells. __Example 2__ shows how you can create a cell and set a string value to it.

#### Example 2: Set Value of Cell

{{source=..\SamplesCS\RadSpreadProcessing\RadSpreadProcessingGettingStarted.cs region=radspreadprocessing-getting-started_1}} 
{{source=..\SamplesVB\RadSpreadProcessing\RadSpreadProcessingGettingStarted.vb region=radspreadprocessing-getting-started_1}} 

````C#
CellSelection selection = worksheet.Cells[1, 1]; //B2 cell
selection.SetValue("Hello RadSpreadProcessing");

````
````VB.NET
Dim selection As CellSelection = worksheet.Cells(1, 1) 'B2 cell
selection.SetValue("Hello RadSpreadProcessing")

````

{{endregion}} 

## Exporting

The __RadSpreadProcessing__ library supports a variety of formats to which you can export the contents of a workbook. __Example 3__ shows how you can export the previously created workbook to Xlsx format.


#### Example 3: Export to Xlsx

{{source=..\SamplesCS\RadSpreadProcessing\RadSpreadProcessingGettingStarted.cs region=radspreadprocessing-getting-started_2}} 
{{source=..\SamplesVB\RadSpreadProcessing\RadSpreadProcessingGettingStarted.vb region=radspreadprocessing-getting-started_2}} 

````C#
string fileName = "SampleFile.xlsx";
IWorkbookFormatProvider formatProvider = new XlsxFormatProvider();
using (FileStream output = new FileStream(fileName, FileMode.Create))
{
    formatProvider.Export(workbook, output);
}

````
````VB.NET
Dim fileName As String = "SampleFile.xlsx"
Dim formatProvider As IWorkbookFormatProvider = New XlsxFormatProvider()
Using output As New FileStream(fileName, FileMode.Create)
    formatProvider.Export(workbook, output)
End Using

````

{{endregion}} 

# See Also

 * [Whats is a Workbook?]({%slug winforms/spreadprocessing/working-with-workbooks/whats-is-a-workbook?%})

 * [What is a Worksheet?]({%slug winforms/spreadprocessing/working-with-worksheets/what-is-a-worksheet?%})

 * [Get, Set and Clear Cell Properties]({%slug winforms/spreadprocessing/working-with-cells/get-set-and-clear-cell-properties%})

 * [Xlsx]({%slug winforms/spreadprocessing/formats-and-conversion/xlsx%})
