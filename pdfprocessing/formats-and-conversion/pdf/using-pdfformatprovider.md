---
title: Using PdfFormatProvider
page_title: Using PdfFormatProvider
description: Using PdfFormatProvider
slug: pdfprocessing-formats-and-conversion-pdf-using-pdfformatprovider
tags: using,pdfformatprovider
published: True
position: 1
---

# Using PdfFormatProvider



__PdfFormatProvider__ makes it easy to import and export a RadFixedDocument from/to PDF format, preserving the entire document structure and formatting.
      

In order to use the format provider you need to add references to the following assemblies:

* Telerik.Documens.Core.dll
          

* Telerik.Documents.Fixed.dll
          

* Telerik.Windows.Zip.dll
          

## Import

To import a PDF document you need to use the __Import()__ method of __PdfFormatprovider__.
        

__Example 1__ shows how to use PdfFormatProvider to import a PDF document form a file.
        

#### __[C#] Example 1: Import PDF File__

{{source=..\SamplesCS\PdfProcessing\Formats and Conversion\Pdf\PdfProcessingFormatsAndConversionPdfUsingPdfFormatProvider.cs region=radpdfprocessing-formats-and-conversion-pdf-pdfformatprovider_0}}
	            PdfFormatProvider provider = new PdfFormatProvider();
	            using (Stream input = File.OpenRead("Sample.pdf"))
	            {
	                RadFixedDocument document = provider.Import(input);
	            }
	{{endregion}}



#### __[VB.NET] Example 1: Import PDF File__

{{source=..\SamplesVB\PdfProcessing\Formats and Conversion\Pdf\PdfProcessingFormatsAndConversionPdfUsingPdfFormatProvider.vb region=radpdfprocessing-formats-and-conversion-pdf-pdfformatprovider_0}}
	        Dim provider As PdfFormatProvider = New PdfFormatProvider()
	        Using input As Stream = File.OpenRead("Sample.pdf")
	            Dim document As RadFixedDocument = provider.Import(input)
	        End Using
	        '	 #End Region
	    End Sub
	
	    Private Sub Export()
	        '	 #Region "radpdfprocessing-formats-and-conversion-pdf-pdfformatprovider_1"
	        Dim provider As PdfFormatProvider = New PdfFormatProvider()
	        Using output As Stream = File.OpenWrite("sample.pdf")
	            Dim document As RadFixedDocument = CreateRadFixedDocument()
	            provider.Export(document, output)
	        End Using
	        '	 #End Region
	    End Sub
	
	    Private Function CreateRadFixedDocument() As RadFixedDocument
	        Throw New NotImplementedException()
	    End Function
	
	End Class



The result from the import method is a RadFixedDocument which can be used like any code-generated document.
        

>Import support is limited to the features that are supported by the export so it is possible that you cannot import all of your custom PDF documents.
          

## Export

__Example 2__ shows how to use the __Export()__ method of PdfFormatProvider to export RadFixedDocument to a file.
        

#### __[C#] Example 2: Export PDF File__

{{source=..\SamplesCS\PdfProcessing\Formats and Conversion\Pdf\PdfProcessingFormatsAndConversionPdfUsingPdfFormatProvider.cs region=radpdfprocessing-formats-and-conversion-pdf-pdfformatprovider_1}}
	            PdfFormatProvider provider = new PdfFormatProvider();
	            using (Stream output = File.OpenWrite("sample.pdf"))
	            {
	                RadFixedDocument document = CreateRadFixedDocument();
	                provider.Export(document, output);
	            }
	{{endregion}}



#### __[VB.NET] Example 2: Export PDF File__

{{source=..\SamplesVB\PdfProcessing\Formats and Conversion\Pdf\PdfProcessingFormatsAndConversionPdfUsingPdfFormatProvider.vb region=radpdfprocessing-formats-and-conversion-pdf-pdfformatprovider_1}}
	        Dim provider As PdfFormatProvider = New PdfFormatProvider()
	        Using output As Stream = File.OpenWrite("sample.pdf")
	            Dim document As RadFixedDocument = CreateRadFixedDocument()
	            provider.Export(document, output)
	        End Using
	        '	 #End Region
	    End Sub
	
	    Private Function CreateRadFixedDocument() As RadFixedDocument
	        Throw New NotImplementedException()
	    End Function
	
	End Class



The resulting document can be opened in any application which supports PDF documents.
        

# See Also

 * [Settings]({%slug pdfprocessing-formats-and-conversion-pdf-settings%})
