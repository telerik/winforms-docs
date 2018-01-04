---
title: Using TxtFormatProvider
page_title: Using TxtFormatProvider | RadRichTextEditor
description: TxtFormatProvider makes it easy to import and export RadDocument to/from plain text format, preserving the document structure. 
slug: winforms/richtexteditor/import-export/plain-text/txtformatprovider
tags: import/export
published: True
position: 1
---

# Using TxtFormatProvider

__TxtFormatProvider__ makes it easy to import and export __RadDocument__ to/from plain text format, preserving the document structure. 

To use __TxtFormatProvider__, you should reference the **Telerik.WinControls.RichTextEditor.dll** and add the following namespace: 
	
* __Telerik.WinForms.Documents.FormatProviders.Txt__
        
## Import

In order to import a plain text document, you need to use the __Import()__ method of __TxtFormatProvider__. The first example shows how to use __TxtFormatProvider__ to import a document from a file.

#### Import Document from a File

{{source=..\SamplesCS\RichTextEditor\ImportExport\TxtFormatProviderForm.cs region=ImportDocumentFromFile}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\TxtFormatProviderForm.vb region=ImportDocumentFromFile}}
````C#
TxtFormatProvider provider = new TxtFormatProvider();
using (Stream input = File.OpenRead(@"..\..\RichTextEditor\ImportExport\Sample.txt"))
{
    this.radRichTextEditor1.Document = provider.Import(input);
}

````
````VB.NET
Dim provider As TxtFormatProvider = New TxtFormatProvider()
Using input As Stream = File.OpenRead("..\..\RichTextEditor\ImportExport\Sample.txt")
    Me.radRichTextEditor1.Document = provider.Import(input)
End Using

````



{{endregion}}

And here is how you can import a document from string:
        
#### Import Document from a String

{{source=..\SamplesCS\RichTextEditor\ImportExport\TxtFormatProviderForm.cs region=ImportDocumentFromString}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\TxtFormatProviderForm.vb region=ImportDocumentFromString}}
````C#
TxtFormatProvider provider = new TxtFormatProvider();
this.radRichTextEditor1.Document = provider.Import(input);

````
````VB.NET
Dim provider As TxtFormatProvider = New TxtFormatProvider()
Me.radRichTextEditor1.Document = provider.Import(input)

````



{{endregion}}

The resulting __RadDocument__ can be manipulated like any code-generated document.

## Export

In order to export a document to plain text, you need to use the __Export()__ method of __TxtFormatProvider__.
 
This example shows how to use __TxtFormatProvider__ to export __RadDocument__ to a file.

#### Export a Document to a File

{{source=..\SamplesCS\RichTextEditor\ImportExport\TxtFormatProviderForm.cs region=ExportDocumentToFile}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\TxtFormatProviderForm.vb region=ExportDocumentToFile}}
````C#
TxtFormatProvider provider = new TxtFormatProvider();
using (Stream output = File.OpenWrite("sample.txt"))
{
    RadDocument document = this.radRichTextEditor1.Document;
    provider.Export(document, output);
}

````
````VB.NET
Dim provider As TxtFormatProvider = New TxtFormatProvider()
Using output As Stream = File.OpenWrite("sample.txt")
    Dim document As RadDocument = Me.radRichTextEditor1.Document
    provider.Export(document, output)
End Using

````



{{endregion}}

You can also export the document to a string and preserve it in a database.

#### Export a Document to a String

{{source=..\SamplesCS\RichTextEditor\ImportExport\TxtFormatProviderForm.cs region=ExportDocumentToString}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\TxtFormatProviderForm.vb region=ExportDocumentToString}}
````C#
TxtFormatProvider provider = new TxtFormatProvider();
RadDocument document = this.radRichTextEditor1.Document;
string output = provider.Export(document);

````
````VB.NET
Dim provider As TxtFormatProvider = New TxtFormatProvider()
Dim document As RadDocument = Me.radRichTextEditor1.Document
Dim output As String = provider.Export(document)

````



{{endregion}}

## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})