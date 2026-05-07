---
title: Using TxtFormatProvider
page_title: Using TxtFormatProvider - WinForms RichTextEditor Control
description: TxtFormatProvider makes it easy to import and export RadDocument to/from plain text format, preserving the document structure in WinForms RichTextEditor. 
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

<snippet id='richtexteditor-txtformatproviderform-importdocumentfromfile-cs' />
<snippet id='richtexteditor-txtformatproviderform-importdocumentfromfile-vb' />



And here is how you can import a document from string:
        
#### Import Document from a String

<snippet id='richtexteditor-txtformatproviderform-importdocumentfromstring-cs' />
<snippet id='richtexteditor-txtformatproviderform-importdocumentfromstring-vb' />



The resulting __RadDocument__ can be manipulated like any code-generated document.

## Export

In order to export a document to plain text, you need to use the __Export()__ method of __TxtFormatProvider__.
 
This example shows how to use __TxtFormatProvider__ to export __RadDocument__ to a file.

#### Export a Document to a File

<snippet id='richtexteditor-txtformatproviderform-exportdocumenttofile-cs' />
<snippet id='richtexteditor-txtformatproviderform-exportdocumenttofile-vb' />



You can also export the document to a string and preserve it in a database.

#### Export a Document to a String

<snippet id='richtexteditor-txtformatproviderform-exportdocumenttostring-cs' />
<snippet id='richtexteditor-txtformatproviderform-exportdocumenttostring-vb' />



## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
