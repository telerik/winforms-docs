---
title: Iterating Cells
page_title: Iterating Cells
description: Iterating Cells
slug: gridview-cells-iterating-cells
tags: iterating,cells
published: True
position: 2
---

# Iterating Cells



You can iterate through the cells of each row using the __Cells__ collection of 
    		[GridViewCellInfo]({%slug gridview-cells-gridviewcellinfo%}). 
    	The example below firstly iterates the rows of the grid, then the cells for each row:

#### __[C#] Iterating cells__

{{region iteratingCells}}
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
	{{endregion}}



#### __[VB.NET] Iterating cells__

{{region iteratingCells}}
	        For Each rowInfo As GridViewRowInfo In RadGridView1.Rows
	            For Each cellInfo As GridViewCellInfo In rowInfo.Cells
	                If (cellInfo.ColumnInfo.Name = "Title") OrElse (cellInfo.ColumnInfo.Name = "FirstName") OrElse (cellInfo.ColumnInfo.Name = "LastName") Then
	
	                    cellInfo.Value = "Test Value"
	                End If
	            Next
	        Next
	{{endregion}}



>__RadGridView__ uses virtualization for its visual elements. This means that only the rows that are currently visible have a visual element. When the grid is scrolled up and down the visual elements are reused. Because of the virtualization, it is safe to use the __CellElement__ only inside the __CellFormatting__ event and only for the current cell.

Before![gridview-cells-iterating-cells 001](images/gridview-cells-iterating-cells001.png)

After![gridview-cells-iterating-cells 002](images/gridview-cells-iterating-cells002.png)
