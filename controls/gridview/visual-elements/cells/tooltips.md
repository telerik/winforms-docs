---
title: ToolTips
page_title: ToolTips - WinForms GridView Control
description: WinForms GridView allows you to show tooltips for different RadGridView elements. 
slug: winforms/gridview/cells/tooltips
tags: tooltips
published: True
position: 5
previous_url: gridview-cells-tooltips
---

# ToolTips

There are two ways to assign tooltips to cells in __RadGridView__, namely setting the __ToolTipText__ property of a *CellElement* in the __CellFormatting__ event handler, or as in most of the RadControls by using the __ToolTipTextNeeded__ event.

## Setting tooltips in the CellFormatting event handler

The code snippet below demonstrates how you can assign a tooltip to a data cell.

<snippet id='gridview-tooltips1-cellformatting-cs' />
<snippet id='gridview-tooltips1-cellformatting-vb' />

>caption Figure 1: Using the formatting event to set the tooltips.

![WinForms RadGridView Using the formatting event to set the tooltips](images/gridview-cells-tooltips001.png)

## Setting tooltips in the ToolTipTextNeeded event

The code snippet below demonstrates how you can use __ToolTipTextNeeded__ event handler to set __ToolTipText__ for the given __CellElement__.

<snippet id='gridview-tooltips1-tooltiptextneeded-cs' />
<snippet id='gridview-tooltips1-tooltiptextneeded-vb' />

>caption Figure 2: Using the ToolTipTextNeeded event.

![WinForms RadGridView Using the ToolTipTextNeeded event](images/gridview-cells-tooltips002.png)

>note The *ToolTipTextNeeded* event has higher priority and overrides the tooltips set in CellFormatting event handler.
>

# See Also
* [Accessing and Setting the CurrentCell]({%slug winforms/gridview/cells/accessing-and-setting-the-currentcell%})

* [Accessing Cells]({%slug winforms/gridview/cells/accessing-cells%})

* [Conditional Formatting Cells]({%slug winforms/gridview/cells/conditional-formatting-cells%})

* [Creating Custom Cells]({%slug winforms/gridview/cells/creating-custom-cells%})

* [Formatting Cells]({%slug winforms/gridview/cells/formatting-cells%})

* [GridViewCellInfo]({%slug winforms/gridview/cells/gridviewcellinfo%})

* [Iterating Cells]({%slug winforms/gridview/cells/iterating-cells%})

* [Painting and Drawing in Cells]({%slug winforms/gridview/cells/painting-and-drawing-in-cells%})

* [Show Tooltips for Clipped Cell's Text]({%slug show-tooltips-for-clipped-cell-text%})

