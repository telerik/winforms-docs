---
title: Painting and Drawing in Cells
page_title: Painting and Drawing in Cells | RadGridView
description: This article shows how you can manually paint in the cells inside RadGridView.
slug: winforms/gridview/cells/painting-and-drawing-in-cells
tags: painting,and,drawing,in,cells
published: True
position: 7
previous_url: gridview-cells-painting-and-drawing-in-cells
---

# Painting and drawing in cells

There are cases when you need to manually draw in a cell in order to extend the cell appearance and/or provide additional information to the user about the cell data. RadGridView supports this case via the CellPaint event. To enable the event firing just set __EnableCustomDrawing__ to *true*.

>note When handling this event, you should access the cell through the parameters of the event handler, rather than access the cell directly.
>

The following example demonstrates how to use the __CellPaint__ event to change the appearance of the cells in a "UnitPrice" column. We would like to add a custom drawn red asterisk to values less than 20, a green asterisk to values higher than 20, and no asterisk when the cell's value is zero:

{{source=..\SamplesCS\GridView\Cells\PaintingAndDrawingInCells.cs region=paintingAndDrawingInCells}} 
{{source=..\SamplesVB\GridView\Cells\PaintingAndDrawingInCells.vb region=paintingAndDrawingInCells}} 

````C#
void radGridView1_CellPaint(object sender, Telerik.WinControls.UI.GridViewCellPaintEventArgs e)
{
    if (e.Cell != null && e.Cell.RowInfo is GridViewDataRowInfo && e.Cell.ColumnInfo.Name == "UnitPrice")
    {
        double value = Convert.ToDouble(e.Cell.Value);
        if (value == 0)
        {
            return;
        }
        Brush brush = value < 20 ? Brushes.Red : Brushes.Green;
        using (Font font = new Font("Segoe UI", 17))
        {
            e.Graphics.DrawString("*", font, brush, Point.Empty);
        }
    }
}

````
````VB.NET
Private Sub RadGridView1_CellPaint(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCellPaintEventArgs) Handles RadGridView1.CellPaint
    If e.Cell IsNot Nothing AndAlso TypeOf e.Cell.RowInfo Is GridViewDataRowInfo AndAlso e.Cell.ColumnInfo.Name = "UnitPrice" Then
        Dim value As Double = Convert.ToDouble(e.Cell.Value)
        If value = 0 Then
            Return
        End If
        Dim brush As Brush = If(value < 20, Brushes.Red, Brushes.Green)
        Using font As New Font("Segoe UI", 17)
            e.Graphics.DrawString("*", font, brush, Point.Empty)
        End Using
    End If

````

{{endregion}} 

>caption Figure 1: Painting in cells

![gridview-cells-painting-and-drawing-in-cells 001](images/gridview-cells-painting-and-drawing-in-cells001.png)
# See Also
* [Accessing and Setting the CurrentCell]({%slug winforms/gridview/cells/accessing-and-setting-the-currentcell%})

* [Accessing Cells]({%slug winforms/gridview/cells/accessing-cells%})

* [Conditional Formatting Cells]({%slug winforms/gridview/cells/conditional-formatting-cells%})

* [Creating Custom Cells]({%slug winforms/gridview/cells/creating-custom-cells%})

* [Formatting Cells]({%slug winforms/gridview/cells/formatting-cells%})

* [GridViewCellInfo]({%slug winforms/gridview/cells/gridviewcellinfo%})

* [Iterating Cells]({%slug winforms/gridview/cells/iterating-cells%})

* [ToolTips]({%slug winforms/gridview/cells/tooltips%})

