---
title: Virtual Mode
page_title: Virtual Mode - RadGridView
description: Use the virtual mode when you need to shows large amount of data without fetching the entire data at once. 
slug: winforms/gridview/virtual-mode/virtual-mode
tags: virtual,mode
published: True
position: 18
previous_url: gridview-virtual-mode
---

# Virtual Mode


|RELATED VIDEOS|
| ------- |
|[Performance Binding and Virtual Mode ](http://tv.telerik.com/watch/winforms/radgridview/radgridview-for-winforms-performance-binding-virtual-mode)<br>RadGridView for WinForms - Performance Binding and Virtual Mode(Runtime: 18:16)|

With virtual mode, you can implement your own data management operations. This is necessary to maintain the values of unbound columns in bound mode when the control is sorted by bound columns. The primary use of virtual mode,
however, is to optimize the performance when interacting with large amounts of data.

You attach the RadGridView control to a cache that you manage, and your code controls when data rows are pushed and pulled. To keep the memory footprint small, the cache should be similar in size to the number of rows currently displayed. When the user scrolls new rows into view, your code requests new data from the cache and optionally flushes old data from memory.

>note The following data operations are not supported in Virtual Mode:
* Grouping
* Sorting
* Filtering
* Paging
>

When you are implementing virtual mode, you will need to track when a new row is needed in the data model and when  to rollback the adding of the new row. The exact implementation of this functionality will depend on the implementation of the data model and the transaction semantics of the data model; whether commit scope is at the cell or row level.

## Implementing the Virtual Mode

With virtual mode, you can manage the interaction between the RadGridView control and a custom data cache. To implement the virtual mode:

1. Set the __VirtualMode__ property to *true*.

1. Handle one or more of the events described further in this topic. You will typically handle at least the __CellValueNeeded__ event, which enables the control look up values in the data cache.

1. You will also need to set the __RowCount__ and __ColumnCount__ (or add columns in your code) properties so that the grid will know how many rows/columns it needs to display.

The following code snippet demonstrates how to implement the virtual mode
with __MockIntegerDataSource__ (the implementation of this data source can be found in our examples application under the GridView >> Performance >> High Refresh example:

####  Implementing the Virtual Mode

<snippet id='gridview-virtualmode1-virtualmode-cs' />
<snippet id='gridview-virtualmode1-virtualmode-vb' />

## Virtual-Mode Events

If your data is read-only, the __CellValueNeeded__ event is the only event you will need to handle in order to have a working grid control. Additional virtual-mode events let you enable specific functionality like user edits, row addition and deletion, and row-level transactions.

Some standard __RadGridView__ events (such as events that occur when users add or delete rows, or when cell values are edited, parsed, validated, or formatted) are useful in virtual mode, as well. You can also handle events that let you maintain values not typically stored in a bound data source, such as cell ToolTip text, cell and row error text, cell and row shortcut menu data, and row height data.

The following events are specific only to the grid virtual mode (i.e. when
the __VirtualMode__ property is set to *true*):

|  __Event__  |  __Description__  |
| ------ | ------ |
| __CellValueNeeded__ |Used by the control to retrieve a cell value from the data cache for display. This event occurs only for cells in unbound columns.
| __CellValuePushed__ |Used by the control to commit user input for a cell to the data cache. This event occurs only for cells in unbound columns.Call the __UpdateCellValue__ method when changing a cached value outside of a __CellValuePushed__ event handler to ensure that the current value is displayed in the control and to apply any automatic sizing modes currently in effect.|

>note When implementing the __CellValueNeeded__ event you should have in mind that the __ColumnIndex__ parameter depends on the current order of the columns as set by the user – reordering columns would change the column index.
>

# See Also

* [RadVirtualGrid]({%slug winforms/virtualgrid%})
