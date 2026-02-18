---
title: Collapsing and Expanding All Nodes in SyntaxEditor
description: Learn the approach to collapse and expand all nodes in SyntaxEditor for UI for WinForms.
type: how-to
page_title: How to Collapse and Expand All Nodes in SyntaxEditor for WinForms
meta_title: How to Collapse and Expand All Nodes in SyntaxEditor for WinForms
slug: collapsing-expanding-all-nodes-syntaxeditor-winforms
tags: syntaxeditor, ui for winforms, collapse, expand, nodes
res_type: kb
ticketid: 1680548
---

## Environment

<table>
<tbody>
<tr>
<td>Product</td>
<td>SyntaxEditor for UI for WinForms</td>
</tr>
<tr>
<td>Version</td>
<td>2024.3.924</td>
</tr>
</tbody>
</table>

## Description

I want to collapse and expand all nodes in the [SyntaxEditor](https://docs.telerik.com/devtools/winforms/controls/syntaxeditor/overview) component for UI for WinForms. I am looking for an approach to programmatically achieve this functionality.

This knowledge base article also answers the following questions:
- How do I collapse all nodes in SyntaxEditor for WinForms?
- How can I expand all nodes in SyntaxEditor for WinForms?
- What is the method to toggle collapse and expand for SyntaxEditor nodes?

## Solution

To collapse or expand all nodes in the SyntaxEditor, use the following code snippet. It iterates through the `FoldingRegions` and toggles their `IsFolded` property.

1. Access the `SyntaxEditorElement.FoldingManager.FoldingRegions`.
2. Loop through each `FoldingRegion`.
3. Toggle the `IsFolded` property.

Here is the example code:

```csharp
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

- [SyntaxEditor Overview](https://docs.telerik.com/devtools/winforms/controls/syntaxeditor/overview)
- [UI for WinForms Documentation](https://docs.telerik.com/devtools/winforms/introduction)
- [SyntaxEditor Folding Regions API](https://docs.telerik.com/devtools/winforms/api/Telerik.WinControls.SyntaxEditor.FoldingRegion)
