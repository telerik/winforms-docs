---
title: Accessing Cells
page_title: Accessing Cells | RadGridView
description: This article shows how you can access or set the current cell, column or row.
slug: winforms/gridview/cells/accessing-cells
tags: accessing,cells
published: True
position: 0
previous_url: gridview-cells-accessing-cells
---

# Accessing Cells

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

![gridview-cells-accessing-cells 001](images/gridview-cells-accessing-cells001.png)

>caption Figure 2: After the value is set.

![gridview-cells-accessing-cells 002](images/gridview-cells-accessing-cells002.png)

## Accessing cells by index

The example below modifies the second cell of the first row and sets a value greater than 10 back to 10.

{{source=..\SamplesCS\GridView\Cells\AccessingCells.cs region=accessingCellsByIndex}} 
{{source=..\SamplesVB\GridView\Cells\AccessingCells.vb region=accessingCellsByIndex}} 

````C#
if ((decimal)radGridView1.Rows[0].Cells[5].Value > 10)
    radGridView1.Rows[0].Cells[5].Value = 10;

````
````VB.NET
If DirectCast(RadGridView1.Rows(0).Cells(5).Value, Decimal) > 10 Then
    RadGridView1.Rows(0).Cells(5).Value = 10
End If

````

{{endregion}} 


## Multiple assignments of cell values

When assigning values to several cells subsequently, the __RadGridView__ should be placed between __BeginUpdate__ and __EndUpdate__ method invocations of the desired template. This way of setting multiple assignments is recommended for performance considerations. For example if you have added a sorting descriptor to __RadGridView__ and you enter/modify five cell values without using these methods, the sorting mechanism will recreate the whole grid five times, which will slow it down. On the other hand if this is done between the suggested methods, the sorting mechanism will run only once, right after calling __EndUpdate__ method. 

{{source=..\SamplesCS\GridView\Cells\AccessingCells.cs region=updateCells}} 
{{source=..\SamplesVB\GridView\Cells\AccessingCells.vb region=updateCells}} 

````C#
radGridView1.TableElement.BeginUpdate();
radGridView1.Rows[0].Cells["UnitPrice"].Value = 10;
radGridView1.Rows[1].Cells["UnitPrice"].Value = 20;
radGridView1.Rows[2].Cells["UnitPrice"].Value = 30;
radGridView1.Rows[3].Cells["UnitPrice"].Value = 40;
radGridView1.Rows[4].Cells["UnitPrice"].Value = 50;
radGridView1.TableElement.EndUpdate();

````
````VB.NET
Me.RadGridView1.TableElement.BeginUpdate()
RadGridView1.Rows(0).Cells("UnitPrice").Value = 10
RadGridView1.Rows(1).Cells("UnitPrice").Value = 20
RadGridView1.Rows(2).Cells("UnitPrice").Value = 30
RadGridView1.Rows(3).Cells("UnitPrice").Value = 40
RadGridView1.Rows(4).Cells("UnitPrice").Value = 50
Me.RadGridView1.TableElement.EndUpdate()

````

{{endregion}} 

>caption Figure 3: Setting multiple values.

![gridview-cells-accessing-cells 003](images/gridview-cells-accessing-cells003.png)

# See Also
* [Accessing and Setting the CurrentCell]({%slug winforms/gridview/cells/accessing-and-setting-the-currentcell%})

* [Conditional Formatting Cells]({%slug winforms/gridview/cells/conditional-formatting-cells%})

* [Creating Custom Cells]({%slug winforms/gridview/cells/creating-custom-cells%})

* [Formatting Cells]({%slug winforms/gridview/cells/formatting-cells%})

* [GridViewCellInfo]({%slug winforms/gridview/cells/gridviewcellinfo%})

* [Iterating Cells]({%slug winforms/gridview/cells/iterating-cells%})

* [Painting and Drawing in Cells]({%slug winforms/gridview/cells/painting-and-drawing-in-cells%})

* [ToolTips]({%slug winforms/gridview/cells/tooltips%})

