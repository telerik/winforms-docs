---
title: Resizing Rows
page_title: Resizing Rows | RadVirtualGrid
description: This article shows how you can resize rows in RadVirtualGrid at runtime. 
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

>caption Figure 1: Mouse Resizing

![virtualgrid-end-user-capabilities-resizing-rows001](images/virtualgrid-end-user-capabilities-resizing-rows001.gif)

See [this]({%slug winforms/virtualgrid/rows/resizing-rows-programmatically%}) topic for more information on how the columns can be resized programmatically.

# See Also
* [Editing Behavior]({%slug winforms/gridview/end-user-capabilities/editing-behavior%})

* [Filtering]({%slug winforms/virtualgrid/end-user-capabilities/filtering%})

* [Keyboard Support]({%slug winforms/virtualgrid/end-user-capabilities/keyboard-support%})

* [Resizing Columns]({%slug winforms/virtualgrid/end-user-capabilities/resizing-columns%})

* [Scrolling Support]({%slug winforms/vitualgrid/end-user-capabilities/scrolling-support%})

* [Sorting]({%slug winforms/gridview/end-user-capabilities/sorting%})

