---
title: Using RtfFormatProvider
page_title: Using RtfFormatProvider | RadRichTextEditor
description: RtfFormatProvider makes it easy to import and export RadDocument to/from RTF format, preserving the entire document structure and formatting.
slug: winforms/richtexteditor/import-export/rtf/rtfformatprovider
tags: import/export
published: True
position: 2
---

# Using RtfFormatProvider

__RtfFormatProvider__ makes it easy to import and export __RadDocument__ to/from RTF format, preserving the entire document structure and formatting.

To use __RtfFormatProvider__, you should reference the **Telerik.WinControls.RichTextEditor.dll** assembly and add the following namespace: 
      
* __Telerik.WinForms.Documents.FormatProviders.Rtf__
  
## Import

In order to import an RTF document, you need to use the __Import__ method of __RtfFormatProvider__.
    
The code from __Example 1__ shows how to use __RtfFormatProvider__ to import an RTF document from a file.
     
#### Import Document from a File

{{source=..\SamplesCS\RichTextEditor\ImportExport\RtfFormatProviderForm.cs region=ImportDocumentFromFile}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\RtfFormatProviderForm.vb region=ImportDocumentFromFile}}
````C#
RtfFormatProvider provider = new RtfFormatProvider();
using (Stream input = File.OpenRead(@"..\..\RichTextEditor\ImportExport\Sample.rtf"))
{
    this.radRichTextEditor1.Document = provider.Import(input);
}

````
````VB.NET
Dim provider As RtfFormatProvider = New RtfFormatProvider()
Using input As Stream = File.OpenRead("..\..\RichTextEditor\ImportExport\Sample.rtf")
    Me.radRichTextEditor1.Document = provider.Import(input)
End Using

````


{{endregion}}

And here is how you can import a document from string containing the RTF document:

#### Import Document from a String

{{source=..\SamplesCS\RichTextEditor\ImportExport\RtfFormatProviderForm.cs region=ImportDocumentFromString}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\RtfFormatProviderForm.vb region=ImportDocumentFromString}}
````C#
RtfFormatProvider provider = new RtfFormatProvider();
this.radRichTextEditor1.Document = provider.Import(input);

````
````VB.NET
Dim provider As RtfFormatProvider = New RtfFormatProvider()
Me.radRichTextEditor1.Document = provider.Import(input)

````


    
{{endregion}}

The resulting __RadDocument__ can be used like any code-generated document.
 
## Export

In order to export a document to RTF, you need to use the __Export__ method of __RtfFormatProvider__.
        
The example below shows how to use __RtfFormatProvider__ to export __RadDocument__ to a file.

#### Export a Document to a File

{{source=..\SamplesCS\RichTextEditor\ImportExport\RtfFormatProviderForm.cs region=ExportDocumentToFile}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\RtfFormatProviderForm.vb region=ExportDocumentToFile}}
````C#
RtfFormatProvider provider = new RtfFormatProvider();
using (Stream output = File.Create("Sample.rtf"))
{
    RadDocument document = this.radRichTextEditor1.Document;
    provider.Export(document, output);
}

````
````VB.NET
Dim provider As RtfFormatProvider = New RtfFormatProvider()
Using output As Stream = File.OpenWrite("Sample.rtf")
    Dim document As RadDocument = Me.radRichTextEditor1.Document
    provider.Export(document, output)
End Using

````




{{endregion}}

You can also export the document to a string and preserve it in a database.

#### Export a Document to a String

{{source=..\SamplesCS\RichTextEditor\ImportExport\RtfFormatProviderForm.cs region=ExportDocumentToString}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\RtfFormatProviderForm.vb region=ExportDocumentToString}}
````C#
RtfFormatProvider provider = new RtfFormatProvider();
RadDocument document = this.radRichTextEditor1.Document;
string output = provider.Export(document);

````
````VB.NET
Dim provider As RtfFormatProvider = New RtfFormatProvider()
Dim document As RadDocument = Me.radRichTextEditor1.Document
Dim output As String = provider.Export(document)

````

    
{{endregion}}

The resulting documents can be opened in any application that supports RTF documents.

## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Settings]({%slug winforms/richtexteditor/import-export/rtf/settings%})