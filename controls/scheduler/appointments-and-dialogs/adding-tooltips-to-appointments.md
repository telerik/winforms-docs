---
title: Adding Tooltips to Appointments
page_title: Adding Tooltips to Appointments | RadScheduler
description: You can create and associate a tooltip to an appointment in RadScheduler by setting the ToolTipText property to a string.
slug: winforms/scheduler/appointments-and-dialogs/adding-tooltips-to-appointments
tags: adding,tooltips,to,appointments
published: True
position: 5
previous_url: scheduler-appointments-and-dialogs-adding-tooltips-to-appointments
---

# Adding Tooltips to Appointments

You can create and associate a tooltip to an appointment in __RadScheduler__ by setting the __ToolTipText__ property to a string. The following example creates a new ToolTip with a custom text. This example uses the __ToolTipText__ property of the Appointment class:

#### Add Appointment Tooltip

{{source=..\SamplesCS\Scheduler\AppointmentsAndDialogues\WorkingWithAppointments.cs region=toolTips}} 
{{source=..\SamplesVB\Scheduler\AppointmentsAndDialogues\WorkingWithAppointments.vb region=toolTips}} 

````C#
Appointment myAppointment = new Appointment(DateTime.Now, TimeSpan.FromMinutes(30), "Summary", "Description");
myAppointment.ToolTipText = "Custom Tooltip";
this.radScheduler1.Appointments.Add(myAppointment);

````
````VB.NET
Dim myAppointment As New Appointment(Date.Now, TimeSpan.FromMinutes(30), "Summary", "Description")
myAppointment.ToolTipText = "Custom Tooltip"
Me.RadScheduler1.Appointments.Add(myAppointment)

````

{{endregion}} 

# See Also

* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
* [Data Binding Introduction]({%slug winforms/scheduler/data-binding/introduction%})
* [Formatting Appointments]({%slug winforms/scheduler/appearance/formatting-appointments%})
* [Scheduler Element Provider]({%slug winforms/scheduler/fundamentals/scheduler-element-provider-%})




