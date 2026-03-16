---
title: Setting Default Cell Content Alignment in RichTextEditor Programmatically
description: Learn how to set each cell's content alignment to left and centered by default in RichTextEditor for UI for WinForms.
type: how-to
page_title: How to Align Table Cell Content in RichTextEditor for WinForms
meta_title: How to Align Table Cell Content in RichTextEditor for WinForms
slug: align-table-cell-content-winforms-richtexteditor
tags: richtexteditor, ui for winforms, alignment, table, cell, content
res_type: kb
ticketid: 1705299
---

|Product Version|Product|Author|
|----|----|----|
|2026.1.210|RadRichTextEditor for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In this KB article, we will demonstrate how to set text alignment to left and centered programmatically.

## Solution

To set all table cell content alignment to left and centered:

1. Retrieve the table from the document using `EnumerateChildrenOfType<Table>()`.
2. Clear the current selection.
3. Set the selection to cover the entire table.
4. Use the `RadDocumentEditor` to apply the alignment changes.
5. Clear the selection after applying the alignment.

Here is the sample code:

```C#
var tables = richTextEditor.Document.EnumerateChildrenOfType<Table>();
var table = tables.FirstOrDefault();

richTextEditor.Document.Selection.Clear();

var start = new DocumentPosition(richTextEditor.Document);
start.MoveToDocumentElementStart(table);
richTextEditor.Document.Selection.AddSelectionStart(start);

var end = new DocumentPosition(richTextEditor.Document);
end.MoveToDocumentElementEnd(table);
richTextEditor.Document.Selection.AddSelectionEnd(end);

RadDocumentEditor editor = new RadDocumentEditor(richTextEditor.Document);
editor.ChangeTableCellContentAlignment(RadTextAlignment.Left, Telerik.WinForms.Documents.Layout.RadVerticalAlignment.Center);
richTextEditor.Document.Selection.Clear();

```

## See Also

* [RichTextEditor Overview](https://docs.telerik.com/devtools/winforms/controls/richtexteditor/overview)
