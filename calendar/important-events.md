---
title: Important Events
page_title: Important Events | UI for WinForms Documentation
description: Important Events
slug: winforms/calendar/important-events
tags: important,events
published: True
position: 2
previous_url: calendar-overview-important-events
---

# Important Events
 
<table>
<th>Event</th><th>Description</th>
<tr><td> <b>ElementRender</b> </td><td>
The event handler receives an argument of type RenderElementEventArgs containing data related to this event. The following RenderElementEventArgs properties provide information specific to this event.
<table>
<th>Property</th><th>Description</th>
<tr><td>Day</td><td>Gets a reference to the RadCalendarDay logical object that represents the specified day to render.</td></tr>
<tr><td>Element</td><td>Gets a reference to the LightVisualElement object that represents visually the specified day to render.</td></tr>
<tr><td>View</td><td>Gets a reference to the CalendarView object currently displayed by RadCalendar, that contains the specified day to render.</td></tr>
</table>
</td></tr>
<tr><td>__SelectionChanging__</td><td>This event is fired just prior to a selection change and allows you to programmatically cancel the change. The SelectionEventArgs passed to this event include __Date,__ a __DateTimeCollection__ of selected dates and __Cancel__ that can be set to true to disallow the selection from being changed.</td></tr>
<tr><td>__SelectionChanged__</td><td>This event is fired when a day, week, month or year is changed.</td></tr>
<tr><td>__ViewChanging__</td><td>This event fires just prior to __ViewChanged__ and allows you to cancel.  The __ViewChangingEventArgs__ passed to this event include the __View__ and a boolean __Cancel__ property.</td></tr>
<tr><td>__ViewChanged__</td><td>This event is fired when the currently visible view (for example a YearView Or MonthsView) is changed.</td></tr>
<tr><td>__ZoomChanging__ </td><td>This event is fired when the __ZoomLevel__ is changing in HeaderNavigationMode. *Zoom* .</td></tr>
<tr><td>__ZoomChanged__ </td><td>This event is fired when the __ZoomLevel__ is changed in HeaderNavigationMode. *Zoom* .</td></tr>
</table>
