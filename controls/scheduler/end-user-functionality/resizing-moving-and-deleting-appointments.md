---
title: Resizing, Moving, and Deleting Appointments
page_title: Resizing, Moving, and Deleting Appointments | RadScheduler
description: Resizing, Moving, and Deleting Appointments
slug: winforms/scheduler/end-user-functionality/resizing,-moving,-and-deleting-appointments
tags: resizing,,moving,,and,deleting,appointments
published: True
position: 3
previous_url: scheduler-end-user-functionality-resizing-moving-and-deleting-appointments
---

# Resizing, Moving, and Deleting Appointments

You can make simple changes to the appointments that RadScheduler displays without bringing up the edit form or in-line editor.

## Resizing Appointments

To change the duration of an appointment, select the appointment and move the cursor to the top/bottom (in Day view and Week view) or left/right (in Month view and Timeline view) part of the rectangle and pull it to resize the appointment. This will change the appointment's time and/or date of occurrence, which will automatically be reflected in the appointment.

>caption Figure 1: Start Resizing

![scheduler-end-user-functionality-resizing-moving-and-deleting-appointments 001](images/scheduler-end-user-functionality-resizing-moving-and-deleting-appointments001.png)

It is also allowed to resize a recurring appointment. This would lead to automatically creating an exception.

>caption Figure 2: Resizing a Recurring Appointment

![scheduler-end-user-functionality-resizing-moving-and-deleting-appointments 003](images/scheduler-end-user-functionality-resizing-moving-and-deleting-appointments003.gif)

## Moving Appointments

You can drag and drop an appointment to another time slot and/or day (depending on the view), thus effectively changing the time and/or date of its occurrence. Simply click on an appointment, hold the moue button down, drag it to a new location, and release the mouse. The appointment will automatically adjust its start and end times. 

When you start moving an appointment a feedback alpha blended form is shown as a visual indicator. It shows what will be the start and end time of the dragged appointment.

You can drag a recurring appointment and drop it onto a new time slot as well. As a result an exception appointment would be created if the new location is valid. The user should confirm the creation of an exception appointment.

>caption Figure 3: Moving a Recurring Appointment

![scheduler-end-user-functionality-resizing-moving-and-deleting-appointments 004](images/scheduler-end-user-functionality-resizing-moving-and-deleting-appointments004.gif)

## Deleting Appointments

The user can delete an appointment:

1. By selecting the appointment in the scheduler and hitting the DELETE key.

1. By double clicking on the appointment to open the "Edit Appointment Dialog" and pressing the Delete button to remove it from the RadScheduler’s Appointments collection.

>caption Figure 4: Deleting an Appointment

![scheduler-end-user-functionality-resizing-moving-and-deleting-appointments 002](images/scheduler-end-user-functionality-resizing-moving-and-deleting-appointments002.png)

When you try to delete a recurring appointment, you are asked to confirm whether the delete operation should affect the whole series or just the selected appointment.

>caption Figure 5: Deleting a Recurring Appointment

![scheduler-end-user-functionality-resizing-moving-and-deleting-appointments 005](images/scheduler-end-user-functionality-resizing-moving-and-deleting-appointments005.gif)

# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Working with Appointments]({%slug winforms/scheduler/appointments-and-dialogs/working-with-appointments%})
* [Scheduler Navigator]({%slug winforms/scheduler/scheduler-navigator/overview%})
* [Printing Overview]({%slug winforms/scheduler/print-support%})
