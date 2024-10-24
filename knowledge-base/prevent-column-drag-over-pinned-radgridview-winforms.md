---
title: Prevent Column Dragging Over Pinned Columns in RadGridView for WinForms
description: Learn how to restrict the reordering of RadGridView columns by preventing columns from being dragged over pinned columns.
type: how-to
page_title: How to Restrict Column Dragging Over Pinned Columns in RadGridView for WinForms
slug: gridview-prevent-column-drag-over-pinned
tags: gridview, winforms, drag-and-drop, pinned-columns, radgriddragdropservice
res_type: kb
ticketid: 1667283
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.3.924|RadGridView for WinForms|[Nadya Todorova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

When working with pinned columns in RadGridView, the client may want to prevent dragging unpinned columns over or between the pinned columns. Currently, unpinned column can be moved and placed between pinned columns, effectively increasing the number of pinned columns. 

## Solution

To achieve the desired behavior, leverage the [RadDragDropService](https://docs.telerik.com/devtools/winforms/controls/gridview/drag-and-drop/radgridviewdragdropservice) of RadGridView, which handles the drag-and-drop operations. By handling the `PreviewDragOver` event, you can prevent a column from being dropped over a pinned column.

Follow these steps to implement the solution:

````C#
// Access the RadDragDropService
RadDragDropService svc = this.radGridView1.GridViewElement.GetService<RadDragDropService>();

// Subscribe to the PreviewDragOver event
svc.PreviewDragOver += svc_PreviewDragOver;

// Event handler to prevent dropping over pinned columns
private void svc_PreviewDragOver(object sender, RadDragOverEventArgs e)
{
    if (e.HitTarget is GridHeaderCellElement)
    {
        GridHeaderCellElement headerCell = e.HitTarget as GridHeaderCellElement;
        if (headerCell.ColumnInfo.IsPinned)
        {
            // Prevent dropping over pinned columns
            e.CanDrop = false;
        }
    }
}

````

## See Also

- [RadGridView for WinForms Documentation - Drag and Drop](https://docs.telerik.com/devtools/winforms/controls/gridview/drag-and-drop/radgridviewdragdropservice)
- [RadGridView for WinForms Documentation - Pinned Columns](https://docs.telerik.com/devtools/winforms/controls/gridview/columns/pinned-columns)
