---
title: Zoom
page_title: Zooming | RadCalendar
description: Zooming
slug: winforms/calendar/customizing-appearance/zooming
tags: zooming
published: True
position: 5
previous_url: calendar-customizing-appearance-zooming, /calendar/customizing-appearance/zooming
---

## FishEye Effect

__RadCalendar__ has a built-in date zoom functionality.The  __Zoom-In__ operation is activated by holding the left mouse button on a particular calendar cell. The __Zoom-Out__ operation is activated when the left mouse button is released. The following properties control zooming:

* __AllowFishEye:__ Enables the zooming functionality.

* __ZoomingFactor:__ Gets or sets the zooming factor of a cell which is handled by the zooming (fish eye) functionality. 

>caption Figure 1: Calendar with a zoomed-in date.

![calendar-features-zoom 001](images/calendar-features-zoom001.png)

## Navigation Zoom

The zoom functionality supports changing the current view type as well. With this functionality you are able to switch between Day, Month, and Year view by just clinking the header. This functionality is controlled by the following properties: 
* __HeaderNavigationMode:__ Specifies the navigation mode that will be used when user clicks on header element.

* __ZoomLevel:__ Get or sets the current level. The possible values are, *Days*, *Months*, *Years* and *YearRanges*.

>caption Figure 2: Header zoom navigation mode

![calendar-features-zoom 002](images/calendar-features-zoom002.gif)

>caution
Zoom navigation mode is not supporting in MultipleView of RadCalendar.
>

## See Also

* [Header]({%slug winforms/calendar/customizing-appearance/header%})
* [Footer]({%slug winforms/calendar/customizing-appearance/footer%})
* [Keyboard Navigation]({%slug  winforms/calendar/customizing-behavior/keyboard-navigation%})
* [MultiView]({%slug winforms/calendar/customizing-behavior/multiview-mode%})
* [Navigation]({%slug winforms/calendar/customizing-behavior/customizing-navigation%})
* [Repeating Events]({%slug winforms/calendar/customizing-behavior/repeating-events%})
* [Selecting Dates]({%slug winforms/calendar/customizing-behavior/selecting-dates%})
* [Column and Row Headers]({%slug winforms/calendar/customizing-behavior/column-and-row-headers%})
