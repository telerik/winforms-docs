---
title: Using RtfFormatProvider
page_title: Using RtfFormatProvider - WinForms RichTextEditor Control
description: RtfFormatProvider makes it easy to import and export RadDocument to/from RTF format, preserving the entire document structure and formatting in WinForms RichTextEditor.
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

<snippet id='richtexteditor-rtfformatproviderform-importdocumentfromfile-cs' />
<snippet id='richtexteditor-rtfformatproviderform-importdocumentfromfile-vb' />



And here is how you can import a document from string containing the RTF document:

#### Import Document from a String

<snippet id='richtexteditor-rtfformatproviderform-importdocumentfromstring-cs' />
<snippet id='richtexteditor-rtfformatproviderform-importdocumentfromstring-vb' />



The resulting __RadDocument__ can be used like any code-generated document.
 
## Export

In order to export a document to RTF, you need to use the __Export__ method of __RtfFormatProvider__.
        
The example below shows how to use __RtfFormatProvider__ to export __RadDocument__ to a file.

#### Export a Document to a File

<snippet id='richtexteditor-rtfformatproviderform-exportdocumenttofile-cs' />
<snippet id='richtexteditor-rtfformatproviderform-exportdocumenttofile-vb' />



You can also export the document to a string and preserve it in a database.

#### Export a Document to a String

<snippet id='richtexteditor-rtfformatproviderform-exportdocumenttostring-cs' />
<snippet id='richtexteditor-rtfformatproviderform-exportdocumenttostring-vb' />



The resulting documents can be opened in any application that supports RTF documents.

## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Settings]({%slug winforms/richtexteditor/import-export/rtf/settings%})
