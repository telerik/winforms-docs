---
title: Iterating Cells
page_title: Iterating Cells - WinForms GridView Control
description: WinForms GridView allows you to iterate through the cells of each row using the __Cells__ collection of GridViewCellInfo.
slug: winforms/gridview/cells/iterating-cells
tags: iterating,cells
published: True
position: 2
previous_url: gridview-cells-iterating-cells
---

# Iterating Cells

You can iterate through the cells of each row using the __Cells__ collection of [GridViewCellInfo]({%slug winforms/gridview/cells/gridviewcellinfo%}). The example below firstly iterates the rows of the grid, then the cells for each row:

{{source=..\SamplesCS\GridView\Cells\IteratingCells.cs region=iteratingCells}} 
{{source=..\SamplesVB\GridView\Cells\IteratingCells.vb region=iteratingCells}} 

````C#
foreach (GridViewRowInfo rowInfo in radGridView1.Rows)
{
    foreach (GridViewCellInfo cellInfo in rowInfo.Cells)
    {
        if ((cellInfo.ColumnInfo.Name == "Title")
            || (cellInfo.ColumnInfo.Name == "FirstName")
            || (cellInfo.ColumnInfo.Name == "LastName"))
        {
            cellInfo.Value = "Test Value";
        }
    }
}

````
````VB.NET
For Each rowInfo As GridViewRowInfo In RadGridView1.Rows
    For Each cellInfo As GridViewCellInfo In rowInfo.Cells
        If (cellInfo.ColumnInfo.Name = "Title") OrElse (cellInfo.ColumnInfo.Name = "FirstName") OrElse (cellInfo.ColumnInfo.Name = "LastName") Then
            cellInfo.Value = "Test Value"
        End If
    Next
Next

````

{{endregion}} 

>note  __RadGridView__ uses virtualization for its visual elements. This means that only the rows that are currently visible have a visual element. When the grid is scrolled up and down the visual elements are reused. Because of the virtualization, it is safe to use the __CellElement__ only inside the __CellFormatting__ event and only for the current cell.
>


# See Also
* [Accessing and Setting the CurrentCell]({%slug winforms/gridview/cells/accessing-and-setting-the-currentcell%})

* [Accessing Cells]({%slug winforms/gridview/cells/accessing-cells%})

* [Conditional Formatting Cells]({%slug winforms/gridview/cells/conditional-formatting-cells%})

* [Creating Custom Cells]({%slug winforms/gridview/cells/creating-custom-cells%})

* [Formatting Cells]({%slug winforms/gridview/cells/formatting-cells%})

* [GridViewCellInfo]({%slug winforms/gridview/cells/gridviewcellinfo%})

* [Painting and Drawing in Cells]({%slug winforms/gridview/cells/painting-and-drawing-in-cells%})

* [ToolTips]({%slug winforms/gridview/cells/tooltips%})

