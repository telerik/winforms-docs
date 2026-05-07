---
title: Formatting Rows
page_title: Formatting Rows - WinForms GridView Control
description: Learn how to use the RowFormatting event to apply custom formatting to WinForms GridView's data rows.
slug: winforms/gridview/rows/formatting-rows
tags: formatting,rows
published: True
position: 5
previous_url: gridview-rows-formatting-rows
---

# Formatting Rows

## Customize the appearance of data rows

Use the __RowFormatting__ event to apply custom formatting to __RadGridView's__ data rows.

The code snippet below demonstrates changing the background color of rows, which *"BMP"* cell value is set to *true*:

![WinForms RadGridView Formatted Rows](images/grid-rows-formatting-rows001.png)

<snippet id='gridview-formattingrows-rowformatting-cs' />
<snippet id='gridview-formattingrows-rowformatting-vb' />

>note An *if-else* statement is used to reset the value of __BackColorProperty__ if no drawing is required.
>

>note You should set __DrawFill__ to *true* to turn on the fill for the row (depends on the used theme).
>

>note Please refer to the Fundamentals [topic]({%slug winforms/gridview/fundamentals/logical-vs.-visual-grid-structure%}) for more information about the UI Virtualization.
>  

## Customize the Non-Data Rows Appearance

To customize the non-data rows (header row, new row, filtering row, etc) of **RadGridView**, you need to handle the __ViewRowFormatting__ event.

<snippet id='gridview-formattingrows-viewrowformatting-cs' />
<snippet id='gridview-formattingrows-viewrowformatting-vb' />

![WinForms RadGridView Customized Non-Data Rows](images/grid-rows-formatting-rows002.png)

# See Also
* [Adding and Inserting Rows]({%slug winforms/gridview/rows/adding-and-inserting-rows%})

* [Conditional Formatting Rows]({%slug winforms/gridview/rows/conditional-formatting-rows%})

* [Creating custom rows]({%slug winforms/gridview/rows/creating-custom-rows%})

* [Drag and Drop]({%slug winforms/gridview/rows/drag-and-drop%})

* [GridViewRowInfo]({%slug winforms/gridview/rows/gridviewrowinfo%})

* [Iterating Rows]({%slug winforms/gridview/rows/iterating-rows%})

* [New Row]({%slug winforms/gridview/rows/new-row%})

* [Painting Rows]({%slug winforms/gridview/rows/painting-rows%})

* [Change the row hot tracking color in RadGridView by using VSB]({%slug change-row-hot-tracking-color-in-radgrid-by-using-vsb%})

