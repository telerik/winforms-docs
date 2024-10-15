---
title: Preventing Column Dragging Over Pinned Columns in RadGridView for WinForms
description: Learn how to restrict the reordering of RadGridView columns in WinForms by preventing columns from being dragged over pinned columns.
type: how-to
page_title: How to Restrict Column Dragging Over Pinned Columns in RadGridView for WinForms
slug: prevent-column-drag-over-pinned-radgridview-winforms
tags: radgridview, winforms, drag-and-drop, pinned-columns, radgriddragdropservice
res_type: kb
ticketid: 1667283
---

## Environment

<table>
<tbody>
<tr>
<td>Product</td>
<td>RadGridView for WinForms</td>
</tr>
</tbody>
</table>

## Description

When working with pinned columns in RadGridView, I want to prevent the user from dragging unpinned columns over or between the pinned columns. This issue arises when the first two columns are pinned, but an unpinned column can still be moved to the leftmost position or between pinned columns, effectively increasing the number of pinned columns. 

This KB article also answers the following questions:
- How can I restrict column reordering in RadGridView with pinned columns?
- Is it possible to disable dragging columns over pinned columns in RadGridView for WinForms?
- What method can prevent a column from being moved over pinned columns in RadGridView?

## Solution

To achieve the desired behavior, leverage the [RadDragDropService](https://docs.telerik.com/devtools/winforms/controls/gridview/drag-and-drop/radgridviewdragdropservice) of RadGridView, which handles the drag-and-drop operations. By handling the `PreviewDragOver` event, you can prevent a column from being dropped over a pinned column.

Follow these steps to implement the solution:

1. Access the `RadDragDropService` from your `RadGridView` instance.
2. Subscribe to the `PreviewDragOver` event of the `RadDragDropService`.
3. In the event handler, check if the target of the drag operation is a pinned column. If so, set `e.CanDrop` to `false` to prevent the drop.

Here is a code snippet illustrating the process:

```csharp
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
```

By implementing this solution, you ensure that users cannot drag unpinned columns over or between pinned columns, maintaining the integrity of your column layout in RadGridView.

## See Also

- [RadGridView for WinForms Documentation - Drag and Drop](https://docs.telerik.com/devtools/winforms/controls/gridview/drag-and-drop/radgridviewdragdropservice)
- [RadGridView for WinForms Documentation - Pinned Columns](https://docs.telerik.com/devtools/winforms/controls/gridview/columns/pinned-columns)
