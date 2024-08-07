---
title: End Edit Mode When Navigating to Another Cell in RadGridView for WinForms
description: Learn how to configure RadGridView to end cell editing when the user navigates to another cell, similar to the standard DataGridView behavior.
type: how-to
page_title: How to End Editing on Cell Navigation in RadGridView for WinForms
slug: end-editing-on-cell-navigation-radgridview-winforms
tags: gridview, winforms, celledit, cellnavigation, behavior
res_type: kb
ticketid: 1657423
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.2.514|RadGridView for WinForms|[Nadya Todorova](https://www.telerik.com/blogs/author/nadya-karaivanova)|

## Description

By default, when RadGridView is in edit mode, and the user changes the current cell, the new cell enters in edit mode automatically. In some cases, clients may want to change this behavior and end the editing process once the user left the current cell. This behavior is represented in the MS DataGrid control. This article describes how one can achieve the same editing behavior as in MS DataGrid. 

## Solution

To achieve the desired behavior where cell editing ends upon navigating to another cell, you can customize the `GridRowBehavior` of RadGridView. This involves creating a custom `GridRowBehavior` and overriding the `OnMouseDownLeft` method.

Here is a custom `GridDataRowBehavior` implementation:

````C#
public class CustomGridDataRowBehavior : GridDataRowBehavior
{
    protected override bool OnMouseDownLeft(MouseEventArgs e)
    {
        GridCellElement cellElement = this.GetCellAtPoint(e.Location);
        if (cellElement != null)
        {
            this.GridViewElement.EditorManager.CloseEditor();
        }

        return base.OnMouseDownLeft(e);
    }
}
````

To apply this custom behavior, register it with your RadGridView. This custom behavior closes the editor when navigating away from a cell. The `CellBeginEdit` event will trigger for every new cell the user navigates to.

````C#
// Example of how to register the custom behavior
gridView.GridBehavior = new CustomGridDataRowBehavior();
````

## See Also

- [RadGridView for WinForms Documentation - Row Behaviors](https://docs.telerik.com/devtools/winforms/controls/gridview/rows/row-behaviors)
