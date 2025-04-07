---
title: Setting Custom Page Size on Document in RadRichTextEditor
description: Learn how to configure a custom page size, such as 3"x3", for documents in RadRichTextEditor.
type: how-to
page_title: How to Configure Custom Page Sizes in RadRichTextEditor for WinForms
slug: radrichtexteditor-winforms-custom-page-size
tags: radrichtexteditor, winforms, custom, page size
res_type: kb
ticketid: 1683831
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.1.211|RadRichTextEditor for WinForms|[Nadya Todorova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

This knowledge base article shows how to define custom dimensions of a document in RadRichTextEditor. Baically, RadRichTextEditor provides **Telerik.WinForms.Documents.Model.PaperTypes** enumeration, but it does not allow users to define custom sizes such as 3"x 3" dimensions.

## Solution

To set a custom page size in RadRichTextEditor, such as 3"x 3", use the `ChangeSectionPageSize()` method. This method should be called after the document is loaded. Use the following code snippet to implement custom page sizing:

````C#

var size = new Telerik.WinControls.RichTextEditor.UI.Size(762, 762);
this.radRichTextEditor1.RichTextBoxElement.ActiveDocumentEditor.ChangeSectionPageSize(size);

````

## See Also

- [RadRichTextEditor Documentation](https://docs.telerik.com/devtools/winforms/controls/richtexteditor/overview)
- [Working with Sections in RadRichTextEditor](https://docs.telerik.com/devtools/winforms/controls/richtexteditor/document-elements/section)
