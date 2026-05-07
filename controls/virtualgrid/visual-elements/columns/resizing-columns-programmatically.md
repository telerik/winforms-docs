---
title: Resizing Columns Programmatically
page_title: Resizing Columns Programmatically - RadVirtualGrid
description: This article shows how you can resize the columns with code and prevent columns resizing at run time.
slug: winforms/virtualgrid/columns/resizing-columns-programmatically
tags: virtualgrid, columns, resizing
published: True
position: 1
---


# Resizing Columns Programmatically


The columns inside the __RadVirtualGrid__ are resizable by default. The user is able to easily change the column width by positioning the mouse over the columns vertical grid line and dragging it until the desired size is achieved.

## Disable Resizing

To restrict the resizing of all columns by the user set the __AllowColumnResize__ property to *false*.

<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-allowcolumnresize-cs' />
<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-allowcolumnresize-vb' />



## Programmatically Resizing Column

The width of columns can be set individually, per column. Note that the visible width will always include some amount of data even when set to very small amounts. To resize the columns programmatically you can use the following API:

>caption Fig.1 Resize a Column 
![WinForms RadVirtualGrid Resize a Column](images/virtualgrid-columns-resizing-columns001.png)

<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-resizesinglecolumn-cs' />
<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-resizesinglecolumn-vb' />



## Column Auto-Sizing

Columns can be auto-sized to a best fit value. The available API exposes methods for best-fitting all columns or just a single one:

>caption Figure 2: Best fit all columns.

![WinForms RadVirtualGrid Best fit all columns](images/virtualgrid-columns-resizing-columns002.png)

<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-bestfitallcolumns-cs' />
<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-bestfitallcolumns-vb' />



>caption Figure 3: Best fit one column.

![WinForms RadVirtualGrid Best fit one column](images/virtualgrid-columns-resizing-columns003.png)

<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-bestfitcolumn-cs' />
<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-bestfitcolumn-vb' />



Columns can be auto-sized to fit the available space in __RadVirtualGrid__. It is necessary to set the __AutoSizeColumnsMode__ property to *VirtualGridAutoSizeColumnsMode.Fill*:

>caption Figure 4: AutoSizeColumnsMode.*Fill*

![WinForms RadVirtualGrid AutoSizeColumnsMode Fill](images/virtualgrid-columns-resizing-columns004.gif)

<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-autosizecolumnsmode-cs' />
<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-autosizecolumnsmode-vb' />



## Events

The API exposes two events for notifications when a change in the height of a row is about to happen or has already happened.

* __ColumnWidthChanging:__ Raised before the operation starts, it can be canceled. The event arguments are:

 * __Cancel:__ If set to *true* suspends the operation.

 * __NewWidth:__ Value of the new column width.

 * __OldWidth:__ Value of the old column width.

 * __ColumnIndex:__ The index of the column which is about to be resized.
  
 * __ViewInfo:__ Reference to the __VirtualGridViewInfo__ object.

* __ColumnWidthChanged:__ Raised after the execution of the resizing operation. The event arguments are:

 * __ColumnIndex:__ The index of the resized column.
  
 * __ViewInfo:__ Reference to the __VirtualGridViewInfo__ object.

<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-resizingevents-cs' />
<snippet id='virtualgrid-virtualgridcolumnsresizingprogrammatically-resizingevents-vb' />



# See Also
* [Pinned Columns]({%slug winforms/virtualgrid/columns/pinned-columns%})

