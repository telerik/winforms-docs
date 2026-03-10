---
title: Collapsing and Expanding All Nodes in SyntaxEditor
description: Learn the approach to collapse and expand all nodes in SyntaxEditor for UI for WinForms.
type: how-to
page_title: How to Collapse and Expand Nodes in SyntaxEditor for WinForms
meta_title: How to Collapse and Expand Nodes in SyntaxEditor for WinForms
slug: collapsing-expanding-all-nodes-syntaxeditor-winforms
tags: syntax-editor, ui for winforms, collapse, expand, nodes
res_type: kb
ticketid: 1680548
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2026.1.210|RadSyntaxEditor for WinForms|[Nadya Karaivanova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

The following article demonstrates how to collapse and expand nodes programmatically in the [SyntaxEditor](https://www.telerik.com/products/winforms/documentation/controls/syntax-editor/overview) component for UI for WinForms.

## Solution

To collapse or expand all nodes in the SyntaxEditor, use the following code snippet. It iterates through the `FoldingRegions` and toggles their `IsFolded` property.

1. Access the `SyntaxEditorElement.FoldingManager.FoldingRegions`.
2. Loop through each `FoldingRegion`.
3. Toggle the `IsFolded` property.

Here is the example code:

```C#

private void radButton1_Click(object sender, EventArgs e)
{
    // Collapse/Expand all nodes
    foreach (FoldingRegion region in this.radSyntaxEditor1.SyntaxEditorElement.FoldingManager.FoldingRegions)
    {
        region.IsFolded = !region.IsFolded;
    }
}
```

## See Also

* [SyntaxEditor Overview](https://www.telerik.com/products/winforms/documentation/controls/syntax-editor/overview)

