---
title: Painting and drawing in cells
page_title: Painting and drawing in cells | UI for WinForms Documentation
description: Painting and drawing in cells
slug: winforms/gridview/cells/painting-and-drawing-in-cells
tags: painting,and,drawing,in,cells
published: True
position: 7
---

# Painting and drawing in cells



Painting and drawing in Cells

## 

There are cases when you need to manually draw in a cell in order to extend the cell appearance and/or provide additional information to the user about the cell data. RadGridView supports this case via the CellPaint event. To enable the event firing just set the __EnableCustomDrawing__ to *true* of the RadGridView control. 

>note When handling this event, you should access the cell through the parameters of the event handler, rather than access the cell directly.
>


The following example demonstrates how to use the __CellPaint__ event to change the appearance of the cells in a "UnitPrice" column. We would like to add a custom drawn red asterisk to values less than 20, a green asterisk to values higher than 20, and no asterisk when the cell's value is zero:

{{source=..\SamplesCS\GridView\Cells\PaintingAndDrawingInCells.cs region=paintingAndDrawingInCells}} 
{{source=..\SamplesVB\GridView\Cells\PaintingAndDrawingInCells.vb region=paintingAndDrawingInCells}} 

````C#
        void radGridView1_CellPaint(object sender, Telerik.WinControls.UI.GridViewCellPaintEventArgs e)
        {
            GridDataCellElement dataCell = e.Cell as GridDataCellElement;

            if (dataCell != null && dataCell.ColumnInfo.Name == "UnitPrice")
            {
                double value = Convert.ToDouble(dataCell.Value);
                if (value == 0)
                {
                    return;
                }

                Brush brush = value < 20 ? Brushes.Red : Brushes.Green;
                Size cellSize = e.Cell.Size;

                using (Font font = new Font("Segoe UI", 17))
                {
                    e.Graphics.DrawString("*", font, brush, Point.Empty);
                }
            }
        }
````
````VB.NET
    Private Sub RadGridView1_CellPaint(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.GridViewCellPaintEventArgs) Handles RadGridView1.CellPaint
        Dim dataCell As GridDataCellElement = TryCast(e.Cell, GridDataCellElement)

        If dataCell IsNot Nothing AndAlso dataCell.ColumnInfo.Name = "UnitPrice" Then
            Dim value As Double = Convert.ToDouble(dataCell.Value)
            If value = 0 Then
                Return
            End If

            Dim brush As Brush = If(value < 20, Brushes.Red, Brushes.Green)
            Dim cellSize As Size = e.Cell.Size

            Using font As New Font("Segoe UI", 17)
                e.Graphics.DrawString("*", font, brush, Point.Empty)
            End Using
        End If
        '
````

{{endregion}} 


![gridview-cells-painting-and-drawing-in-cells 001](images/gridview-cells-painting-and-drawing-in-cells001.png)
