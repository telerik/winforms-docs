---
title: GridViewCellInfo
page_title: GridViewCellInfo | RadGridView
description: GridViewCellInfo class is the logical representation of a single grid cell.
slug: winforms/gridview/cells/gridviewcellinfo
tags: gridviewcellinfo
published: True
position: 1
previous_url: gridview-cells-gridviewcellinfo
---

# GridViewCellInfo

__GridViewCellInfo__ class is the logical representation of a single grid cell. __GridViewCellInfo__ properties include:

* __Value:__ The value displayed in the cell.

* __ColumnInfo:__ The [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%}) that the cell appears in.

* __RowInfo:__ The [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%}) that the cell appears in.

>note  __RadGridView__ uses virtualization for its visual elements. This means that only the rows that are currently visible have a visual element. When the grid is scrolled up and down the visual elements are reused. Because of the virtualization, it is safe to use the __CellElement__ only inside the __CellFormatting__ event and only for the current cell. The __CellFormatting__ event is fired every time when the cell's visual state needs to be updated.
>


__GridViewCellInfo__ also includes an __EnsureVisible()__ method that scrolls the cell into view.

#### Using GridViewCellInfo 

{{source=..\SamplesCS\GridView\Cells\GridViewCellInfo1.cs region=GridViewCellInfo}} 
{{source=..\SamplesVB\GridView\Cells\GridViewCellInfo1.vb region=GridViewCellInfo}} 

````C#
GridViewRowInfo lastRow = radGridView1.Rows[radGridView1.Rows.Count - 1];
GridViewCellInfo cell = lastRow.Cells["BMP"];
lastRow.EnsureVisible();
if (cell.ColumnInfo.GetType() == typeof(GridViewCheckBoxColumn))
{
    cell.Value = false;
}
cell.EnsureVisible();

````
````VB.NET
Dim lastRow As GridViewRowInfo = RadGridView1.Rows(RadGridView1.Rows.Count - 1)
Dim cell As GridViewCellInfo = lastRow.Cells("BMP")
lastRow.EnsureVisible()
If cell.ColumnInfo.GetType().Equals(GetType(GridViewCheckBoxColumn)) Then
            cell.Value = False
        End If
        cell.EnsureVisible()

````

{{endregion}} 



