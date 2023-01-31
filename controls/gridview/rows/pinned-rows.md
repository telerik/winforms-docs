---
title: Pinned Rows
page_title: Pinned Rows - WinForms GridView Control
description: WinForms GridView rows can be pinned so that the rows appear anchored to the top or bottom of the grid.
slug: winforms/gridview/rows/pinned-rows
tags: pinned,rows
published: True
position: 6
previous_url: gridview-rows-pinned-rows
---

# Pinned Rows

RadGridView rows can be pinned so that the rows appear anchored to the top or bottom of the grid. To pin a particular row, set the row __PinPosition__ to one of the enumerated options -PinnedRowPosition.__Bottom__ or PinnedRowPosition.__Top__:

{{source=..\SamplesCS\GridView\Rows\PinnedRows.cs region=pinnedRows}} 
{{source=..\SamplesVB\GridView\Rows\PinnedRows.vb region=pinnedRows}} 

````C#
radGridView1.Rows[0].PinPosition = PinnedRowPosition.Bottom;
radGridView1.Rows[4].PinPosition = PinnedRowPosition.Top;

````
````VB.NET
RadGridView1.Rows(0).PinPosition = PinnedRowPosition.Bottom
RadGridView1.Rows(4).PinPosition = PinnedRowPosition.Top

````

{{endregion}} 

By using this code the __IsPinned__ property automatically gets a value true for the desired row.

Another way of pinning a row is to set directly the __IsPinned__ property of a Rows collection item to True. Please note that doing so will pin the row to the top of RadGridView.

{{source=..\SamplesCS\GridView\Rows\PinnedRows.cs region=isPinned}} 
{{source=..\SamplesVB\GridView\Rows\PinnedRows.vb region=isPinned}} 

````C#
radGridView1.Rows[3].IsPinned = true;

````
````VB.NET
RadGridView1.Rows(3).IsPinned = True

````

{{endregion}} 

The example below shows pinning all selected rows in the grid:

{{source=..\SamplesCS\GridView\Rows\PinnedRows.cs region=pinAllRows}} 
{{source=..\SamplesVB\GridView\Rows\PinnedRows.vb region=pinAllRows}} 

````C#
foreach (GridViewRowInfo row in radGridView1.SelectedRows)
{
    row.PinPosition = PinnedRowPosition.Bottom;
}

````
````VB.NET
For Each row In RadGridView1.SelectedRows
    row.PinPosition = PinnedRowPosition.Bottom
Next

````

{{endregion}} 

__RadGridView__ rows can be pinned so that the rows appear anchored to the top of the grid. To pin a particular row, set the __IsPinned__ property of a __Rows__ collection item to  *true*.

The example below shows pinning rows in the grid.<br> ![WinForms RadGridView Pinned Rows](images/gridview-rows-pinned-rows002.png)


# See Also
* [Adding and Inserting Rows]({%slug winforms/gridview/rows/adding-and-inserting-rows%})

* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})

* [Creating custom rows]({%slug winforms/gridview/rows/creating-custom-rows%})

* [Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})

* [Formatting Rows]({%slug winforms/gridview/rows/formatting-rows%})

* [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%})

* [Iterating Rows]({%slug winforms/gridview/rows/iterating-rows%})

* [New Row]({%slug winforms/gridview/rows/new-row%})

