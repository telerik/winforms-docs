---
title: MultiDay View
page_title: MultiDay View | UI for WinForms Documentation
description: MultidayView shows multiple date-time intervals with appointments arranged one next to another.
slug: winforms/scheduler/views/multiday-view
tags: multiday,view
published: True
position: 5
previous_url: scheduler-views-multiday-view
---

# MultiDay View


## Overview

MultidayView shows multiple date-time intervals with appointments arranged one next to another. In the screenshot below we have MultidayView with two intervals – the first one starts from November 07 with duration of two days and the second on starts from November 11 with duration of 3 days.![scheduler-views-multiday-view 001](images/scheduler-views-multiday-view001.png)

## Using MultidayView


1\. In order to set the current view of RadScheduler to MultidayView, use the ActiveViewType or ActiveView properties:

{{source=..\SamplesCS\Scheduler\Views\MultiDayView.cs region=multiDay}} 
{{source=..\SamplesVB\Scheduler\Views\MultiDayView.vb region=multiDay}} 

````C#
this.radScheduler1.ActiveViewType = SchedulerViewType.MultiDay;
//or
SchedulerMultiDayView multiDayView = new SchedulerMultiDayView();
DateTime startDate = DateTime.Today;
multiDayView.Intervals.Add(startDate, 2);
multiDayView.Intervals.Add(startDate.AddDays(4), 3);
this.radScheduler1.ActiveView = multiDayView;

````
````VB.NET
Me.RadScheduler1.ActiveViewType = SchedulerViewType.MultiDay
'or
Dim multiDayView As New SchedulerMultiDayView()
Dim startDate As Date = Date.Today
multiDayView.Intervals.Add(startDate, 2)
multiDayView.Intervals.Add(startDate.AddDays(4), 3)
Me.RadScheduler1.ActiveView = multiDayView

````

{{endregion}} 

2\. To add, remove or modify a date-time __Interval__ in SchedulerMultiDayView instance use the __Intervals__ collection.

3\. To get all appointments in a particular interval, use the __GetAppointmentsInInterval__ helper method:

{{source=..\SamplesCS\Scheduler\Views\MultiDayView.cs region=interval}} 
{{source=..\SamplesVB\Scheduler\Views\MultiDayView.vb region=interval}} 

````C#
DateTimeInterval interval = new DateTimeInterval();
interval.Duration = new TimeSpan(20, 5, 25);
multiDayView.GetAppointmentsInInterval(interval);

````
````VB.NET
Dim interval As New DateTimeInterval()
interval.Duration = New TimeSpan(20, 5, 25)
multiDayView.GetAppointmentsInInterval(interval)

````

{{endregion}} 

4\. To get all appointments in the view, use the __Appointments__ collection.

>note  __SchedulerMultiDayView__ inherits the rest of its properties from the base __SchedulerDayView__ and therefore you can refer to the [Day View]({%slug winforms/scheduler/views/day-view%}) article for additional options.
>

