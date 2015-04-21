---
title: Using CsvFormatProvider
page_title: Using CsvFormatProvider
description: Using CsvFormatProvider
slug: spreadprocessing-formats-and-conversion-csv-csvformatprovider
tags: using,csvformatprovider
published: True
position: 0
---

# Using CsvFormatProvider



__CsvFormatProvider__ makes it easy to import and export CSV files. Note that CSV is a plain text format,meaning that it keeps only the
        contents of the worksheet without its formatting. Exporting a file to CSV strips all styling and saves only cell's result value with the respective format applied. Moreover, it exports only the contents of the active worksheet – no support for exporting multiple worksheets into a csv at once is available.
      

To import and export csv files, you need to use the __CsvFormatProvider__ class that appears in the 
        Telerik.Windows.Documents.Spreadsheet.FormatProviders.TextBased.Csv namespace. The __CsvFormatProvider__ implements 
        the __IWorkbookFormatProvider__ interface which in turn is contained in the Telerik.Windows.Documents.Spreadsheet.FormatProviders namespace.
      

## Import

__Example 1__ shows how to import a CSV file using a __FileStream__. The code assures that a file with the specified 
          name exists. Further, the sample instantiates a __CsvFormatProvider__ and passes a FileStream to its __Import()__ method.
        

#### __[C#] Example 1: Import CSV File__

{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\Csv\RadSpreadProcessingUsingCsvFormatProvider.cs region=radspreadprocessing-formats-and-conversion-csv-csvformatprovider_0}}
	                string fileName = "FileName.csv";
	                if (!File.Exists(fileName))
	                {
	                    throw new FileNotFoundException(String.Format("File {0} was not found!", fileName));
	                }
	
	                Workbook workbook;
	                IWorkbookFormatProvider formatProvider = new CsvFormatProvider();
	
	                using (FileStream input = new FileStream(fileName, FileMode.Open))
	                {
	                    workbook = formatProvider.Import(input);
	                }
	{{endregion}}



#### __[VB NET] Example 1: Import CSV File__

{{source=..\SamplesVB\RadSpreadProcessing\FormatsAndConversion\Csv\RadSpreadProcessingUsingCsvFormatProvider.vb region=radspreadprocessing-formats-and-conversion-csv-csvformatprovider_0}}
	            Dim fileName As String = "FileName.csv"
	            If Not File.Exists(fileName) Then
	                Throw New FileNotFoundException([String].Format("File {0} was not found!", fileName))
	            End If
	
	            Dim workbook As Workbook
	            Dim formatProvider As IWorkbookFormatProvider = New CsvFormatProvider()
	
	            Using input As New FileStream(fileName, FileMode.Open)
	                workbook = formatProvider.Import(input)
	            End Using
	{{endregion}}



## Export

__Example 2__ demonstrates how to export an existing Workbook to a CSV file. The snippet creates a new workbook with a single worksheet. 
          Further, it creates a __CsvFormatProvider__ and invokes its __Export()__ method:
        

#### __[C#] Example 1: Import CSV File__

{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\Csv\RadSpreadProcessingUsingCsvFormatProvider.cs region=radspreadprocessing-formats-and-conversion-csv-csvformatprovider_1}}
	                Workbook workbook = new Workbook();
	                workbook.Worksheets.Add();
	
	                string fileName = "SampleFile.csv";
	                IWorkbookFormatProvider formatProvider = new CsvFormatProvider();
	
	                using (FileStream output = new FileStream(fileName, FileMode.Create))
	                {
	                    formatProvider.Export(workbook, output);
	                }
	{{endregion}}



#### __[VB NET] Example 1: Import CSV File__

{{source=..\SamplesVB\RadSpreadProcessing\FormatsAndConversion\Csv\RadSpreadProcessingUsingCsvFormatProvider.vb region=radspreadprocessing-formats-and-conversion-csv-csvformatprovider_1}}
	            Dim workbook As New Workbook()
	            workbook.Worksheets.Add()
	
	            Dim fileName As String = "SampleFile.csv"
	            Dim formatProvider As IWorkbookFormatProvider = New CsvFormatProvider()
	
	            Using output As New FileStream(fileName, FileMode.Create)
	                formatProvider.Export(workbook, output)
	            End Using
	{{endregion}}


