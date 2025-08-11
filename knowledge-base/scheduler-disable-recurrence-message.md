---
title: Disabling or Replacing Recurrence Change Message in UI for WinForms Scheduler
description: Learn how to disable or replace the recurrence change message displayed in UI for WinForms Scheduler when modifying recurring appointments.
type: how-to
page_title: Disable or Customize Recurring Appointment Message in WinForms Scheduler
meta_title: Disable or Customize Recurring Appointment Message in WinForms Scheduler
slug: scheduler-disable-recurrence-message
tags: scheduler, reminder, recurrence, localization, behavior
res_type: kb
ticketid: 1082151
---

## Environment
|Product Version|Product|Author|
|----|----|----|
|2025.2.520|RadScheduler for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

When moving or changing a recurring appointment in UI for WinForms Scheduler, a warning message appears asking whether to modify the entire recurring appointment or a single occurrence. I want to disable this message or replace it with custom text.


## Solution

To disable the recurrence change message, override the dragging behavior of the Scheduler using the following code:

````C#

public SurroundingClass()
    {
        InitializeComponent();
        this.RadScheduler1.SchedulerElement.DragDropBehavior = new CustomDraggingBehavior(this.RadScheduler1.SchedulerElement);
    }

    public class CustomDraggingBehavior : AppointmentDraggingBehavior
    {
        public CustomDraggingBehavior(SchedulerVisualElement activeOwner) : base(activeOwner)
        {
        }

        protected override bool ValidateOccurrenceDropTarget(DateTime targetStartDate, DateTime targetEndDate, bool allDay)
        {
            return true;
        }
    }

````

Alternatively, replace the message text by specifying the `RadSchedulerStringId.RecurrenceDragDropCreateExceptionDialogText` string in the `RadSchedulerLocalizationProvider`. Refer to the Telerik documentation for [localization and translating strings](https://docs.telerik.com/devtools/winforms/scheduler/localization/translating-strings).

## See Also

* [RadScheduler Localization Provider](https://docs.telerik.com/devtools/winforms/scheduler/localization/translating-strings)
* [RadScheduler Overview](https://docs.telerik.com/devtools/winforms/scheduler/overview) 

