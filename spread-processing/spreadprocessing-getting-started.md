---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: spreadprocessing-getting-started
tags: getting,started
published: True
position: 0
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

The document model allows you to instantiate a new [workbook]({%slug spreadprocessing-working-with-workbooks-what-is-workbook%}) and populate it with any data you want.
        

__Example 1__ shows how you can create a workbook and add a new worksheet to it.
        

#### __[C#] Example 1: Create Workbook__

{{source=..\SamplesCS\RadSpreadProcessing\RadSpreadProcessingGettingStarted.cs region=radspreadprocessing-getting-started_0}}
	            Workbook workbook = new Workbook();
	            Worksheet worksheet = workbook.Worksheets.Add();
	{{endregion}}



#### __[VB.NET] Example 1: Create Workbook__

{{source=..\SamplesVB\RadSpreadProcessing\RadSpreadProcessingGettingStarted.vb region=radspreadprocessing-getting-started_0}}
	        Dim workbook As New Workbook()
	        Dim worksheet As Worksheet = workbook.Worksheets.Add()
	        '#End Region
	
	        '#Region "radspreadprocessing-getting-started_1"
	        Dim selection As CellSelection = worksheet.Cells(1, 1) 'B2 cell
	        selection.SetValue("Hello RadSpreadProcessing")
	        '#End Region
	
	        '#Region "radspreadprocessing-getting-started_2"
	        Dim fileName As String = "Hello.xlsx"
	        Dim formatProvider As IWorkbookFormatProvider = New XlsxFormatProvider()
	
	        Using input As New FileStream(fileName, FileMode.Open)
	            workbook = formatProvider.Import(input)
	        End Using
	        '#End Region
	
	    End Sub
	End Class



You can then create a [CellSelection]({%slug spreadprocessing-working-with-cells-get-set-clear-properties%}) and set any value to the selected cells. __Example 2__ shows how you can create a cell and set a string value to it.
        

#### __[C#] Example 2: Set Value of Cell__

{{source=..\SamplesCS\RadSpreadProcessing\RadSpreadProcessingGettingStarted.cs region=radspreadprocessing-getting-started_1}}
	            CellSelection selection = worksheet.Cells[1, 1]; //B2 cell
	            selection.SetValue("Hello RadSpreadProcessing");
	{{endregion}}



#### __[VB.NET] Example 2: Set Value of Cell__

{{source=..\SamplesVB\RadSpreadProcessing\RadSpreadProcessingGettingStarted.vb region=radspreadprocessing-getting-started_1}}
	        Dim selection As CellSelection = worksheet.Cells(1, 1) 'B2 cell
	        selection.SetValue("Hello RadSpreadProcessing")
	        '#End Region
	
	        '#Region "radspreadprocessing-getting-started_2"
	        Dim fileName As String = "Hello.xlsx"
	        Dim formatProvider As IWorkbookFormatProvider = New XlsxFormatProvider()
	
	        Using input As New FileStream(fileName, FileMode.Open)
	            workbook = formatProvider.Import(input)
	        End Using
	        '#End Region
	
	    End Sub
	End Class



## Exporting

The __RadSpreadProcessing__ library supports a variety of formats to which you can export the contents of a workbook. __Example 3__ shows how you can export the previously created workbook to Xlsx format.
        

#### __[C#] Example 3: Export to Xlsx__

{{source=..\SamplesCS\RadSpreadProcessing\RadSpreadProcessingGettingStarted.cs region=radspreadprocessing-getting-started_2}}
	            string fileName = "Hello.xlsx";
	            IWorkbookFormatProvider formatProvider = new XlsxFormatProvider();
	
	            using (FileStream input = new FileStream(fileName, FileMode.Open))
	            {
	                workbook = formatProvider.Import(input);
	            }
	{{endregion}}



#### __[VB.NET] Example 3: Export to Xlsx__

{{source=..\SamplesVB\RadSpreadProcessing\RadSpreadProcessingGettingStarted.vb region=radspreadprocessing-getting-started_2}}
	        Dim fileName As String = "Hello.xlsx"
	        Dim formatProvider As IWorkbookFormatProvider = New XlsxFormatProvider()
	
	        Using input As New FileStream(fileName, FileMode.Open)
	            workbook = formatProvider.Import(input)
	        End Using
	        '#End Region
	
	    End Sub
	End Class



# See Also

 * [Whats is a Workbook?]({%slug spreadprocessing-working-with-workbooks-what-is-workbook%})

 * [What is a Worksheet?]({%slug spreadprocessing-working-with-worksheets-what-is-worksheet%})

 * [Get, Set and Clear Cell Properties]({%slug spreadprocessing-working-with-cells-get-set-clear-properties%})

 * [Xlsx]({%slug spreadprocessing-formats-and-conversion-xlsx%})
