---
title: GridViewCellInfo
page_title: GridViewCellInfo
description: GridViewCellInfo
slug: gridview-cells-gridviewcellinfo
tags: gridviewcellinfo
published: True
position: 1
---

# GridViewCellInfo



## 

__GridViewCellInfo__class is the logical representation of a single grid cell. __GridViewCellInfo__properties include:

* __Value:__The value displayed in the cell.

* __ColumnInfo__: The [GridViewDataColumn]({%slug gridview-columns-gridviewcolumn%}) that the cell appears in.

* __RowInfo__: The [GridViewRowInfo]({%slug gridview-rows-gridviewrowinfo%}) that the cell appears in.

* __CellElement__: The associated visual element (__GridCellElement)__for the cell.

>__RadGridView__uses virtualization for its visual elements. This means that only the rows that are currently visible have a visual element. When the grid is scrolled up and down the visual elements are reused. Because of the virtualization, it is safe to use the __CellElement__only inside the __CellFormatting__event and only for the current cell. The __CellFormatting__event is fired every time when the cell's visual state needs to be updated.

GridViewCellInfo also includes an __EnsureVisible()__method that scrolls the cell into view.

#### __[C#] Using GridViewCellInfo__

{{region GridViewCellInfo}}
	            GridViewRowInfo lastRow = radGridView1.Rows[radGridView1.Rows.Count - 1];
			    GridViewCellInfo cell = lastRow.Cells["BMP"];
	            lastRow.EnsureVisible();
	            if (cell.ColumnInfo.GetType() == typeof(GridViewCheckBoxColumn))
	            {
	                cell.Value = false;
	            }
	            cell.EnsureVisible();
	{{endregion}}



#### __[VB.NET] Using GridViewCellInfo__

{{region GridViewCellInfo}}
	        Dim lastRow As GridViewRowInfo = RadGridView1.Rows(RadGridView1.Rows.Count - 1)
	        Dim cell As GridViewCellInfo = lastRow.Cells("BMP")
	        lastRow.EnsureVisible()
	        If cell.ColumnInfo.GetType().Equals(GetType(GridViewCheckBoxColumn)) Then
	            cell.Value = False
	        End If
	        cell.EnsureVisible()
	{{endregion}}


