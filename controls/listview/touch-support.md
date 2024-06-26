---
title: Touch Support
page_title: Touch Support - UI for WinForms Documentation
description: Touch Support
slug: winforms/listview/touch-support
tags: touch,support
published: True
position: 13
previous_url: listview-touch-support
---

# Touch Support

RadListView supports scrolling, column reorder and column resize operations via touch interface.

## Scrolling

To scroll the control simply drag the whole control to the desired location (left, right, up, down).

![WinForms RadListView Touch Support](images/listview-touch-support001.png)

>note By default, the **EnableKineticScrolling** property is set to **false**.Set it to **true** in order to benefit from the scrolling option.

Here is the result of scrolling the control down.

![WinForms RadListView Touch Scroll](images/listview-touch-support002.png)

## Column Reorder

In order to reorder the columns, just drag the desired column title to its new location.

![WinForms RadListView Column Reorder](images/listview-touch-support003.png)

Here you can see the dragged "*Picture*" column from the left of the control to the right of it.

![WinForms RadListView Drag Column](images/listview-touch-support004.png)

## Column Resize

Resizing the columns is achieved by the zoom gesture applied to the desired column title.

![WinForms RadListView Touch Column Resize](images/listview-touch-support005.png)

And the result is:<br>![WinForms RadListView Touch Support Drag](images/listview-touch-support006.png)

# See Also

 * [Windows Touch Gestures](http://msdn.microsoft.com/en-us/library/windows/desktop/dd940543(v=vs.85).aspx)
