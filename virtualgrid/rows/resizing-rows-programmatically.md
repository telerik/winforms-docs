---
title: Resizing Rows Programmatically
page_title: Resizing Rows Programmatically| RadVirtualGrid
description: This article shows how you can resize the rows in RadVirtualGrid in the code.
slug: winforms/virtualgrid/rows/resizing-rows-programmatically
tags: virtualgrid, rows, resizing
published: True
position: 3
---

# Resizing Rows Programmatically

__RadVirtualGrid__ exposes an API allowing resizing of its rows. In order to utilize it we need to set the __AllowRowResize__ property to *true*.

{{source=..\SamplesCS\VirtualGrid\Rows\VirtualGridResizingRows.cs region=AllowRowResize}} 
{{source=..\SamplesVB\VirtualGrid\Rows\VirtualGridResizingRows.vb region=AllowRowResize}}
````C#
this.radVirtualGrid1.AllowRowResize = true;

````
````VB.NET
Me.RadVirtualGrid1.AllowRowResize = True

```` 



{{endregion}}

## Resizing System Rows

The __VirtualGridViewInfo__ object exposes properties for directly accessing its system rows and setting a desired height.

>caption Figure 1 Resizing System Rows.

![virtualgrid-rows-resizing-rows002](images/virtualgrid-rows-resizing-rows002.png)

{{source=..\SamplesCS\VirtualGrid\Rows\VirtualGridResizingRows.cs region=ResizingSystemRows}} 
{{source=..\SamplesVB\VirtualGrid\Rows\VirtualGridResizingRows.vb region=ResizingSystemRows}}
````C#
this.radVirtualGrid1.MasterViewInfo.HeaderRowHeight = 30;
this.radVirtualGrid1.MasterViewInfo.NewRowHeight = 40;
this.radVirtualGrid1.MasterViewInfo.FilterRowHeight = 50;

````
````VB.NET
Me.RadVirtualGrid1.MasterViewInfo.HeaderRowHeight = 30
Me.RadVirtualGrid1.MasterViewInfo.NewRowHeight = 40
Me.RadVirtualGrid1.MasterViewInfo.FilterRowHeight = 50

```` 



{{endregion}}

## Resizing Data Rows

The data rows can also be programmatically resized. __RadVirtualGrid.VirtualGridViewInfo__ provides a property for defining a uniform height to all rows and also methods for setting or retrieving the height of a single row.

>caption Figure 2 Resizing All Data Rows.

![virtualgrid-rows-resizing-rows003](images/virtualgrid-rows-resizing-rows003.png)

{{source=..\SamplesCS\VirtualGrid\Rows\VirtualGridResizingRows.cs region=ResizingDataRows}} 
{{source=..\SamplesVB\VirtualGrid\Rows\VirtualGridResizingRows.vb region=ResizingDataRows}}
````C#
this.radVirtualGrid1.MasterViewInfo.RowHeight = 60;

````
````VB.NET
Me.RadVirtualGrid1.MasterViewInfo.RowHeight = 60

```` 



{{endregion}}

>caption Figure 3 Resizing A Single Data Row.

![virtualgrid-rows-resizing-rows004](images/virtualgrid-rows-resizing-rows004.png)

{{source=..\SamplesCS\VirtualGrid\Rows\VirtualGridResizingRows.cs region=SetRowHeight}} 
{{source=..\SamplesVB\VirtualGrid\Rows\VirtualGridResizingRows.vb region=SetRowHeight}}
````C#
this.radVirtualGrid1.MasterViewInfo.SetRowHeight(0, 40);
int rowHeight = this.radVirtualGrid1.MasterViewInfo.GetRowHeight(0);

````
````VB.NET
Me.RadVirtualGrid1.MasterViewInfo.SetRowHeight(0, 40)
Dim rowHeight As Integer = Me.RadVirtualGrid1.MasterViewInfo.GetRowHeight(0)

```` 



{{endregion}}

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

{{source=..\SamplesCS\VirtualGrid\Rows\VirtualGridResizingRows.cs region=ResizingEvents}} 
{{source=..\SamplesVB\VirtualGrid\Rows\VirtualGridResizingRows.vb region=ResizingEvents}}
````C#
private void radVirtualGrid1_RowHeightChanging(object sender, VirtualGridRowHeightChangingEventArgs e)
{
    if (e.RowIndex == 0)
    {
        e.Cancel = true;
    }
}
private void radVirtualGrid1_RowHeightChanged(object sender, VirtualGridRowEventArgs e)
{
}

````
````VB.NET
Private Sub radVirtualGrid1_RowHeightChanging(sender As Object, e As VirtualGridRowHeightChangingEventArgs)
    If e.RowIndex = 0 Then
        e.Cancel = True
    End If
End Sub
Private Sub radVirtualGrid1_RowHeightChanged(sender As Object, e As VirtualGridRowEventArgs)
End Sub

```` 



{{endregion}}
