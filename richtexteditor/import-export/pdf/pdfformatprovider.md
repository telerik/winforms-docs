---
title: Using PdfFormatProvider
page_title: Using PdfFormatProvider | RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc. 
slug: winforms/richtexteditor/import-export/pdf/pdfformatprovider
tags: import/export
published: True
position: 2
---

# Using PdfFormatProvider

__PdfFormatProvider__ makes it easy to export __RadDocument__ to PDF format, preserving the entire document structure and formatting.
  
All you have to do in order to use __PdfFormatProvider__ is add references to the assemblies listed below:
 
* __Telerik.Windows.Documents.FormatProviders.Pdf.dll__
* __Telerik.Windows.Zip.dll__

## Export

In order to export a document to PDF you need to use the __Export()__ method of __PdfFormatProvider__.

The code snippet in __Example 1__ shows how to create a __PdfFormatProvider__ instance and use it to export the document to PDF.
        
>note The PdfFormatProvider class of RadRichTextBox is located in the **Telerik.Windows.Documents.FormatProviders.Pdf namespace**.

#### Export to Pdf File
{{source=..\SamplesCS\RichTextEditor\ImportExport\PdfFormatProviderForm.cs region=SetupPdfExportSettings}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\PdfFormatProviderForm.vb region=SetupPdfExportSettings}}
````C#
PdfExportSettings pdfExportSettings = new PdfExportSettings();
pdfExportSettings.ContentsDeflaterCompressionLevel = 9;
pdfExportSettings.DrawPageBodyBackground = false;
PdfFormatProvider pdfFormatProvider = new PdfFormatProvider();
pdfFormatProvider.ExportSettings = pdfExportSettings;

````
````VB.NET
Dim pdfExportSettings As PdfExportSettings = New PdfExportSettings()
pdfExportSettings.ContentsDeflaterCompressionLevel = 9
pdfExportSettings.DrawPageBodyBackground = False
Dim pdfFormatProvider As PdfFormatProvider = New PdfFormatProvider()
pdfFormatProvider.ExportSettings = pdfExportSettings

````

{{endregion}}

The result from the method is a document that can be opened in any application that supports PDF documents.

## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Settings]({%slug winforms/richtexteditor/import-export/pdf/settings%})