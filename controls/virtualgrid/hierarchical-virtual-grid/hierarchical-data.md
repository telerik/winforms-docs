---
title: Hierarchical Data
page_title: Hierarchical Data - RadVirtualGrid
description: RadVirtualGrid can display hierarchical, master-detail data to an arbitrary number of levels.
slug: winforms/virtualgrid/hierarchical-virtual-grid/hierarchical-data
tags: virtualgrid, hierarchy
published: True
position: 0
---

# Hierarchical Data

__RadVirtualGrid__ can display hierarchical, master-detail data to an arbitrary number of levels.
 
![WinForms RadVirtualGrid Hierarchical Data](images/hierarchical-data.png)

>caution Before proceeding with this article, please refer to the [Populating with Data](https://docs.telerik.com/devtools/winforms/controls/virtualgrid/working-with-data/virtualgrid-populating-with-data) article which demonstrates how to fill data in __RadVirtualGrid__.

In order to fill the grid with hierarchical data, you should follow the steps below:

1\. Handle the __CellValueNeeded__ event. You should specify the __Value__ argument in the __VirtualGridCellValueNeededEventArgs__. 

2\. You will also need to set the __RowCount__ and __ColumnCount__ properties so that the grid will know how many rows/columns it needs to display.

3\. Handle the __QueryHasChildRows__ event which is fired for each row displayed in the associated __VirtualGridViewInfo__. Set the VirtualGridQueryHasChildRowsEventArgs.__HasChildRows__ property to *true* to indicate that the row has child rows.

4\. Subscribe to the __RowExpanding__ event in order to specify the __ColumnCount__ and __RowCount__ properties of the __ChildViewInfo__.

The following example demonstrates how to setup the hierarchy in __RadVirtualGrid__ by using the Northwind.Employees table:

#### Setup hierarchy

<snippet id='virtualgrid-virtualgridhierarchy-setuphierarchy-cs' />
<snippet id='virtualgrid-virtualgridhierarchy-setuphierarchy-vb' />



#### *Employee* and *Sale* classes implementation

<snippet id='virtualgrid-virtualgridhierarchy-helpclasses-cs' />
<snippet id='virtualgrid-virtualgridhierarchy-helpclasses-vb' />



