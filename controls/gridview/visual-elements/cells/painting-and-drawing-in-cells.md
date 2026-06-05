---
title: Painting and Drawing in Cells
page_title: Painting and Drawing in Cells - WinForms GridView Control
description: WinForms GridView allows you to manually paint in the cells inside RadGridView. Learn how to change the appearance.
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

<snippet id='gridview-paintinganddrawingincells-paintinganddrawingincells-cs' />
<snippet id='gridview-paintinganddrawingincells-paintinganddrawingincells-vb' />

>caption Figure 1: Painting in cells

![WinForms RadGridView Painting in cells](images/gridview-cells-painting-and-drawing-in-cells001.png)

# See Also
* [Accessing and Setting the CurrentCell]({%slug winforms/gridview/cells/accessing-and-setting-the-currentcell%})

* [Accessing Cells]({%slug winforms/gridview/cells/accessing-cells%})

* [Conditional Formatting Cells]({%slug winforms/gridview/cells/conditional-formatting-cells%})

* [Creating Custom Cells]({%slug winforms/gridview/cells/creating-custom-cells%})

* [Formatting Cells]({%slug winforms/gridview/cells/formatting-cells%})

* [GridViewCellInfo]({%slug winforms/gridview/cells/gridviewcellinfo%})

* [Iterating Cells]({%slug winforms/gridview/cells/iterating-cells%})

* [ToolTips]({%slug winforms/gridview/cells/tooltips%})

