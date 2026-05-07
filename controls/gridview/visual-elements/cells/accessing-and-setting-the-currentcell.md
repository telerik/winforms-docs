---
title: Accessing and Setting the CurrentCell
page_title: Accessing and Setting the CurrentCell - WinForms GridView Control
description: Learn how to access or set the current cell, column or row in WinForms GridView. 
slug: winforms/gridview/cells/accessing-and-setting-the-currentcell
tags: accessing,and,setting,the,currentcell
published: True
position: 6
previous_url: gridview-cells-setting-current-cell
---

# Accessing and setting the CurrentCell

In order to set the current cell of __RadGridView__, set the __CurrentRow__ and __CurrentColumn__ properties to respective row and column which cross at the desired cell:

<snippet id='gridview-setttingcurrentcell-settingthecurrentcell-cs' />
<snippet id='gridview-setttingcurrentcell-settingthecurrentcell-vb' />



>caption Figure 1: Changing the current row changes the forms text. 

![WinForms RadGridView Changing the current row changes the forms text](images/gridview-setting-current-cell001.gif)



## Accessing the current cell

To get an instance of the current cell simply create a variable of type `GridDataCellElement` and assign to it the current cell:

<snippet id='gridview-setttingcurrentcell-readingthecurrentcell-cs' />
<snippet id='gridview-setttingcurrentcell-readingthecurrentcell-vb' />



>note The **CurrentCell** property can be *null* when you don't have **CurrentRow** or **CurrentColumn.**

# See Also
* [Accessing Cells]({%slug winforms/gridview/cells/accessing-cells%})

* [Conditional Formatting Cells]({%slug winforms/gridview/cells/conditional-formatting-cells%})

* [Creating Custom Cells]({%slug winforms/gridview/cells/creating-custom-cells%})

* [Formatting Cells]({%slug winforms/gridview/cells/formatting-cells%})

* [GridViewCellInfo]({%slug winforms/gridview/cells/gridviewcellinfo%})

* [Iterating Cells]({%slug winforms/gridview/cells/iterating-cells%})

* [Painting and Drawing in Cells]({%slug winforms/gridview/cells/painting-and-drawing-in-cells%})

* [ToolTips]({%slug winforms/gridview/cells/tooltips%})

