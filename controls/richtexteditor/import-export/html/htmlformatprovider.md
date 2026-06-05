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

<snippet id='richtexteditor-htmlformatproviderform-importdocumentfromfile-cs' />
<snippet id='richtexteditor-htmlformatproviderform-importdocumentfromfile-vb' />



This example shows how you can import an HTML string.
 
#### Import Html String

<snippet id='richtexteditor-htmlformatproviderform-importhtmlstring-cs' />
<snippet id='richtexteditor-htmlformatproviderform-importhtmlstring-vb' />



The resulting __RadDocument__ can be used like any code-generated document.
        
## Export

With the overloads of the __Export__ method you can export the document to an HTML string or a file.

The first example shows how to use the **HtmlFormatProvider** to export an instance of **RadDocument** to a file:

#### Export Html to File

<snippet id='richtexteditor-htmlformatproviderform-exporthtmltofile-cs' />
<snippet id='richtexteditor-htmlformatproviderform-exporthtmltofile-vb' />



You can also export the document to a string variable like shown in the example below.

#### Export Html to String

<snippet id='richtexteditor-htmlformatproviderform-exporthtmltostring-cs' />
<snippet id='richtexteditor-htmlformatproviderform-exporthtmltostring-vb' />



## See Also

* [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
* [Settings]({%slug winforms/richtexteditor/import-export/html/settings%}) 
