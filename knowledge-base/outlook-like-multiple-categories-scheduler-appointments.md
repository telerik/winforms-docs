---
title: How to Simulate Outlook-like Multiple Categories in Scheduler's Appointments
description: This article shows how you can simulate Outlook-like multiple categories in the WinForms Scheduler's appointments.
type: how-to
page_title: How to Simulate Outlook-like Multiple Categories in Scheduler's Appointments
slug: outlook-like-multiple-categories-scheduler-appointments
position: 0
tags: scheduler, categorize, outlook, multiple, category
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2023.1.314|RadScheduler for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 

## Description

This example demonstrates a sample approach how to simulate the multiple categories that Outlook offers for marking its appointments with tags/categories:

|MS Outlook|RadScheduler|
|----|----|
|![outlook-like-multiple-categories-scheduler-appointments001](images/outlook-like-multiple-categories-scheduler-appointments001.png)|![outlook-like-multiple-categories-scheduler-appointments002](images/outlook-like-multiple-categories-scheduler-appointments002.png)|

## Solution 
This solution requires the following steps:

1. It is necessary to extend the default visual **AppointmentElement** and add a container for visualizing the colored tags/categories at the bottom right corner of the visual elements. The **SchedulerElementProvider** will help you for replacing the default element with the custom implementation: [Custom Appointment Element]({%slug winforms/scheduler/appointments-and-dialogs/custom-appointment-element%})

2. Create a derivative of the data event, the **Appointment** class and add a new property **CategoryIds** for storing the selected categories/tags: [Custom Appointment Element]({%slug winforms/scheduler/appointments-and-dialogs/custom-appointment-element%})

3. Extend the **EditAppointmentDialog** and hide the Backgrounds drop down. Then, add a new checked drop down for the categories: [Adding a Custom Field to the EditAppointment Dialog]({%slug winforms/scheduler/appointments-and-dialogs/adding-a-custom-field-to-the-editappointment-dialog%})

>note A complete solution providing a C# and VB.NET project is available [here]({%slug https://github.com/telerik/winforms-sdk/tree/master/Scheduler/MultipleCategoriesInAppointments%}).

# See Also

* [Appointment Styles]({%slug scheduler-appointment-styles%})
* [Custom Appointment Element]({%slug winforms/scheduler/appointments-and-dialogs/custom-appointment-element%})
* [Adding a Custom Field to the EditAppointment Dialog]({%slug winforms/scheduler/appointments-and-dialogs/adding-a-custom-field-to-the-editappointment-dialog%})
* [Customize Appointment Backgrounds and Statuses in RadScheduler]({%slug customize-appointment-backgrounds-and-statuses%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})
 





 

 