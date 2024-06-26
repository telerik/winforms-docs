---
title: Removing Appointment Shadow in RadScheduler for WinForms
description: Learn how to eliminate the shadow effect from appointments in RadScheduler for WinForms.
type: how-to
page_title: How to Remove Appointment Shadow in RadScheduler for WinForms
slug: remove-appointment-shadow
tags: scheduler, appointment, shadow, customization
res_type: kb
ticketid: 1655808
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.2.514|RadScheduler for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

While working with RadScheduler for WinForms, you might notice a shadow effect applied to appointments. This shadow comes from the default appointment backgrounds. This article details how to remove the shadow effect from these appointments. 

## Solution

To remove the appointment shadow, you will need to access all the `IAppointmentBackgroundInfo` objects and set their `ShadowColor` to `Color.Transparent`. This is achieved by getting the background storage from the scheduler component and iterating through its items to apply transparency. Here is how you can do it:

1. Access the background storage of the scheduler. Then you can iterate the `AppointmentBackgroundInfo` items and set the `ShadowColor` to transparent:

````C#

ISchedulerStorage<IAppointmentBackgroundInfo> backGroundStorage = this.radScheduler1.GetBackgroundStorage();
foreach (AppointmentBackgroundInfo item in backGroundStorage)
{
    item.ShadowColor = Color.Transparent;
}

````
````VB.NET

Dim backGroundStorage As ISchedulerStorage(Of IAppointmentBackgroundInfo) = Me.radScheduler1.GetBackgroundStorage()

    For Each item As AppointmentBackgroundInfo In backGroundStorage
        item.ShadowColor = Color.Transparent
    Next

````


## See Also

* [Working with Appointments in RadScheduler for WinForms](https://docs.telerik.com/devtools/winforms/controls/scheduler/appointments-and-dialogs/working-with-appointments)
