---
title: GridViewColumn
page_title: GridViewColumn | RadGridView
description: GridViewColumn is the base class for all types of RadGridView columns, including GridViewDataColumn.
slug: winforms/gridview/columns/column-types/gridviewcolumn
tags: gridviewcolumn
published: True
position: 1
previous_url: gridview-columns-gridviewcolumn, /devtools/winforms/gridview/columns/column-types/gridviewcolumn
---

# GridViewColumn

Columns are represented by __GridViewColumn__ objects. __GridViewColumn__ is the base class for all types of RadGridView columns, including [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%}) (the base class for all data bound columns). __GridViewColumn__ has properties that tailor appearance and behavior for the entire column including:

* __HeaderText, HeaderTextAlignment__: The text string for column heading and the alignment for the heading, respectively. __HeaderTextAlignment__ aligns the text to a __ContentAlignment__ enumeration member: TopLeft, TopCenter, TopRight, MiddleLeft, MidddleCenter, MiddleRight, BottomLeft, BottomCenter, BottomRight.

* __Name__ is the unique name of the column that is used to identify the column in all grid operations; 

* __FieldName__ property connects the column with the underlying data source in case of a bound column;

* __IsPinned__: [Pins the column]({%slug winforms/gridview/columns/pinning-and-unpinning-columns%}) to the left side of the grid.

* __IsCurrent__: This property sets a certain column to be current

* __IsVisible__: Hide a column by setting __IsVisible__ to __False__.

* __MinWidth, MaxWidth, Width__: Minimum, maximum and the current width of the column.

* __AllowResize__: If __True__, the width of the column can be resized. If __False__ the splitter mouse cursor does not display and the column is prevented from being resized.

* __TextAlignment__: Aligns the text to a __ContentAlignment__ enumeration member: TopLeft, TopCenter, TopRight, MiddleLeft, MidddleCenter, MiddleRight, BottomLeft, BottomCenter, BottomRight.


# See Also
* [Accessing and Iterating through Columns]({[%slug winforms/gridview/columns/accessing-and-iterating-through-columns%]}

* [Calculated Columns (Column Expressions)]({[%slug winforms/gridview/columns/calculated-columns-(column-expressions)%]}

* [Overview]({[%slug winforms/gridview/columns%]}

* [Converting Data Types]({[%slug winforms/gridview/columns/converting-data-types%]}

* [Data Formatting]({[%slug winforms/gridview/columns/data-formatting%]}

* [Generating Columns]({[%slug winforms/gridview/columns/generating-columns%]}

* [GridViewDataColumn]({[%slug winforms/gridview/columns/column-types/gridviewdatacolumn%]}

* [Pinning and Unpinning Columns]({[%slug winforms/gridview/columns/pinning-and-unpinning-columns%]}

