---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadScrollBar
description: RadHScrollBar and RadVScrollBar share the same properties. The only difference between the two is that the former is displayed horizontally while the latter is displayed vertically.
slug: winforms/track-and-status-controls/scrollbar/programming-radscrollbars
tags: programming,radscrollbars
published: True
position: 2
previous_url: track-and-status-controls-scrollbar-programming-radscrollbars
---

# Properties

__RadHScrollBar__ and __RadVScrollBar__ share the same properties. The only difference between the two is that the former is displayed horizontally while the latter is displayed vertically.

|Property|Description|
|----|----|
|**ScrollBarElement**|Gets the instance of RadScrollBarElement wrapped by this control. RadScrollBarElement is the main element in the hierarchy tree and encapsulates the actual functionality of both RadHScrollBar and RadVScrollBar.|
|**ThumbLengthProportion**|ets or sets a value between 0.0 and 1.0 that indicates what part of the scrollable area can be occupied by the thumb. If the value is 0.0 then the thumb should be with length 0 but the property MinThumbLength will cause the thumb to be larger. If the value is 1.0 the the thumb takes the whole area between the two scrolling buttons. Negative value means that the thumb length should be calculated automatically based on Minimum, Maximum and LargeChange values.|
|**MinThumbLength**|Gets or sets the minimum length of the scrolling thumb.|
|**ThumbLength**|Gets the length of the scrolling thumb. Thumb length is the thumb's height for vertical scroll bar and the thumb's width for horizontal scroll bar.|
|**Minimum**|Gets or sets the lower limit for the values of the scrollable range.|
|**Maximum**|Gets or sets the upper limit of the scrollable range.|
|**Value**|Gets or sets a numeric value that represents the current position of the scroll thumb on the scroll bar.|
|**SmallChange**|Gets or sets the value to be added to or subtracted from the Value property when the scroll thumb is moved a small distance.|
|**LargeChange**|Gets or sets a value to be added to or subtracted from the Value property when the scroll thumb is moved a large distance.|
|**ScrollType**|Gets or sets the scroll type - it could be horizontal or vertical.|

>caution Don't forget to set the __Maximum__ property to reflect the maximum possible offset upon scrolling. The size of the __scrollable height__ equals the __total height__ of the scrollable content minus the __visible height__ .

# Methods

|Method|Description|
|----|----|
|**PerformSmallDecrement**|Decrements the thumb position by the number of small steps given as a parameter. The distance of a small step is determined by the SmallChange property.|
|**PerformSmallIncrement**|Increments the thumb position by the number of small steps given as a parameter. The distance of a small step is determined by the SmallChange property.|
|**PerformLargeDecrement**|Decrements the thumb position by the number of large steps given as a parameter. The distance of a large step is determined by the LargeChange property.|
|**PerformLargeIncrement**|Increments the thumb position by the number of large steps given as a parameter. The distance of a large step is determined by the LargeChange property.|
|**PerformFirst**|Scrolls to the first position specified by the Minimum property.|
|**PerformLast**|Scrolls to the last position specified by the Maximum property.|
|**PerformScrollTo**|Scrolls to the specified position.|

# Events

|Event|Description|
|----|----|
|**Scroll**|Fires when the track scroll bar changes.|
|**ValueChanged**|Occurs when the value (i.e. the scroll thumb position) changes.|
|**ScrollParameterChanged**|Occurs when a scrolling parameter value changes (Maximum, Minimum, LargeChange and SmallChange).|

# See Also

* [Properties]()
* [Methods]()
* [Events]()
