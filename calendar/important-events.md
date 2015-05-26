---
title: Important Events
page_title: Important Events | UI for WinForms Documentation
description: Important Events
slug: winforms/calendar/important-events
tags: important,events
published: True
position: 2
---

# Important Events



## 


|  __Event__  |  __Description__  |
| ------ | ------ |
| __ElementRender__ |The event handler receives an argument of type RenderElementEventArgs containing data related to this event. The following __RenderElementEventArgs__ properties provide information specific to this event.


| Property | Description |
| ------ | ------ |
|Day|Gets a reference to the RadCalendarDay logical object that represents the specified day to render.|
|Element|Gets a reference to the LightVisualElement object that represents visually the specified day to render.|
|View|Gets a reference to the CalendarView object currently displayed by RadCalendar, that contains the specified day to render.||
| __SelectionChanging__ |This event is fired just prior to a selection change and allows you to programmatically cancel the change. The SelectionEventArgs passed to this event include __Date,__ a __DateTimeCollection__ of selected dates and __Cancel__ that can be set to true to disallow the selection from being changed.|
| __SelectionChanged__ |This event is fired when a day, week, month or year is changed.#_[C#] Responding to SelectionChanged_

	



{{source=..\SamplesCS\Calendar\Calendar1.cs region=respondingToEvents}} 
{{source=..\SamplesVB\Calendar\Calendar1.vb region=respondingToEvents}} 

````C#
        void radCalendar1_SelectionChanged(object sender, EventArgs e)
        {
            radListControl1.Items.Add(new RadListDataItem(radCalendar1.SelectedDate.ToShortDateString().ToString()));
        }
````
````VB.NET
    Private Sub radCalendar1_SelectionChanged(ByVal sender As Object, ByVal e As EventArgs)
        RadListControl1.Items.Add(New RadListDataItem(RadCalendar1.SelectedDate.ToShortDateString().ToString()))
    End Sub
    '
````

{{endregion}} 


|
| __ViewChanging__ |This event fires just prior to __ViewChanged__ and allows you to cancel.  The __ViewChangingEventArgs__ passed to this event include the __View__ and a boolean __Cancel__ property.|
| __ViewChanged__ |This event is fired when the currently visible view (for example a YearView Or MonthsView) is changed.|
| __ZoomChanging__ |This event is fired when the __ZoomLevel__ is changing in HeaderNavigationMode. *Zoom* .|
| __ZoomChanged__ |This event is fired when the __ZoomLevel__ is changed in HeaderNavigationMode. *Zoom* .|
