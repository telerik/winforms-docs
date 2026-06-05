---
title: MultiDay View
page_title: MultiDay View - WinForms Scheduler Control
description: MultidayView in WinForms Scheduler shows multiple date-time intervals with appointments arranged one next to another.
slug: winforms/scheduler/views/multiday-view
tags: multiday,view
published: True
position: 5
previous_url: scheduler-views-multiday-view
---

# MultiDay View

## Overview

__MultidayView__ shows multiple date-time intervals with appointments arranged one next to another. In the screenshot below we have __MultidayView__ with two intervals – the first one starts from November 07 with duration of two days and the second on starts from November 11 with duration of 3 days.

>caption Figure 1: Multi Day View
![WinForms RadScheduler Multi Day View](images/scheduler-views-multiday-view001.png)

## Using MultidayView

1\. In order to set the current view of __RadScheduler__ to __MultidayView__, use the __ActiveViewType__ or __ActiveView__ properties:

<snippet id='scheduler-multidayview-multiday-cs' />
<snippet id='scheduler-multidayview-multiday-vb' />



2\. To add, remove or modify a date-time __Interval__ in SchedulerMultiDayView instance use the __Intervals__ collection.

3\. To get all appointments in a particular interval, use the __GetAppointmentsInInterval__ helper method:

<snippet id='scheduler-multidayview-interval-cs' />
<snippet id='scheduler-multidayview-interval-vb' />



4\. To get all appointments in the view, use the __Appointments__ collection.

>note  __SchedulerMultiDayView__ inherits the rest of its properties from the base __SchedulerDayView__ and therefore you can refer to the [Day View]({%slug winforms/scheduler/views/day-view%}) article for additional options.
>

# See Also

* [Common Visual Properties]({%slug winforms/scheduler/views/common-visual-properties%})
* [Working with Views]({%slug winforms/scheduler/views/working-with-views%})
* [Views Walkthrough]({%slug winforms/scheduler/views/views-walkthrough%})
* [Grouping by Resources]({%slug winforms/scheduler/views/grouping-by-resources%})
* [Exact Time Rendering]({%slug winforms/scheduler/views/exact-time-rendering%})
