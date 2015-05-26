---
title: Using XlsxFormatProvider
page_title: Using XlsxFormatProvider | UI for WinForms Documentation
description: Using XlsxFormatProvider
slug: winforms/spread-processing/formats-and-conversion/xlsx/using-xlsxformatprovider
tags: using,xlsxformatprovider
published: True
position: 1
---

# Using XlsxFormatProvider



__XlsxFormatProvider__ makes it easy to import and export xlsx files. An xlsx file is a group of zipped files that conform to the Office Open XML schema. That said, the format allows you export all parts of a workbook: worksheets, formula values, formatting, hyperlinks, etc.
      

>note Unlike the csv and txt format providers, the __XlsxFormatProvider__ requires references to the following assemblies:
>
* Telerik.Windows.Documents.Spreadsheet.FormatProviders.OpenXml.dll
* Telerik.Windows.Zip.dll>


Once you reference the aforementioned assemblies, you need to create an instance of the __XlsxFormatProvider__ in order to import and export xlsx files. This provider appears in the Telerik.Windows.Documents.Spreadsheet.FormatProviders.OpenXml.Xlsx namespace. __XlsxFormatProvider__ implements the __IWorkbookFormatProvider__ interface, which in turn appears in the Telerik.Windows.Documents.Spreadsheet.FormatProviders. Depending on the whether you would like to work with the concrete class or the interface, you would need to include either the first or both namespaces.
      

## Import

__Example 1__ shows how to import an xlsx file using a FileStream. The code assures that a file with the specified name exists. Further, the sample
          instantiates an __XlsxFormatProvider__ and passes a FileStream to its __Import()__ method:
        #_[C#] Example 1: Import Xlsx File_

	



````VB NET
	        Dim fileName As String = "SampleFile.xlsx"
	        If Not File.Exists(fileName) Then
	            Throw New FileNotFoundException([String].Format("File {0} was not found!", fileName))
	        End If
	
	        Dim workbook As Workbook
	        Dim formatProvider As IWorkbookFormatProvider = New XlsxFormatProvider()
	
	        Using input As New FileStream(fileName, FileMode.Open)
	            workbook = formatProvider.Import(input)
	        End Using
````



## Export

__Example 2__ demonstrates how to export an existing Workbook to an xlsx file. The snippet creates a new workbook with a single worksheet. Further, the example creates an __XlsxFormatProvider__ and invokes its __Export()__ method:
        #_[C#] Example 2: Export Xlsx File_

	



````VB NET
	        Dim workbook As New Workbook()
	        workbook.Worksheets.Add()
	        Dim fileName As String = "SampleFile.xlsx"
	
	        Dim formatProvider As IWorkbookFormatProvider = New XlsxFormatProvider()
	
	        Using output As New FileStream(fileName, FileMode.Create)
	            formatProvider.Export(workbook, output)
	        End Using
````


