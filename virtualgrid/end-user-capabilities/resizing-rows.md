---
title: Resizing Rows
page_title: Resizing Rows | RadVirtualGrid
description: Resizing Rows
slug: winforms/virtualgrid/end-user-capabilities/resizing-rows
tags: resizing, rows
published: True
position: 5
---

# Resizing Rows

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

The grid rows can be resized by end users simply by positioning the mouse over the horizontal grid line and dragging it to a desired size.

>caption Fig.1 Mouse Resizing<br>
![virtualgrid-end-user-capabilities-resizing-rows001](images/virtualgrid-end-user-capabilities-resizing-rows001.gif)

See [this]({%slug winforms/virtualgrid/rows/resizing-rows-programmatically%}) topic for more information on how the columns can be resized programmatically.
