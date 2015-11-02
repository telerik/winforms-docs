---
title: Using PdfFormatProvider
page_title: Using PdfFormatProvider | UI for WinForms Documentation
description: Using PdfFormatProvider
slug: winforms/pdfprocessing/formats-and-conversion/pdf/using-pdfformatprovider
tags: using,pdfformatprovider
published: True
position: 2
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
        #_[C#] Example 1: Import PDF File_

	



{{source=..\SamplesCS\PdfProcessing\Formats and Conversion\Pdf\PdfProcessingFormatsAndConversionPdfUsingPdfFormatProvider.cs region=radpdfprocessing-formats-and-conversion-pdf-pdfformatprovider_0}} 
{{source=..\SamplesVB\PdfProcessing\Formats and Conversion\Pdf\PdfProcessingFormatsAndConversionPdfUsingPdfFormatProvider.vb region=radpdfprocessing-formats-and-conversion-pdf-pdfformatprovider_0}} 

````C#
            PdfFormatProvider provider = new PdfFormatProvider();
            using (Stream input = File.OpenRead("Sample.pdf"))
            {
                RadFixedDocument document = provider.Import(input);
            }
````
````VB.NET
        Dim provider As PdfFormatProvider = New PdfFormatProvider()
        Using input As Stream = File.OpenRead("Sample.pdf")
            Dim document As RadFixedDocument = provider.Import(input)
        End Using
        '
````

{{endregion}} 




The result from the import method is a RadFixedDocument which can be used like any code-generated document.
        

>note Import support is limited to the features that are supported by the export so it is possible that you cannot import all of your custom PDF documents.
>


## Export

__Example 2__ shows how to use the __Export()__ method of PdfFormatProvider to export RadFixedDocument to a file.
        #_[C#] Example 2: Export PDF File_

	



{{source=..\SamplesCS\PdfProcessing\Formats and Conversion\Pdf\PdfProcessingFormatsAndConversionPdfUsingPdfFormatProvider.cs region=radpdfprocessing-formats-and-conversion-pdf-pdfformatprovider_1}} 
{{source=..\SamplesVB\PdfProcessing\Formats and Conversion\Pdf\PdfProcessingFormatsAndConversionPdfUsingPdfFormatProvider.vb region=radpdfprocessing-formats-and-conversion-pdf-pdfformatprovider_1}} 

````C#
            PdfFormatProvider provider = new PdfFormatProvider();
            using (Stream output = File.OpenWrite("sample.pdf"))
            {
                RadFixedDocument document = CreateRadFixedDocument();
                provider.Export(document, output);
            }
````
````VB.NET
        Dim provider As PdfFormatProvider = New PdfFormatProvider()
        Using output As Stream = File.OpenWrite("sample.pdf")
            Dim document As RadFixedDocument = CreateRadFixedDocument()
            provider.Export(document, output)
        End Using
        '
````

{{endregion}} 




The resulting document can be opened in any application which supports PDF documents.
        

# See Also

 * [Settings]({%slug winforms/pdfprocessing/formats-and-conversion/pdf/settings%})
