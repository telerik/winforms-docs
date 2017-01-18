---
title: Row Types
page_title: Row Types | UI for WinForms Documentation
description: Row Types
slug: winforms/virtualgrid/fundamentals/row-types
tags: virtualgrid, row
published: True
position: 3
---

# Row Types

## System Rows

__RadVirtualGrid__ contains the following system rows:

* __HeaderRow:__ shows the columns headers where one can put the columns text. The __ShowHeaderRow__ property controls the visibility of this row. 

* __FilteringRow__ this row will appear when the filtering is enabled. It allows the user to type a filler value and choose between different filter types. The row can be accessed in the [RowFormatting]({%slug winforms/virtualgrid/rows/formatting-system-rows%}) event.   

* __NewRow:__ this row allows the user to add new data rows. The __AllowAddNewRow__ property controls this row visibility.


## Data Rows

__RadVirtualGrid__ is getting the data rows only when this is needed, when the grid is initialized and when the user performs an operation which changes the currently visible rows. This means that this grid does not keep logical row representation like RadGridView or the default .NET grid. You should only set the __RowCount__ and then pass the cells values in the __CellValueNeeded__ event.  

### Data Rows Common Properties 

The following list shows the most commonly used row properties and methods:

* __TableElement.RowHeight:__ You can set the default row height by setting the property.
* __AllowRowResize:__  You can allow the end user to resize rows by setting this property to *true*.
* __TableElement.SetRowHeight:__ this method allows you to set the height of a specific row in he code behind.
