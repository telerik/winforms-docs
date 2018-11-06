---
title: Using DocxFormatProvider
page_title: Using DocxFormatProvider | RadRichTextEditor
description: DocxFormatProvider makes it easy to import and export RadRichTextEditor to/from DOCX format, preserving the entire document structure and formatting.
slug: winforms/richtexteditor/import-export/docx/docxformatprovider
tags: import/export
published: True
position: 2
---

# Using DocxFormatProvider

__DocxFormatProvider__ makes it easy to import and export **RadRichTextEditor** to/from DOCX format, preserving the entire document structure and formatting.

All you have to do in order to use DocxFormatProvider is to reference the **Telerik.WinControls.RichTextEditor.dll** assembly and add the following namespace:

* __Telerik.Windows.Documents.FormatProviders.OpenXml__

## Import
In order to import a __.docx__ file, you need to use the Import() method of DocxFormatProvider. The code example shows how to use __DocxFormatProvider__ to import a Docx document from a file.

#### Import Document from a File
{{source=..\SamplesCS\RichTextEditor\ImportExport\DocxFormatProviderForm.cs region=ImportDocumentFromFile}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\DocxFormatProviderForm.vb region=ImportDocumentFromFile}}
````C#
DocxFormatProvider provider = new DocxFormatProvider();
using (FileStream inputStream = File.OpenRead(@"..\..\RichTextEditor\ImportExport\Sample.docx"))
{
    this.radRichTextEditor1.Document = provider.Import(inputStream);
}

````
````VB.NET
Dim provider As DocxFormatProvider = New DocxFormatProvider()
Using inputStream As FileStream = File.OpenRead("..\..\RichTextEditor\ImportExport\Sample.docx")
    Me.radRichTextEditor1.Document = provider.Import(inputStream)
End Using

```` 



{{endregion}}

And here is how you can import a document from byte array containing the Docx document:
        
#### Import Document from a Byte Array
{{source=..\SamplesCS\RichTextEditor\ImportExport\DocxFormatProviderForm.cs region=ImportDocumentFromByteArray}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\DocxFormatProviderForm.vb region=ImportDocumentFromByteArray}}
````C#
DocxFormatProvider provider = new DocxFormatProvider();
byte[] input = File.ReadAllBytes(@"..\..\RichTextEditor\ImportExport\Sample.docx");
this.radRichTextEditor1.Document = provider.Import(input);

````
````VB.NET
Dim provider As DocxFormatProvider = New DocxFormatProvider()
Dim input As Byte() = File.ReadAllBytes("..\..\RichTextEditor\ImportExport\Sample.docx")
Me.radRichTextEditor1.Document = provider.Import(input)

```` 



{{endregion}}

## Export
In order to export a document to DOCX, you need to use the Export() method of DocxFormatProvider. The example shows how to use __DocxFormatProvider__ to export __RadDocument__ to a file.

#### Export Document to a File

{{source=..\SamplesCS\RichTextEditor\ImportExport\DocxFormatProviderForm.cs region=ExportDocumentToFile}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\DocxFormatProviderForm.vb region=ExportDocumentToFile}}
````C#
DocxFormatProvider provider = new DocxFormatProvider();
using (FileStream output = File.OpenWrite("Sample.docx"))
{
    RadDocument document = this.radRichTextEditor1.Document;
    provider.Export(document, output);
}

````
````VB.NET
Dim provider As DocxFormatProvider = New DocxFormatProvider()
Using output As FileStream = File.OpenWrite("Sample.docx")
    Dim document As RadDocument = Me.radRichTextEditor1.Document
    provider.Export(document, output)
End Using

```` 



{{endregion}}

You can also export the document to a byte array and preserve it in a database.

#### Export Document to a Byte Array

{{source=..\SamplesCS\RichTextEditor\ImportExport\DocxFormatProviderForm.cs region=ExportDocumentToByteArray}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\DocxFormatProviderForm.vb region=ExportDocumentToByteArray}}
````C#
DocxFormatProvider provider = new DocxFormatProvider();
RadDocument document = this.radRichTextEditor1.Document;
byte[] output = provider.Export(document);

````
````VB.NET
Dim provider As DocxFormatProvider = New DocxFormatProvider()
Dim document As RadDocument = Me.radRichTextEditor1.Document
Dim output As Byte() = provider.Export(document)

```` 



{{endregion}}

The resulting documents can be opened in any application that supports DOCX documents.

## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Settings]({%slug winforms/richtexteditor/import-export/docx/settings%})