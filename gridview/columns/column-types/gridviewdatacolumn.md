---
title: GridViewDataColumn
page_title: GridViewDataColumn
description: GridViewDataColumn
slug: gridview-columns-gridviewdatacolumn
tags: gridviewdatacolumn
published: True
position: 1
---

# GridViewDataColumn



## 

__GridViewDataColumn__descends from GridViewColumn and is the base class for all data bound column types.
        	Using __GridViewDataColumn__ you can find out the data type for the column and other properties that relate specificly 
      		to data binding including:
      	
      	
      	

* Grouping and sorting properties: __AllowDragToGroup__, __AllowGroup__, __AllowSort, IsGrouped, IsSorted.__

* Naming properties: __FieldName__ is the name of the field the column is associated with. __Name__ is the distinctive name of the column.

* Data type properties: __DataType__is the underlying data type for the bound data, e.g. (myColumn.DataType == typeof(string)). __DataTypeIsSet__indicates if the column DataType property has been assigned.

* __Index__is the position of the column within the __Columns__ collection.

* __FormatString__ allows you to tailor the output of strings, numbers and dates using standard formatting strings. 

See [Iterating Columns]({%slug gridview-columns-iterating-columns%}) for an example of using GridViewDataColumn.

See [Data Formatting]({%slug gridview-columns-data-formatting%}) for an example of formatting GridViewDataColumns.
