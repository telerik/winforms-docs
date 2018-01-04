---
title: Using XamlFormatProvider
page_title: Using XamlFormatProvider | RadRichTextEditor
description: XamlFormatProvider makes it easy to import and export RadDocument to/from XAML format, preserving as much as possible of the document structure and formatting. 
slug: winforms/richtexteditor/import-export/xaml/xamlformatprovider
tags: import/export
published: True
position: 2
---

# Using XamlFormatProvider

__XamlFormatProvider__ makes it easy to import and export RadDocument to/from XAML format, preserving as much as possible of the document structure and formatting. 

To use __XamlFormatProvider__, you should reference the **Telerik.WinControls.RichTextEditor.dll** and add the following namespace: 
	
* __Telerik.WinForms.Documents.FormatProviders.Xaml__

## Import Settings
In order to import a XAML document you can use the overloads of the __Import()__ method.

The first example shows how to use XamlFormatProvider to import XAML document from a file.

#### Import XAML Document from a File
{{source=..\SamplesCS\RichTextEditor\ImportExport\XamlFormatProviderForm.cs region=ImportDocumentFromFile}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\XamlFormatProviderForm.vb region=ImportDocumentFromFile}}
````C#
XamlFormatProvider xamlformatProvider = new XamlFormatProvider();
using (Stream stream = File.OpenRead(@"..\..\RichTextEditor\ImportExport\Sample.xml"))
{
    this.radRichTextEditor1.Document = xamlformatProvider.Import(stream);
}

````
````VB.NET
Dim provider As XamlFormatProvider = New XamlFormatProvider()
Using output As FileStream = File.OpenWrite("Sample.xaml")
    Dim document As RadDocument = Me.radRichTextEditor1.Document
    provider.Export(document, output)
End Using

````



{{endregion}}


## Export Settings
In order to export a document to XAML, you need to use the __Export()__ method of XamlFormatProvider. 

This example shows how to use __XamlFormatProvider__ to export __RadDocument__ to a file.

#### Export Document to a File
{{source=..\SamplesCS\RichTextEditor\ImportExport\XamlFormatProviderForm.cs region=ExportDocumentToFile}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\XamlFormatProviderForm.vb region=ExportDocumentToFile}}
````C#
XamlFormatProvider provider = new XamlFormatProvider();
using (FileStream output = File.OpenWrite("Sample.xaml"))
{
    RadDocument document = this.radRichTextEditor1.Document;
    provider.Export(document, output);
}

````
````VB.NET
Dim xamlformatProvider As XamlFormatProvider = New XamlFormatProvider()
Using inputStream As FileStream = File.OpenRead("..\..\RichTextEditor\ImportExport\Sample.xml")
    Me.radRichTextEditor1.Document = xamlformatProvider.Import(inputStream)
End Using

````



{{endregion}}

## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Settings]({%slug winforms/richtexteditor/import-export/xaml/settings%})