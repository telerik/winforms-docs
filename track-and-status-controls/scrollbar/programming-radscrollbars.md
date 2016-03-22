---
title: Programming RadScrollBars
page_title: Programming RadScrollBars | UI for WinForms Documentation
description: RadHScrollBar and RadVScrollBar share the same properties. The only difference between the two is that the former is displayed horizontally while the latter is displayed vertically.
slug: winforms/track-and-status-controls/scrollbar/programming-radscrollbars
tags: programming,radscrollbars
published: True
position: 2
previous_url: track-and-status-controls-scrollbar-programming-radscrollbars
---

# Programming RadScrollBars

__RadHScrollBar__ and __RadVScrollBar__ share the same properties. The only difference between the two is that the former is displayed horizontally while the latter is displayed vertically.

The most important properties are:

|Property|Description|
|-----|-----|
| __Value__ |Gets the current value for the thumb position|
| __Minimum__ |Gets or sets the minimum value of the control when the thumb is at the start|
| __Maximum__ |Gets or sets the maximum value of the control when the thumb is at the end|
| __SmallChange__ |Gets or sets the amount that the __Value__ property changes when you click on the arrow buttons|
| __LargeChange__ |Gets or sets the amount that the __Value__ property changes when you click between the thumb and an arrow|
| __MinThumbLength__ |Gets or sets the minimum length of the thumb|
| __ThumbLengthProportion__ |Gets or sets the amount of the scroll bar that the thumb takes up (between 0 and 1). If set to less than 0, the length is determined automatically|

>caution Don't forget to set the __Maximum__ property to reflect the maximum possible offset upon scrolling. The size of the __scrollable height__ equals the __total height__ of the scrollable content minus the __visible height__ .
>


## Scroll Event

You have to handle the __Scroll__ event to track scrollbar changes. Use the __Value__ property to determine the current thumb position. In general, you have to assign the negated __Value__ to the Top property of the control that is to be scrolled. Please refer to [Getting Started]({%slug winforms/track-and-status-controls/scrollbar/getting-started%}) section about using this event.
