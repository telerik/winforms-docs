---
title: Common Visual Properties
page_title: Common visual properties - Winforms Scheduler Control
description: There are some properties which can modify the appearance of the appointments in RadScheduler and are common for all views.
slug: winforms/scheduler/views/common-visual-properties
tags: common,visual,properties
published: True
position: 1
previous_url: scheduler-views-common-visual-properties
---

# Common Visual Properties

Some properties can modify the appearance of the appointments in __RadScheduler__ and are common for all views.

## Exact Time Rendering

Exact Time Rendering increases readability of the appointments by rendering them at its exact Start and End time corresponding  with the time slots around. When __ExactTimeRendering__ is enabled, appointments will not snap to the nearest cell border but will render exactly on the location where their Start and End dates are expected to be. To enable this functionality, use the __ExactTimeRendering__  property:

<snippet id='scheduler-commonproperties-exacttimerendering-cs' />
<snippet id='scheduler-commonproperties-exacttimerendering-vb' />



>caption Figure 1: Exact Time Rendering
![WinForms RadScheduler Exact Time Rendering](images/scheduler-views-common-visual-properties001.png)

## AutoSize Appointments

When __AutoSizeAppointments__ is enabled, appointment elements will automatically adjust their height so that they can fully display their summary. This property will not have any effect in DayView and WeekView because the height in these views is determined by the appointment’s dates.

<snippet id='scheduler-commonproperties-autosizeappointments-cs' />
<snippet id='scheduler-commonproperties-autosizeappointments-vb' />



>caption Figure 2: AutoSize Appointments
![WinForms RadScheduler AutoSize Appointments](images/scheduler-views-common-visual-properties002.png)

## Appointments’ Height

When __AutoSizeAppointments__ is disabled, the appointments in Month and Timeline views have a fixed height which can be modified by using the __AppointmentsHeight__ property.

<snippet id='scheduler-commonproperties-appointmentsheight-cs' />
<snippet id='scheduler-commonproperties-appointmentsheight-vb' />



## Spacing Between Appointments

Using the __AppointmentsMargin__ property, you can specify the spacing between the appointment elements:

<snippet id='scheduler-commonproperties-appointmentsmargin-cs' />
<snippet id='scheduler-commonproperties-appointmentsmargin-vb' />



>caption Figure 3: Appointments Spacing
![WinForms RadScheduler Appointments Spacing](images/scheduler-views-common-visual-properties003.png)

# See Also

* [Common Visual Properties]({%slug winforms/scheduler/views/common-visual-properties%})
* [Working with Views]({%slug winforms/scheduler/views/working-with-views%})
* [Views Walkthrough]({%slug winforms/scheduler/views/views-walkthrough%})
* [Grouping by Resources]({%slug winforms/scheduler/views/grouping-by-resources%})
* [Exact Time Rendering]({%slug winforms/scheduler/views/exact-time-rendering%})
