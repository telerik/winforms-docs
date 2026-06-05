---
title: Resizing Rows Programmatically
page_title: Resizing Rows Programmatically- RadVirtualGrid
description: This article shows how you can resize the rows in RadVirtualGrid in the code.
slug: winforms/virtualgrid/rows/resizing-rows-programmatically
tags: virtualgrid, rows, resizing
published: True
position: 3
---

# Resizing Rows Programmatically

__RadVirtualGrid__ exposes an API allowing resizing of its rows. In order to utilize it we need to set the __AllowRowResize__ property to *true*.

<snippet id='virtualgrid-virtualgridresizingrows-allowrowresize-cs' />
<snippet id='virtualgrid-virtualgridresizingrows-allowrowresize-vb' />



## Resizing System Rows

The __VirtualGridViewInfo__ object exposes properties for directly accessing its system rows and setting a desired height.

>caption Figure 1 Resizing System Rows.

![WinForms RadVirtualGrid Resizing System Rows](images/virtualgrid-rows-resizing-rows002.png)

<snippet id='virtualgrid-virtualgridresizingrows-resizingsystemrows-cs' />
<snippet id='virtualgrid-virtualgridresizingrows-resizingsystemrows-vb' />



## Resizing Data Rows

The data rows can also be programmatically resized. __RadVirtualGrid.VirtualGridViewInfo__ provides a property for defining a uniform height to all rows and also methods for setting or retrieving the height of a single row.

>caption Figure 2 Resizing All Data Rows.

![WinForms RadVirtualGrid Resizing All Data Rows](images/virtualgrid-rows-resizing-rows003.png)

<snippet id='virtualgrid-virtualgridresizingrows-resizingdatarows-cs' />
<snippet id='virtualgrid-virtualgridresizingrows-resizingdatarows-vb' />



>caption Figure 3 Resizing A Single Data Row.

![WinForms RadVirtualGrid Resizing A Single Data Row](images/virtualgrid-rows-resizing-rows004.png)

<snippet id='virtualgrid-virtualgridresizingrows-setrowheight-cs' />
<snippet id='virtualgrid-virtualgridresizingrows-setrowheight-vb' />



## Events

The API exposes two events for notifications when a change in the height of a row is about to happen or has already happened.

* __RowHeightChanging__: Raised before the operation starts, it can be canceled. The event arguments are:

     * __Cancel__: If set to *true* suspends the operation.

     * __NewHeight__: Value of the new row height.

     * __OldHeight__: Value of the old row height.

     * __RowIndex__: The index of the row which is about to be resized.
      
     * __ViewInfo__: Reference to the __VirtualGridViewInfo__ object.

* __RowHeightChanged__: Raised after the execution of the resizing operation. The event arguments are:

     * __RowIndex__: The index of the resized row.
      
     * __ViewInfo__: Reference to the __VirtualGridViewInfo__ object.

<snippet id='virtualgrid-virtualgridresizingrows-resizingevents-cs' />
<snippet id='virtualgrid-virtualgridresizingrows-resizingevents-vb' />



# See Also
* [Alternating Row Color]({%slug winforms/virtualgrid/rows/alternating-row-colors%})

* [Formatting Data Rows]({%slug winforms/virtualgrid/rows/formatting-data-rows%})

* [Formatting System Rows]({%slug winforms/virtualgrid/rows/formatting-system-rows%})

* [Pinned Rows]({%slug winforms/virtualgrid/rows/pinned-rows%})

* [System Rows]({%slug winforms/virtualgrid/rows/system-rows%})

