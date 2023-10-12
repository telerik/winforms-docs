---
title: How To Import DOC Files
description: An example demonstrating how to import DOC files format into RadRichTextEditor
type: how-to
page_title: How To Load DOC Files Format
slug:  richtexteditor-load-doc-file
position: 0
tags: richtexteditor, doc, import, load
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.3.1010|RadRichTextEditor for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|
 

## Description

An example demonstrating how import DOC file formats into **RadRichTextEditor**.


## Solution 

To load a .doc file format to our WinForms RichTextEditor control you need to follow the below steps.

* Add a reference to the Telerik.Windows.Documents.Flow.FormatProviders.Doc and Telerik.Windows.Documents.Flow DLLs, located in the Telerik WinForms installation folder.
* Load the .doc type document using [**DocFormatProvider**](hhttps://docs.telerik.com/devtools/document-processing/libraries/radwordsprocessing/formats-and-conversion/word-file-formats/doc/docformatprovider) from our document processing library. This provider will import the document into **RadFlowDocument**.
* Export the **RadFlowDocument** to a byte array using [DocxFormatProvider](https://docs.telerik.com/devtools/document-processing/libraries/radwordsprocessing/formats-and-conversion/word-file-formats/docx/docxformatprovider) from the document processing library.
* The last step is to use WinForms [DocxFormatProvider](https://docs.telerik.com/devtools/winforms/controls/richtexteditor/import-export/docx/docxformatprovider) to load and create RadDocument from a byte array.


#### Implementation

````C#
Telerik.Windows.Documents.Flow.FormatProviders.Doc.DocFormatProvider docFormatProvider = new Telerik.Windows.Documents.Flow.FormatProviders.Doc.DocFormatProvider();
Telerik.Windows.Documents.Flow.Model.RadFlowDocument document;
using (Stream str = new FileStream(@"../../Lorem Ipsun.doc", FileMode.Open))
{
    document = docFormatProvider.Import(str);
}

Telerik.Windows.Documents.Flow.FormatProviders.Docx.DocxFormatProvider docxFormatProvider =
    new Telerik.Windows.Documents.Flow.FormatProviders.Docx.DocxFormatProvider();
byte[] documentArray = docxFormatProvider.Export(document);

var radDocxFormatProvider = new Telerik.WinForms.Documents.FormatProviders.OpenXml.Docx.DocxFormatProvider();
this.radRichTextEditor1.Document = radDocxFormatProvider.Import(documentArray);

````
````VB.NET
Dim docFormatProvider As Telerik.Windows.Documents.Flow.FormatProviders.Doc.DocFormatProvider = New Telerik.Windows.Documents.Flow.FormatProviders.Doc.DocFormatProvider()
Dim document As Telerik.Windows.Documents.Flow.Model.RadFlowDocument

Using str As Stream = New FileStream("../../Lorem Ipsun.doc", FileMode.Open)
	document = docFormatProvider.Import(str)
End Using

Dim docxFormatProvider As Telerik.Windows.Documents.Flow.FormatProviders.Docx.DocxFormatProvider = New Telerik.Windows.Documents.Flow.FormatProviders.Docx.DocxFormatProvider()
Dim documentArray As Byte() = docxFormatProvider.Export(document)
Dim radDocxFormatProvider = New Telerik.WinForms.Documents.FormatProviders.OpenXml.Docx.DocxFormatProvider()
Me.radRichTextEditor1.Document = radDocxFormatProvider.Import(documentArray)

````

## See Also

* [RadRichTextEditor Import/Export Overview]({%slug winforms/richtexteditor/import-export/overview%}) 

