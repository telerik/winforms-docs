---
title: Using PdfFormatProvider
page_title: Using PdfFormatProvider | UI for WinForms Documentation
description: Using PdfFormatProvider
slug: winforms/wordsprocessing/formats-and-conversion/pdf/using-pdfformatprovider
tags: using,pdfformatprovider
published: True
position: 1
previous_url: wordsprocessing-formats-and-conversion-docx-using-pdfformatprovider
---

# Using PdfFormatProvider

__PdfFormatProvider__ makes it easy to import and export __RadFlowDocument__ to PDF format, preserving the entire document structure and formatting.
      

All you have to do in order to use __PdfFormatProvider__ is add references to the assemblies listed below:
      

* Telerik.Windows.Documents.Core.dll
          

* Telerik.Windows.Documents.Flow.dll
          

* Telerik.Windows.Zip.dll
          

* Telerik.Windows.Documents.Flow.FormatProviders.Pdf.dll
          

* Telerik.Windows.Documents.Fixed.dll
          

## Export

In order to export a document to PDF you need to use the __Export()__ method of __PdfFormatProvider__.
      

The code snippet in __Example 1__ shows how to create a __PdfFormatProvider__ instance and use it to export __RadFlowDocument__ to a file.

#### Example 1: Export to PDF File

The result from the method is a document that can be opened in any application that supports PDF documents.
     
#### Example 2: Export to RadFixedDocument

{{source=..\SamplesCS\WordsProcessing\FormatsAndConversion\Pdf\WordsProcessingUsingPdfFormatProvider.cs region=radwordsprocessing-formats-and-conversion-pdf-pdfformatprovider_0}} 
{{source=..\SamplesVB\WordsProcessing\FormatsAndConversion\Pdf\WordsProcessingUsingPdfFormatProvider.vb region=radwordsprocessing-formats-and-conversion-pdf-pdfformatprovider_0}} 

````C#
            
Telerik.Windows.Documents.Flow.FormatProviders.Pdf.PdfFormatProvider provider = new Telerik.Windows.Documents.Flow.FormatProviders.Pdf.PdfFormatProvider();
using (Stream output = File.OpenWrite("sample.pdf"))
{
    Telerik.Windows.Documents.Flow.Model.RadFlowDocument document = CreateRadFlowDocument();
    provider.Export(document, output);
}

````
````VB.NET
Dim provider As New Telerik.Windows.Documents.Flow.FormatProviders.Pdf.PdfFormatProvider()
Using output As Stream = File.OpenWrite("sample.pdf")
    Dim document As Telerik.Windows.Documents.Flow.Model.RadFlowDocument = CreateRadFlowDocument()
    provider.Export(document, output)
End Using

````

{{endregion}} 

>tip  __RadFixedDocument__ is the base class of the __RadPdfProcessing__ library.  Additional information on the library and its functionality can be found[here]({%slug winforms/pdfprocessing%})
>

# See Also

 * [Settings]({%slug winforms/pdfprocessing/formats-and-conversion/pdf/settings%})

 * [How to Comply with PDF/A Standard]({%slug winforms/pdfprocessing/how-to/how-to-comply-with-pdf/a-standard%})
