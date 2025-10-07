---
title: Setting Document Background and Editor Background in UI for WinForms RichTextEditor
description: Learn how to set the document background and the editor background in UI for WinForms RichTextEditor.
type: how-to
page_title: How to Change Document and Editor Background Colors in UI for WinForms RichTextEditor
meta_title: How to Change Document and Editor Background Colors in UI for WinForms RichTextEditor
slug: set-document-editor-background-ui-winforms-richtexteditor
tags: richtexteditor, ui for winforms, document background, editor background, pagebackcolor, backcolor
res_type: kb
ticketid: 1700509
---

## Environment
<table>
<tbody>
<tr>
<td>Product</td>
<td>RichTextEditor for UI for WinForms</td>
</tr>
<tr>
<td>Version</td>
<td>2025.3.812</td>
</tr>
</tbody>
</table>

## Description

I want to set the document's background color to white and the editor's background color to gray in the [RichTextEditor](https://docs.telerik.com/devtools/winforms/controls/richtexteditor/overview) component of UI for WinForms.

This knowledge base article also answers the following questions:
- How to customize the background color of RichTextEditor pages?
- How to set different colors for the RichTextEditor editor and document?
- How to use PageBackColor and BackColor properties in UI for WinForms RichTextEditor?

## Solution

To set the desired background colors for the document and editor:

1. Use the `RichTextBoxElement.BackColor` property to assign a color to the editor background.
2. Use the `RadRichTextEditor.PageBackColor` property to assign a color to the document's background.

Example code:

```csharp
// Set editor background to gray
this.radRichTextEditor1.RichTextBoxElement.BackColor = Color.LightGray;

// Set document background to white
this.radRichTextEditor1.PageBackColor = Color.White;
```

## See Also

- [RichTextEditor Overview](https://docs.telerik.com/devtools/winforms/controls/richtexteditor/overview)
- [BackColor Property Documentation](https://docs.telerik.com/devtools/winforms/controls/richtexteditor/api/telerik.winforms.ui.radtextboxelement.backcolor)
- [PageBackColor Property Documentation](https://docs.telerik.com/devtools/winforms/controls/richtexteditor/api/telerik.winforms.ui.radrichtexteditor.pagebackcolor)
