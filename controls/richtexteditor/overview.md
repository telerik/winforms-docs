---
title: Overview 
page_title: Overview  - RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc. 
slug: winforms/richtexteditor
tags: richtexteditor,
published: True
position: 0
CTAControlName: RichTextEditor
previous_url: richtexteditor, richtexteditor-troubleshooting, richtexteditor-styles-and-templates-template-structure, richtexteditor-styles-and-templates-styling-the-richtexteditor, richtexteditor-styles-and-templates   
---

# RichTextEditor

__RadRichTextEditor__ is a control that allows you to bring word-processing to your applications. It can display and edit rich-text content, including formatted text arranged in pages, paragraphs, spans (runs), tables, etc.

If you are new to this control, see the [Getting Started]({%slug winforms/richtexteditor-/getting-started%}) tutorial.

{% if site.has_cta_panels == true %}
{% include cta-panel-overview.html %}
{% endif %}
        
>note **RadRichTextEditor** requires **.NET Framework 4.0** and cannot be used with an older version. 

![WinForms RadRichTextEditor richtexteditor 001](images/richtexteditor001.png)

## Features

The __RadRichTextEditor__ provides an abundance of features that allow it to handle even highly complex documents:

* __Rich Text Formatting__ - Telerik __RadRichTextEditor__ control allows you to edit text and apply rich formatting options, like:

	* Bold, Italic

	* Underline, Strike Through, Superscript and Subscript

	* Usage of all available system fonts 

	* Text color and background

	* Bullet and numbered lists

	* Paragraph alignment and indentation

	* Show/Hide formatting symbols

	* Clear Formatting 

* __Inserting pictures/symbols/hyperlinks__ - [Read more]({%slug winforms/richtexteditor-/document-elements/inline-image%})

* __Table support__ – including nested tables, merging cells, setting different __RowSpan__ and __ColumnSpan__, tables with auto width and more. [Read more]({%slug winforms/richtexteditor-/document-elements/table%})

* __Section Columns__ You can arrange the text into columns with equal or different width and set a separator between them. Find more information on how to use this feature in the [Section Columns]({%slug radrichtexteditor-ui-for-applying-rich-text-formatting-section-columns%}) UI and [Section Columns API]({%slug winforms/richtextEditor/section-columns%}) articles.

* __Format Painter__ The Format Painter feature enables you to copy the formatting of a particular content and paste it on other elements, so you can easily achieve the desired format. For more information about this functionality, check the [Format Painter]({%slug winforms/richtexteditor/features/format-painter%}) topic.

* __ContextMenu__ - a standard one is provided out of the box, but it can be easily customized or substituted for a user-defined one. [Read more]({%slug winforms/richtexteditor-/ui-for-applying-rich-text-formatting/context-menu%})

* __SelectionMiniToolbar__ - very similar to the one in MS Word, but can also be replaced with another. [Read more]({%slug winforms/richtexteditor-/ui-for-applying-rich-text-formatting/selection-mini-toolbar%})

* __SpellChecker__ - extensible spell checking for different languages, using built-in or custom dictionaries. [Read more]({%slug winforms/richtexteditor-/features/spellcheck%})

* __Printing__ - **RadRichTextEditor** supports printing out of the box. [Read more]({%slug winforms/richtexteditor-/printing%})

* __Multi-level Undo/Redo Support__ - Telerik __RadRichTextEditor__ provides desktop-like usability and control thanks to its multilevel Undo/Redo feature. It allows past actions to be reviewed and reversed, just like in Microsoft Word. [Read more]({%slug winforms/richtexteditor-/features/history%})

* __Three types of layout__ – Paged, Flow (as text in an HTML page viewed in a browser) and FlowNoWrap. [Read more]({%slug winforms/richtexteditor-/getting-started/layout-modes%})

* __Multi-region selection__ - the built-in multi-region support enables you to perform various operations for more than one selection simultaneously. [Read more]({%slug winforms/richtexteditor-/features/selection%})

* __Rich-text clipboard__ - allows rich text copy/paste from Word, OpenOffice etc. [Read more]({%slug winforms/richtexteditor-/features/clipboard-support%})

* __Import/export__ - with Telerik __RadRichTextEditor__ control you can load XAML, HTML, RTF, DocX (rich-text) or TXT (plain text) into the control, you can format and edit it and then export it back to any of the above formats or PDF. [Read more]({%slug winforms/richtexteditor/import-export/overview%})

* __Headers and Footers__ - __RadRichTextEditor__ supports headers and footers in its document. [Read more]({%slug winforms/richtexteditor-/features/headers-and-footers%})

* __Track changes__ - adding and removing of text, images, hyperlinks, tables, etc. and formatting changes of these elements can be tracked by different users. [Read more]({%slug winforms/richtexteditor-/features/track-changes%})

* __Bookmarks__ - provide easy retrieval of previously marked parts of the document. [Read more]({%slug winforms/richtexteditor-/features/bookmarks%})

* __Comments__ - offer the ability to add text to the document which is not inserted directly in the page. [Read more]({%slug winforms/richtexteditor-/features/comments%})

* __Document protection__ - allows editing restrictions in the document for a set of users and groups. [Read more]({%slug winforms/richtexteditor-/features/document-protection%})

* __Mail merge__ - makes populating a template document with data easy. [Read more]({%slug winforms/richtexteditor-/features/mail-merge%})

* __Custom annotations__ - enables you to extend the document model in order to serve specific needs. [Read more]({%slug winforms/richtexteditor-/document-elements/annotations/custom-annotations%})

* __Footnotes and Endnotes__ - usually used to show the source of a material or add an explanation. [Read more]({%slug winforms/richtexteditor-/features/references/footnotes-and-endnotes%})

* __Bibliographic references__ - can be used for referencing a source in the form of text or pointing the source of a citation. [Read more]({%slug winforms/richtexteditor-/features/references/bibliographic-references%})

* __Cross-references__ - references to a Heading, Caption or Bookmark can now change along with their source. [Read more]({%slug winforms/richtexteditor-/features/references/cross-reference%})

* __Captions for tables and figures__ - images, tables, etc. can now be easily labeled. [Read more]({%slug winforms/richtexteditor-/features/references/captions-for-tables-and-figures%})

* __Document variables__ - a mechanism used for storing information in the document. [Read more]({%slug winforms/richtexteditor-/features/fields-and-document-variables/document-variables%})

* __Code blocks__ - provide the ability to add source code fragments in a document. [Read more]({%slug winforms/richtexteditor-/features/code-block%})

* __IME support__ - **RadRichTextEditor** supports IME out the box.        
            

# See Also

 * [Getting Started]({%slug winforms/richtexteditor-/getting-started%})

 * [Events]({%slug winforms/richtexteditor/events%})
