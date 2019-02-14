---
title: GridViewDataColumn
page_title: GridViewDataColumn | RadGridView
description: GridViewDataColumn descends from GridViewColumn and is the base class for all data bound column types.
slug: winforms/gridview/columns/column-types/gridviewdatacolumn
tags: gridviewdatacolumn
published: True
position: 2
previous_url: gridview-columns-gridviewdatacolumn, /devtools/winforms/gridview/columns/column-types/gridviewdatacolumn
---

# GridViewDataColumn

__GridViewDataColumn__ descends from __GridViewColumn__ and is the base class for all data bound column types. Using __GridViewDataColumn__ you can find out the data type for the column and other properties that relate specifically to data binding including:

* Grouping and sorting properties: __AllowDragToGroup__, __AllowGroup__, __AllowSort, IsGrouped, IsSorted.__

* Naming properties: __FieldName__ is the name of the field the column is associated with. __Name__ is the distinctive name of the column.

* Data type properties: __DataType__ is the underlying data type for the bound data, e.g. (myColumn.DataType == typeof(string)). __DataTypeIsSet__ indicates if the column DataType property has been assigned.

* __Index__ is the position of the column within the __Columns__ collection.

* __FormatString__ allows you to tailor the output of strings, numbers and dates using standard formatting strings. 
* __AutoFilterDelay__ property gets or sets a value in milliseconds that indicates the delay between the last key press and the filtering operation (available since R1 2019 SP1).

See [Iterating Columns]({%slug winforms/gridview/columns/accessing-and-iterating-through-columns%}) for an example of using __GridViewDataColumn__.

See [Data Formatting]({%slug winforms/gridview/columns/data-formatting%}) for an example of formatting __GridViewDataColumns__.

# See Also
* [Accessing and Iterating through Columns]({%slug winforms/gridview/columns/accessing-and-iterating-through-columns%})

* [Calculated Columns (Column Expressions)]({%slug winforms/gridview/columns/calculated-columns-(column-expressions)%})

* [Overview]({%slug winforms/gridview/columns%})

* [Converting Data Types]({%slug winforms/gridview/columns/converting-data-types%})

* [Data Formatting]({%slug winforms/gridview/columns/data-formatting%})

* [Generating Columns]({%slug winforms/gridview/columns/generating-columns%})

* [GridViewColumn]({%slug winforms/gridview/columns/column-types/gridviewcolumn%})

* [Pinning and Unpinning Columns]({%slug winforms/gridview/columns/pinning-and-unpinning-columns%})

