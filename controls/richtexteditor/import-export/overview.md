---
title: Overview
page_title: Overview - RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc. 
slug: winforms/richtexteditor/import-export/overview
tags: import/export
published: True
position: 0
previous_url: richtexteditor-import-export, richtexteditor-import-export-data-providers
---

# Overview

__RadRichTextEditor__ allows you to export and import its content. This is useful in case you want to save the user's input into a data base and then load it from there, or if you want to save/load the content of __RadRichTextEditor__ to/from a file. To import and export you have to use a specific class that implements the __IDocumentFormatProvider__. You can find built-in classes, that implement this interface, for each of the supported formats. Currently __RadRichTextEditor__ can export and import the following formats:
      

* __XAML__: To import/export __XAML__ documents you have to use the [__XamlFormatProvider__]({%slug winforms/richtexteditor/import-export/xaml/xamlformatprovider%}) class.

* __DOCX__: To import/export __DOCX__ documents you have to use the [__DocxFormatProvider__]({%slug winforms/richtexteditor/import-export/docx/docxformatprovider%}) class.

* __HTML__: To import/export __HTML__ documents you have to use the [__HtmlFormatProvider__]({%slug winforms/richtexteditor/import-export/html/htmlformatprovider%}) class.
     
* __RTF__: To import/export __RTF__ documents you have to use the [__RtfFormatProvider__]({%slug winforms/richtexteditor/import-export/rtf/rtfformatprovider%}) class.

* __Plain text__: To import/export plain text documents you have to use the [__TxtFormatProvider__]({%slug winforms/richtexteditor/import-export/plain-text/txtformatprovider%}) class.

* __PDF__: To export documents to __PDF__ you have to use the [__PdfFormatProvider__]({%slug winforms/richtexteditor/import-export/pdf/pdfformatprovider%}) class.

## Specifics

__RadRichTextEditor__'s format providers can import/export a wide variety of features supported by the control. However, features which are not yet supported are stripped on import. Such examples are content controls like text boxes, check boxes, etc. which can be inserted in the document in some rich text editors such as Microsoft Word or can be included in the HTML.

>caution When importing a document, it is converted to **RadDocument** following the rules of the model that it defines. Content that has no parallel in **RadDocument** is ignored and can no longer be restored.
>When exporting the same document, the resulting docx/HTML/XAML/RTF will be different than the initial one.
>

# See Also

 * [Formatting API]({%slug winforms/richtexteditor-/getting-started/formatting-api%})

 * [History]({%slug winforms/richtexteditor-/features/history%})
