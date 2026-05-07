---
title: Using DocxFormatProvider
page_title: Using DocxFormatProvider - RadRichTextEditor
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
<snippet id='richtexteditor-docxformatproviderform-importdocumentfromfile-cs' />
<snippet id='richtexteditor-docxformatproviderform-importdocumentfromfile-vb' />



And here is how you can import a document from byte array containing the Docx document:
        
#### Import Document from a Byte Array
<snippet id='richtexteditor-docxformatproviderform-importdocumentfrombytearray-cs' />
<snippet id='richtexteditor-docxformatproviderform-importdocumentfrombytearray-vb' />



## Export
In order to export a document to DOCX, you need to use the Export() method of DocxFormatProvider. The example shows how to use __DocxFormatProvider__ to export __RadDocument__ to a file.

#### Export Document to a File

<snippet id='richtexteditor-docxformatproviderform-exportdocumenttofile-cs' />
<snippet id='richtexteditor-docxformatproviderform-exportdocumenttofile-vb' />



You can also export the document to a byte array and preserve it in a database.

#### Export Document to a Byte Array

<snippet id='richtexteditor-docxformatproviderform-exportdocumenttobytearray-cs' />
<snippet id='richtexteditor-docxformatproviderform-exportdocumenttobytearray-vb' />



The resulting documents can be opened in any application that supports DOCX documents.

## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Settings]({%slug winforms/richtexteditor/import-export/docx/settings%})
