---
title: Using PdfFormatProvider
page_title: Using PdfFormatProvider - WinForms RichTextEditor Control
description: PdfFormatProvider makes it easy to export RadDocument to PDF format, preserving the entire document structure and formatting in WinForms RichTextEditor.
slug: winforms/richtexteditor/import-export/pdf/pdfformatprovider
tags: import/export
published: True
position: 2
---

# Using PdfFormatProvider

__PdfFormatProvider__ makes it easy to export __RadDocument__ to PDF format, preserving the entire document structure and formatting.
  
All you have to do in order to use __PdfFormatProvider__ is reference the **Telerik.WinControls.RichTextEditor.dll** assembly and add the following namespace:
 
* __Telerik.WinForms.Documents.FormatProviders.Pdf__

## Export

In order to export a document to PDF you need to use the __Export()__ method of __PdfFormatProvider__.

The code snippet in __Example 1__ shows how to create a __PdfFormatProvider__ instance and use it to export the document to PDF.

#### Export to Pdf File
{{source=..\SamplesCS\RichTextEditor\ImportExport\PdfFormatProviderForm.cs region=ExportPdfToFile}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\PdfFormatProviderForm.vb region=ExportPdfToFile}}
````C#
PdfFormatProvider provider = new PdfFormatProvider();
using (Stream output = File.OpenWrite("sample.pdf"))
{
    RadDocument document = this.radRichTextEditor1.Document;
    provider.Export(document, output);
}

````
````VB.NET
Dim provider As PdfFormatProvider = New PdfFormatProvider()
Using output As Stream = File.OpenWrite("Sample.pdf")
    Dim document As RadDocument = Me.radRichTextEditor1.Document
    provider.Export(document, output)
End Using

````

{{endregion}}

The result from the method is a document that can be opened in any application that supports PDF documents.

## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Settings]({%slug winforms/richtexteditor/import-export/pdf/settings%})