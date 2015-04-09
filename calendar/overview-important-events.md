---
title: Important Events
page_title: Important Events
description: Important Events
slug: calendar-overview-important-events
tags: important,events
published: True
position: 2
---

# Important Events



## 
<table><th><tr><td>

<b> Event</b></td><td>

<b> Description</b></td></tr></th><tr><td>

<b>ElementRender</b></td><td>

The event handler receives an argument of type RenderElementEventArgs containing data related to this event. The following <b>RenderElementEventArgs</b> properties provide information specific to this event.
<table><th><tr><td>

Property</td><td>

Description</td></tr></th><tr><td>

Day</td><td>

Gets a reference to the RadCalendarDay logical object that represents the specified day to render.</td></tr><tr><td>

Element</td><td>

Gets a reference to the LightVisualElement object that represents visually the specified day to render. </td></tr><tr><td>

View</td><td>

Gets a reference to the CalendarView object currently displayed by RadCalendar, that contains the specified day to render.</td></tr></table></td></tr><tr><td>

<b>SelectionChanging</b></td><td>

This event is fired just prior to a selection change and allows you to programmatically cancel the change. The SelectionEventArgs passed to this event include <b>Date, </b>a <b>DateTimeCollection </b>of selected dates and <b>Cancel </b>that can be set to true to disallow the selection from being changed.</td></tr><tr><td>

<b>SelectionChanged</b></td><td>

This event is fired when a day, week, month or year is changed.

#### __[C#] Responding to SelectionChanged__

{{source=..\SamplesCS\Calendar\Calendar1.cs region=respondingToEvents}}
	        void radCalendar1_SelectionChanged(object sender, EventArgs e)
	        {
	            radListControl1.Items.Add(new RadListDataItem(radCalendar1.SelectedDate.ToShortDateString().ToString()));
	        }
	{{endregion}}



#### __[VB.NET] Responding to SelectionChanged__

{{source=..\SamplesVB\Calendar\Calendar1.vb region=respondingToEvents}}
	    Private Sub radCalendar1_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs)
	        RadListControl1.Items.Add(New RadListDataItem(RadCalendar1.SelectedDate.ToShortDateString().ToString()))
	    End Sub
	{{endregion}}

</td></tr><tr><td>

<b>ViewChanging</b></td><td>

This event fires just prior to <b>ViewChanged </b>and allows you to cancel.  The <b>ViewChangingEventArgs </b>passed to this event include the <b>View </b>and a boolean <b>Cancel </b>property.</td></tr><tr><td>

<b>ViewChanged</b></td><td>

This event is fired when the currently visible view (for example a YearView Or MonthsView) is changed.</td></tr><tr><td>

<b>ZoomChanging</b></td><td>

This event is fired when the <b>ZoomLevel</b> is changing in HeaderNavigationMode.<i>Zoom</i>.
            </td></tr><tr><td>

<b>ZoomChanged</b></td><td>

This event is fired when the <b>ZoomLevel</b> is changed in HeaderNavigationMode.<i>Zoom</i>.</td></tr></table>
