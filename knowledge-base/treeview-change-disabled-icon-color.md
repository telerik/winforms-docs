---
title: Changing Disabled Icon Color in Expanded State for RadTreeView in UI for WinForms
description: Learn how to change the disabled icon color of the expanded state in the [RadTreeView](https://docs.telerik.com/devtools/winforms/controls/treeview/overview) for UI for WinForms.
type: how-to
page_title: Adjusting Disabled Icon Color When Expanded in RadTreeView for WinForms
meta_title: Adjusting Disabled Icon Color When Expanded in RadTreeView for WinForms
slug: treeview-change-disabled-icon-color
tags: treeview, ui for winforms, disabled icon, expanded state, node formatting
res_type: kb
ticketid: 1700586
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadTreeView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In this tutorial, we will demonstrate how to change the color of the expanded icon in both expanded and collapsed states when the RadTreeView control is disabled. An important step in our approach is that we will need to force the RadTreeView control to update. The code below demonstrates how to do that.

>note The approach is designed while the VisualStudio2022Light theme is applied to the control.

## Solution

To change the disabled icon color for the expanded state and refresh it when the RadTreeView is enabled or disabled, follow these steps:

1. Handle the `NodeFormatting` event of the RadTreeView.
2. Check the `Enabled` property of the control and the `Expanded` property of the expander element.
3. Use the `Update` method with the `Reset` parameter to refresh the formatting after changing the Enabled state.

Here is the updated code:

````C#

private void RadTreeView1_NodeFormatting(object sender, Telerik.WinControls.UI.TreeNodeFormattingEventArgs e)
{
    if (this.radTreeView1.TreeViewElement.Enabled)
    {
        e.NodeElement.ExpanderElement.ForeColor = Color.Gray; // Enabled state color.
    }
    else
    {
        if (e.NodeElement.ExpanderElement.Expanded)
        {
            e.NodeElement.ExpanderElement.ForeColor = Color.Green; // Disabled and expanded state color.
        }
        else
        {
            e.NodeElement.ExpanderElement.ForeColor = Color.Red; // Disabled and collapsed state color.
        }
    }
}

private void radButton1_Click(object sender, EventArgs e)
{
    this.radTreeView1.TreeViewElement.Enabled = !this.radTreeView1.TreeViewElement.Enabled; // Toggle Enabled state.
    this.radTreeView1.TreeViewElement.Update(Telerik.WinControls.UI.RadTreeViewElement.UpdateActions.Reset); // Refresh the control.
}

````

### Explanation
- `NodeFormatting`: Customizes the visual elements of the tree nodes, including the expander icon.
- `UpdateActions.Reset`: Forces the control to refresh and reapply the formatting logic.

## See Also

* [RadTreeView Overview](https://docs.telerik.com/devtools/winforms/controls/treeview/treeview)
* [Node Formatting in RadTreeView](https://docs.telerik.com/devtools/winforms/controls/treeview/working-with-nodes/formatting-nodes)
