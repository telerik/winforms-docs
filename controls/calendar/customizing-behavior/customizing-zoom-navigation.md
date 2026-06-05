---
title: Customizing Zoom Navigation
page_title: Customizing Zoom Navigation - RadCalendar
description: Customizing Zoom Navigation
slug: winforms/calendar/customizing-behavior/customizing-zoom-navigation
tags: customizing,zoom,navigation
published: True
position: 4
previous_url: calendar-customizing-behavior-customizing-zoom-navigation
---

# Customizing Zoom Navigation

This article will guide you through the process of creating a month-year picker. For this purpose, it is necessary to set the __HeaderNavigationMode__ property to HeaderNavigationMode.*Zoom* and set the __ZoomLevel__ property to ZoomLevel.*Months*. This will allow the user to select a specific __CalendarCellElement__ and navigate upwards/downwards in the __RadCalendar__ similar to Windows calendar. 

<snippet id='calendar-customizing-behavior-customizing-zoom-navigation-monthyearpicker-cs' />
<snippet id='calendar-customizing-behavior-customizing-zoom-navigation-monthyearpicker-vb' />



 
In addition, you should subscribe to the __ZoomChanging__ event and stop navigation from the currently selected month to its days representation and from a year to a range of years.

<snippet id='calendar-customizing-behavior-customizing-zoom-navigation-monthyearpickerevent-cs' />
<snippet id='calendar-customizing-behavior-customizing-zoom-navigation-monthyearpickerevent-vb' />



>caption Figure 1: The zoom level is limited to months.

![WinForms RadCalendar The Zoom Level is Limited to Months](images/calendar-customizing-behavior-customizing-zoom-navigation001.gif)

## See Also

* [Zoom]({%slug winforms/calendar/customizing-appearance/zooming%})
