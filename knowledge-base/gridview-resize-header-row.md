---
title: Resizing the Header Row in RadGridView for WinForms
description: Learn how to resize the header row in RadGridView for WinForms.
type: how-to
page_title: How to Resize the Header Row in RadGridView for WinForms
slug: resize-header-row-radgridview-winforms
tags: gridview, row, header, resize
res_type: kb
ticketid: 1655865
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.2.514|RadGridView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

By default, the header row of the RadGridView is not resizable. This article explains how to resize the header row using custom code.

## Solution

To implement this functionality we can use mouse events. We can subscribe to MouseDown, MouseMove, and MouseUp events of the RadGridView.

1. Attach the mouse event handlers to `radGridView1`:

````C#
this.radGridView1.MouseDown += RadGridView1_MouseDown;
this.radGridView1.MouseMove += RadGridView1_MouseMove;
this.radGridView1.MouseUp += RadGridView1_MouseUp;
````

2. In the MouseDown event handler, we can determine if the mouse is over the header row and prepare for resizing:

````C#
private void RadGridView1_MouseDown(object? sender, MouseEventArgs e)
{
    GridCellElement cellUnderMouse = this.radGridView1.ElementTree.GetElementAtPoint<GridCellElement>(e.Location);
    if (cellUnderMouse != null && cellUnderMouse is GridTableHeaderCellElement)
    {
        rowElement = this.radGridView1.ElementTree.GetElementAtPoint<GridRowElement>(e.Location);
        rowToResizeInitialHeight = this.rowElement.Size.Height;
        headerCell = cellUnderMouse;
        isMouseLeftButtonHold = true;
        mouseDownLocation = e.Location;
        this.radGridView1.GridViewElement.ElementTree.Control.Cursor = Cursors.SizeNS;
    }
}
````

3. In the MouseMove event handler, we can resize the row if the mouse is being dragged:

````C#
private void RadGridView1_MouseMove(object? sender, MouseEventArgs e)
{
    if (isMouseLeftButtonHold)
    {
        this.ResizeRow(e.Location);
    }
}

protected virtual void ResizeRow(System.Drawing.Point currentLocation)
{
    int delta = currentLocation.Y - this.mouseDownLocation.Y;
    GridViewRowInfo rowToResizeInfo = this.headerCell.RowInfo;
    int height = this.rowToResizeInitialHeight + delta;
    if (rowToResizeInfo != null && height >= rowToResizeInfo.MinHeight)
    {
        rowToResizeInfo.Height = height;
    }
}
````

4. In the MouseUp event handler, we can stop the custom resizing logic from executing:

````C#
private void RadGridView1_MouseUp(object? sender, MouseEventArgs e)
{
    isMouseLeftButtonHold = false;
    this.radGridView1.GridViewElement.ElementTree.Control.Cursor = (this.radGridView1.GridViewElement.GridBehavior as BaseGridBehavior).OriginalCursor;
}
````

## Notes

- This logic is executed when the user clicks on the header cell. Clicking on other cells may trigger sorting and interfere with the resizing logic.
- This is a custom solution. While it works in a sample application, it may not be compatible with all scenarios and built-in functionalities of the control.

## See Also

- [RadGridView Documentation](https://docs.telerik.com/devtools/winforms/controls/gridview/overview)
