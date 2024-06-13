---
title: Formatting Priority Order in RadGridView
description: Learn how to show callout for the different steps in the WinForms Callout.
type: how-to 
page_title: Formatting Priority Order in RadGridView
slug: gridview-cells-rows-formatting-priority
position: 39
tags: gridview, formatting, priority, style
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2022.2.622|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|


## Description

All controls built on top of the [Telerik Presentation Framework]({%slug winforms/telerik-presentation-framework/overview%}) have default style coming from the applied [theme]({%slug winforms/themes/using-default-themes%}).
Note that the different themes offer a different design which can be achieved by applying different style settings of the respective inner elements. Hence, when applying one set of style settings programmatically, it may work for one theme but it may not work the same way for another theme. 

Since RadGridView offers different ways for styling the row and cell elements, this article gives more information about the priority order of the different styling approaches.

## Solution 

Firstly, the style related to the row elements is applied, then to the cell elements. The cell's [Style]({%slug winforms/gridview/cells/formatting-cells%}) property has a higher priority than the applied cell style settings in the [ConditionalFormattingObject]({%slug winforms/gridview/cells/conditional-formatting-cells%}). The [CellFormatting]({%slug winforms/gridview/cells/formatting-cells%}) event has highest priority among all of them. 

Here is the order (lowest to highest) of applying the style settings:

1\. [ConditionalFormattingObject.RowBackColor]({%slug winforms/gridview/rows/conditional-formatting-rows%}) (when ApplyToRow=true)

2\. [RowFormatting]({%slug winforms/gridview/rows/formatting-rows%})

3\. [ConditionalFormattingObject.CellBackColor]({%slug winforms/gridview/cells/conditional-formatting-cells%})

4\. [GridViewCellInfo.Style]({%slug winforms/gridview/cells/style%})

5\. [CellFormatting]({%slug winforms/gridview/cells/formatting-cells%})


# See Also

* [Formatting Rows]({%slug winforms/gridview/rows/formatting-rows%})
* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})
* [Formatting Cells]({%slug winforms/gridview/cells/formatting-cells%})
* [Conditional Formatting Cells]({%slug winforms/gridview/cells/conditional-formatting-cells%})
