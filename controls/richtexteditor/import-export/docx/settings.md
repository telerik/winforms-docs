---
title: Settings
page_title: Settings | RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc. 
slug: winforms/richtexteditor/import-export/docx/settings
tags: import/export
published: True
position: 1
---

# Settings

__DocxFormatProvider__ allows for import of DOCX documents and respectively export of RadDocument to DOCX. Additionally, the export settings provide modification options. The current article outlines the available settings.

## Export Settings

__DocxFormatProvider__ exposes __ExportSettings__, which allow customization in how fields are exported. By default, all fields are exported using their result value in the docx document. If you would like to save the document of the editor as a mail merge template and not include the value of the current item of the __MailMergeDataSource__, a new instance of __DocxExportSettings__ should be created and assigned to the format provider. The value of the __FieldResultMode__ of these settings must be set to __FieldDisplayMode.DisplayName__.

#### DocxFormatProvider Settings

{{source=..\SamplesCS\RichTextEditor\ImportExport\DocxFormatProviderForm.cs region=DocxFormatProvider}} 
{{source=..\SamplesVB\RichTextEditor\ImportExport\DocxFormatProviderForm.vb region=DocxFormatProvider}}
````C#
DocxFormatProvider docxFormatProvider = DocumentFormatProvidersManager.GetProviderByExtension("docx") as DocxFormatProvider;
DocxExportSettings docxExportSettings = new DocxExportSettings();
docxFormatProvider.ExportSettings = docxExportSettings;

````
````VB.NET
Dim docxFormatProvider As DocxFormatProvider = TryCast(DocumentFormatProvidersManager.GetProviderByExtension("docx"), DocxFormatProvider)
Dim docxExportSettings As DocxExportSettings = New DocxExportSettings()
docxFormatProvider.ExportSettings = docxExportSettings

```` 



{{endregion}}

The __FieldResultMode__ property of the __DocxExportSettings__ is an enumeration and it allows the following values:
* __Code__: Shows all fields codes in the current document.
* __DisplayName__: Shows all fields names in the current document.
* __Result__: Replaces the merge fields in your document with actual data from your recipient list.
* __Null__: When the **FieldResultMode** is set to *null*, fields' display mode is not changed. This can provide a better performance and lower memory usage while exporting.
	
## See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})
 * [Using DocxFormatProvider]({%slug winforms/richtexteditor/import-export/docx/docxformatprovider%})