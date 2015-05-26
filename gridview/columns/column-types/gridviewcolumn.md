---
title: GridViewColumn
page_title: GridViewColumn | UI for WinForms Documentation
description: GridViewColumn
slug: winforms/gridview/columns/column-types/gridviewcolumn
tags: gridviewcolumn
published: True
position: 0
---

# GridViewColumn



## 

Columns are represented by __GridViewColumn__ objects. __GridViewColumn__is the base class for all types of RadGridView columns, including [GridViewDataColumn]({%slug winforms/gridview/columns/column-types/gridviewdatacolumn%}) (the base class for all data bound columns). __GridViewColumn__has properties that tailor appearance and behavior for the entire column including:

* __HeaderText, HeaderTextAlignment__: The text string for column heading and the alignment for the heading, respectively. __HeaderTextAlignment__ aligns the text to a __ContentAlignment__ enumeration member: TopLeft, TopCenter, TopRight, MiddleLeft, MidddleCenter, MiddleRight, BottomLeft, BottomCenter, BottomRight.

* __Name__is the unique name of the column that is used to identify the column in all grid operations; 

* __FieldName__property connects the column with the underlying data source in case of a bound column;

* __IsPinned__: [Pins the column]({%slug winforms/gridview/columns/pinning-and-unpinning-columns%}) to the left side of the grid.

* __IsCurrent__: this property sets a certain column to be current

* __IsVisible__: Hide a column by setting __IsVisible__ to __False__.

* __MinWidth, MaxWidth, Width__: Minimum, maximum and the current width of the column.

* __AllowResize__: If __True__, the width of the column can be resized. If __False__ the splitter mouse cursor does not display and the column is prevented from being resized.

* __TextAlignment__: Aligns the text to a __ContentAlignment__ enumeration member: TopLeft, TopCenter, TopRight, MiddleLeft, MidddleCenter, MiddleRight, BottomLeft, BottomCenter, BottomRight.


