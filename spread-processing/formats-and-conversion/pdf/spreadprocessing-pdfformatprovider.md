---
title: Using PdfFormatProvider
page_title: Using PdfFormatProvider
description: Using PdfFormatProvider
slug: spreadprocessing-formats-and-conversion-pdf-pdfformatprovider
tags: using,pdfformatprovider
published: True
position: 1
---

# Using PdfFormatProvider



__PdfFormatProvider__ is part of SpreadProcessing which allows export to PDF format.
      

## Using PdfFormatProvider

__PdfFormatProvider__ makes it easy to export a Workbook to a PDF format. Each Worksheet exported to PDF is being divided 
          into pages according to its WorksheetPageSetup. More information about paging a Worksheet is available in the
          [Worksheet Page Setup]({%slug spreadprocessing-features-worksheetpagesetup%}) documentation article.
        

## Prerequisites

In order to use __PdfFormatProvider__ you need to add references to the assemblies listed below:
        

* Telerik.Windows.Documents.Spreadsheet.dll
            

* Telerik.Windows.Documents.Spreadsheet.FormatProviders.Pdf.dll
            

## Export

__Example 1__ shows how to use __PdfFormatProvider__ to export a Workbook to a file.
        

#### __[C#] Example 1: PdfFormatProvider Export Example__

{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\PDF\RadSpreadProcessingUsingPdfFormatProvider.cs region=radspreadprocessing-formats-and-conversion-pdf-pdfformatprovider_0}}
	                
	                PdfFormatProvider pdfFormatProvider = new PdfFormatProvider();
	                using (Stream output = GetFileStream())
	                {
	                    Workbook workbook = CreateSampleWorkbook();
	                    pdfFormatProvider.Export(workbook, output);
	                }
	            
	{{endregion}}



#### __[VB NET] Example 1: PdfFormatProvider Export Example__

{{source=..\SamplesVB\RadSpreadProcessing\FormatsAndConversion\PDF\RadSpreadProcessingUsingPdfFormatProvider.vb region=radspreadprocessing-formats-and-conversion-pdf-pdfformatprovider_0}}
	            Dim pdfFormatProvider As New PdfFormatProvider()
	            Using output As Stream = GetFileStream()
	                Dim workbook As Workbook = CreateSampleWorkbook()
	                pdfFormatProvider.Export(workbook, output)
	            End Using
	{{endregion}}



The result from the export method is a document that can be opened in any application that supports PDF documents.
        

#### __[C#] Example 2: Export to RadFixedDocument__

{{source=..\SamplesCS\RadSpreadProcessing\FormatsAndConversion\PDF\RadSpreadProcessingUsingPdfFormatProvider.cs region=example2}}
	                Workbook workbook = CreateSampleWorkbook();
	                
	                PdfFormatProvider provider = new PdfFormatProvider();
	                Telerik.Windows.Documents.Fixed.Model.RadFixedDocument fixedDocument = provider.ExportToFixedDocument(workbook);
	{{endregion}}



#### __[VB NET] Example 2: Export to RadFixedDocument__





>tip__RadFixedDocument__ is the base class of the __RadPdfProcessing__ library. Additional information on the library and its functionality can be found [here]({%slug pdfprocessing-overview%})
