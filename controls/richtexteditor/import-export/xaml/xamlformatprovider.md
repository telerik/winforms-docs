---
title: Using XamlFormatProvider
page_title: Using XamlFormatProvider - WinForms RichTextEditor Control
description: XamlFormatProvider makes it easy to import and export RadDocument to/from XAML format, preserving as much as possible of the document structure and formatting in WinForms RichTextEditor. 
slug: winforms/richtexteditor/import-export/xaml/xamlformatprovider
tags: import/export
published: True
position: 2
---

# Using XamlFormatProvider

__XamlFormatProvider__ makes it easy to import and export RadDocument to/from XAML format, preserving as much as possible of the document structure and formatting. 

>note Since R2 2023 SP1 the XamlFormatProvider automatically verifies the imported XAML. More information is available in the [Xaml Verification]({%slug richtexteditor-xaml-verification%}) article.

To use __XamlFormatProvider__, you should reference the **Telerik.WinControls.RichTextEditor.dll** and add the following namespace: 
	
* __Telerik.WinForms.Documents.FormatProviders.Xaml__

## Import
In order to import a XAML document you can use the overloads of the __Import()__ method.

The first example shows how to use XamlFormatProvider to import XAML document from a file.

#### Import XAML Document from a File
<snippet id='richtexteditor-xamlformatproviderform-importdocumentfromfile-cs' />
<snippet id='richtexteditor-xamlformatproviderform-importdocumentfromfile-vb' />



## Export
In order to export a document to XAML, you need to use the __Export()__ method of XamlFormatProvider. 

This example shows how to use __XamlFormatProvider__ to export __RadDocument__ to a file.

#### Export Document to a File
<snippet id='richtexteditor-xamlformatproviderform-exportdocumenttofile-cs' />
<snippet id='richtexteditor-xamlformatproviderform-exportdocumenttofile-vb' />



## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Settings]({%slug winforms/richtexteditor/import-export/xaml/settings%})
