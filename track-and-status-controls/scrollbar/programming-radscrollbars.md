---
title: Programming RadScrollBars
page_title: Programming RadScrollBars
description: Programming RadScrollBars
slug: track-and-status-controls-scrollbar-programming-radscrollbars
tags: programming,radscrollbars
published: True
position: 1
---

# Programming RadScrollBars



__RadHScrollBar__ and __RadVScrollBar__ share the same properties. The only difference between the two is that the former is displayed horizontally while the latter is displayed vertically.

The most important properties are:


<table><tr><td><b>Value</b></td><td>

Gets the current value for the thumb position</td></tr><tr><td><b>Minimum</b></td><td>

Gets or sets the minimum value of the control when the thumb is at the start</td></tr><tr><td><b>Maximum</b></td><td>

Gets or sets the maximum value of the control when the thumb is at the end</td></tr><tr><td><b>SmallChange</b></td><td>

Gets or sets the amount that the <b>Value</b> property changes when you click on the arrow buttons </td></tr><tr><td><b>LargeChange</b></td><td>

Gets or sets the amount that the <b>Value</b> property changes when you click between the thumb and an arrow</td></tr><tr><td><b>MinThumbLength</b></td><td>

Gets or sets the minimum length of the thumb </td></tr><tr><td><b>ThumbLengthProportion</b></td><td>Gets or sets the amount of the scroll bar that the thumb takes up (between 0 and 1). If set to less than 0, the length is determined automatically</td></tr></table>

## Scroll Event

You have to handle the __Scroll__event to track scrollbar changes. Use the __Value__property to determine the current thumb position. In general, you have to assign the negated __Value__to the Top property of the control that is to be scrolled. Please refer to [Getting Started]({%slug track-and-status-controls-scrollbar-getting-started%}) section about using this event.


