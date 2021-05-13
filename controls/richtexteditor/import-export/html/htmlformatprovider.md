---
title: Using HtmlFormatProvider
page_title: Using HtmlFormatProvider - WinForms RichTextEditor Control
description: HtmlFormatProvider makes it easy to import and export RadDocument to/from HTML format, preserving as much as possible of the document structure and formatting in WinForms RichTextEditor.
slug: winforms/richtexteditor/import-export/html/htmlformatprovider
tags: import/export
published: True
position: 2
---

# Using HtmlFormatProvider

__HtmlFormatProvider__ makes it easy to import and export __RadDocument__ to/from HTML format, preserving as much as possible of the document structure and formatting.

To use __HtmlFormatProvider__, you should reference the **Telerik.WinControls.RichTextEditor.dll** assembly and add the following namespace: 
      
* __Telerik.WinForms.Documents.FormatProviders.Html__

## Import

In order to import an HTML document you can use the overloads of the __HtmlFormatProvider.Import()__ method.

The first example shows how to use **HtmlFormatProvider** to import an HTML document from a file.

#### Import Html File

{{source=..\SamplesCS\RichTextEditor\ImportExport\HtmlFormatProviderForm.cs region=ImportDocumentFromFile}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\HtmlFormatProviderForm.vb region=ImportDocumentFromFile}}
````C#
HtmlFormatProvider provider = new HtmlFormatProvider();
using (FileStream inputStream = File.OpenRead(@"..\..\RichTextEditor\ImportExport\Sample.html"))
{
    this.radRichTextEditor1.Document = provider.Import(inputStream);
}

````
````VB.NET
Dim provider As HtmlFormatProvider = New HtmlFormatProvider()
Using inputStream As FileStream = File.OpenRead("..\..\RichTextEditor\ImportExport\Sample.html")
    Me.radRichTextEditor1.Document = provider.Import(inputStream)
End Using

````



{{endregion}}

This example shows how you can import an HTML string.
 
#### Import Html String

{{source=..\SamplesCS\RichTextEditor\ImportExport\HtmlFormatProviderForm.cs region=ImportHtmlString}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\HtmlFormatProviderForm.vb region=ImportHtmlString}}
````C#
string html = "<p>hello world!</p>";
HtmlFormatProvider provider = new HtmlFormatProvider();
this.radRichTextEditor1.Document = provider.Import(html);

````
````VB.NET
Dim html As String = "<p>hello world!</p>"
Dim provider As HtmlFormatProvider = New HtmlFormatProvider()
Me.radRichTextEditor1.Document = provider.Import(html)

````



{{endregion}}

The resulting __RadDocument__ can be used like any code-generated document.
        
## Export

With the overloads of the __Export__ method you can export the document to an HTML string or a file.

The first example shows how to use the **HtmlFormatProvider** to export an instance of **RadDocument** to a file:

#### Export Html to File

{{source=..\SamplesCS\RichTextEditor\ImportExport\HtmlFormatProviderForm.cs region=ExportHtmlToFile}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\HtmlFormatProviderForm.vb region=ExportHtmlToFile}}
````C#
HtmlFormatProvider provider = new HtmlFormatProvider();
using (Stream output = File.OpenWrite("Sample.html"))
{
    RadDocument document = this.radRichTextEditor1.Document;
    provider.Export(document, output);
}

````
````VB.NET
Dim provider As HtmlFormatProvider = New HtmlFormatProvider()
Using output As Stream = File.OpenWrite("Sample.html")
    Dim document As RadDocument = Me.radRichTextEditor1.Document
    provider.Export(document, output)
End Using

````



{{endregion}}

You can also export the document to a string variable like shown in the example below.

#### Export Html to String

{{source=..\SamplesCS\RichTextEditor\ImportExport\HtmlFormatProviderForm.cs region=ExportHtmlToString}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\HtmlFormatProviderForm.vb region=ExportHtmlToString}}
````C#
RadDocument document = this.radRichTextEditor1.Document;
HtmlFormatProvider provider = new HtmlFormatProvider();
string html = provider.Export(document);

````
````VB.NET
Dim document As RadDocument = Me.radRichTextEditor1.Document
Dim provider As HtmlFormatProvider = New HtmlFormatProvider()
Dim html As String = provider.Export(document)

````



{{endregion}}

## See Also

* [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
* [Settings]({%slug winforms/richtexteditor/import-export/html/settings%}) 