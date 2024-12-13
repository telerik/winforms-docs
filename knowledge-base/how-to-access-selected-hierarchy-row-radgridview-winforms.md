---
title: How to get selected rows in the Child Grid of RadGridView for WinForms
description: Learn how to programmatically determine and access the selected row in a child grid within RadGridView for WinForms.
type: how-to
page_title: How to get the selected Selected Child Rows in RadGridView for WinForms
slug: how-to-access-selected-hierarchy-row-radgridview-winforms
tags: gridview, winforms, child grid, selected row, hierarchy
res_type: kb
ticketid: 1673149
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.4.1113|RadSpreadsheet for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

When working with hierarchical RadGridView for WinForms, it's essential to identify the selected rows within the child grids programmatically. In the following KB article, we will demonstrate how to determine whether the rows in the SelectedRows collection are from the master or child template.

## Solution

To access selected rows within a child grid of RadGridView, leverage the `RadGridView.SelectedRows` collection. This collection holds all selected rows when the `SelectionMode` is set to `GridViewSelectionMode.FullRowSelect`.

To specifically target selected rows in child grids, iterate over the `SelectedRows` collection and utilize the `HierarchyLevel` property of each row to determine its hierarchical level. The following code snippet demonstrates how to identify and work with selected rows at the child level (`HierarchyLevel == 1`):

````C#

foreach (GridViewRowInfo row in this.radGridView.SelectedRows)
{
    if (row.HierarchyLevel == 1)
    {
        // Implement the desired logic for selected child rows here
    }
}

````

This approach enables you to distinguish between selected rows in the main grid and those in child grids, facilitating precise manipulation or processing based on your application's requirements.

## See Also

- [RadGridView for WinForms Documentation - Selection](https://docs.telerik.com/devtools/winforms/controls/gridview/selection/selection-basics)
- [RadGridView for WinForms Documentation - Hierarchical Grid](https://docs.telerik.com/devtools/winforms/controls/gridview/hierarchical-grid/hierarchical-grid)
