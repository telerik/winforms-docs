---
title: Merged Cells
page_title: Merged Cells - WinForms GridView Control
description: Learn how to merge the cells in the WinForms GridView.
slug: gridview-merged-cells
tags: merged,cells,grid,gridmergecellelement
published: True
position: 10
---

# Merged Cells



Cells can be accessed by index or the column __Name__ property.

>note RadGridView uses virtualization for its visual elements. This means that only the rows that are currently visible have a visual element. When the grid is scrolled up and down the visual elements are reused. Because of the virtualization, it is safe to use the __CellElement__ only inside the __CellFormatting__ event and only for the current cell.
>

>note When assigning values to several cells subsequently, the RadGridView should be placed between __BeginUpdate()__ and __EndUpdate()__ method invocations of the desired template. See section "Multiple assignments of cell values" below for more information.
>


## Accessing cells by column Name

In this example we will change a cell value to 10 if it is greater than 10. In this case we assume that there is a "UnitPrice" column and we modify the cell in its first row.

{{source=..\SamplesCS\GridView\Cells\AccessingCells.cs region=accessingCellsByColumnName}} 
{{source=..\SamplesVB\GridView\Cells\AccessingCells.vb region=accessingCellsByColumnName}} 

````C#
if ((decimal)radGridView1.Rows[0].Cells["UnitPrice"].Value > 10)
    radGridView1.Rows[0].Cells["UnitPrice"].Value = 10;

````
````VB.NET
If DirectCast(RadGridView1.Rows(0).Cells("UnitPrice").Value, Decimal) > 10 Then
    RadGridView1.Rows(0).Cells("UnitPrice").Value = 10
End If

````

{{endregion}} 

>caption Figure 1: Before setting the value.

![WinForms RadGridView Before setting the value](images/gridview-cells-accessing-cells001.png)


## See Also
* [Accessing and Setting the CurrentCell]({%slug winforms/gridview/cells/accessing-and-setting-the-currentcell%})

* [Conditional Formatting Cells]({%slug winforms/gridview/cells/conditional-formatting-cells%})

* [Creating Custom Cells]({%slug winforms/gridview/cells/creating-custom-cells%})

* [Formatting Cells]({%slug winforms/gridview/cells/formatting-cells%})

* [GridViewCellInfo]({%slug winforms/gridview/cells/gridviewcellinfo%})

* [Iterating Cells]({%slug winforms/gridview/cells/iterating-cells%})

* [Painting and Drawing in Cells]({%slug winforms/gridview/cells/painting-and-drawing-in-cells%})

* [ToolTips]({%slug winforms/gridview/cells/tooltips%})

