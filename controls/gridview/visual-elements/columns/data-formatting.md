---
title: Data Formatting
page_title: Data Formatting - WinForms GridView Control
description: WinForms GridView allows formatting the text of the cells according to your desired format. 
slug: winforms/gridview/columns/data-formatting
tags: data,formatting
published: True
position: 9
previous_url: gridview-columns-data-formatting
---

# Data Formatting

|   |
|---|
|RELATED VIDEOS|
|[Formatting Data In RadGridView for WinForms. ](https://www.youtube.com/watch?v=LmIHjRHudIw)<br>In this RadTip, John Kellar demonstrates how you can apply custom formatting to data within a RadGridView for Windows Forms. (Runtime: 09:14)|

[GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%}) allows you to format the data displayed in it. You can control that by setting the __FormatString__, __FormatInfo__ and __NullValue__ properties of the column.

The __FormatString__ property determines how the cell values are formatted as strings. The property is applicable with Microsoft Formatting Syntax. For more information, see the [Formatting Overview chapter in MSDN.](http://msdn.microsoft.com/en-us/library/26etazsy.aspx)

The __FormatInfo__ property provides the culture in which the string formatting is applied.

By setting the __NullValue__ property, you determine the value that appears if the cell value is null.

Here is a sample covering these properties:

#### Formatting data

<snippet id='gridview-dataformatting1-dataformatting-cs' />
<snippet id='gridview-dataformatting1-dataformatting-vb' />

>caption Figure 1: The data in the middle is formated.

![WinForms RadGridView Formated Middle Data](images/gridview-columns-data-formatting001.png)

>note Note that the value of the NullValue property should be the same as its column data type.
>

The __WrapText__ property wraps text if the text is wider than the column width.

The __TextAlignment__ property defines the text alignment for the column.

#### Using the column text properties

<snippet id='gridview-dataformatting1-textproperties-cs' />
<snippet id='gridview-dataformatting1-textproperties-vb' />

# See Also
* [Accessing and Iterating through Columns]({%slug winforms/gridview/columns/accessing-and-iterating-through-columns%})

* [Calculated Columns (Column Expressions)]({%slug winforms/gridview/columns/calculated-columns-(column-expressions)%})

* [Converting Data Types]({%slug winforms/gridview/columns/converting-data-types%})

* [Generating Columns]({%slug winforms/gridview/columns/generating-columns%})

* [GridViewColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%})

* [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%})

* [Pinning and Unpinning Columns]({%slug winforms/gridview/columns/pinning-and-unpinning-columns%})

