---
title: Using TextFormatProvider
page_title: Using TextFormatProvider | UI for WinForms Documentation
description: Using TextFormatProvider
slug: winforms/pdfprocessing/formats-and-conversion/plain-text
tags: using,textformatprovider
published: True
position: 1
previous_url: pdfprocessing-formats-and-conversion-plain-text-using-textformatprovider
---

# Using TextFormatProvider

__TextFormatProvider__ makes it easy to export __RadFixedDocument__ to plain text format, preserving the document structure.

All you have to do in order to use __TextFormatProvider__ is add references to the assemblies listed below:

* Telerik.Windows.Documents.Core.dll

* Telerik.Windows.Documents.Fixed.dll


## Export

In order to export a document to plain text you need to use the __Export()__ method of __TextFormatProvider__.
    
#### Example 1: Export RadFixedDocument to string

{{source=..\SamplesCS\PdfProcessing\Formats and Conversion\Plain Text\PdfProcessingFormatsAndConversionPlainTextUsingTextFormatProvider.cs region=UsingTextFormatProvider}} 
{{source=..\SamplesVB\PdfProcessing\Formats and Conversion\Plain Text\PdfProcessingFormatsAndConversionPlainTextUsingTextFormatProvider.vb region=UsingTextFormatProvider}}

````C#
TextFormatProvider provider = new TextFormatProvider();
RadFixedDocument document = CreateRadFixedDocument();
string documentContent = provider.Export(document);

````
````VB.NET
Dim provider As New TextFormatProvider()
Dim document As RadFixedDocument = CreateRadFixedDocument()
Dim documentContent As String = provider.Export(document)

````

{{endregion}}

# See Also

* [Plain Text]({%slug winforms/pdfprocessing/formats-and-conversion/plain-text%})

* [Settings]({%slug winforms/pdfprocessing/formats-and-conversion/plain-text-settings%})
