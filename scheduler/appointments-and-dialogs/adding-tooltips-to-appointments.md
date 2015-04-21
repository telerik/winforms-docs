---
title: Adding Tooltips to Appointments
page_title: Adding Tooltips to Appointments
description: Adding Tooltips to Appointments
slug: scheduler-appointments-and-dialogs-adding-tooltips-to-appointments
tags: adding,tooltips,to,appointments
published: True
position: 5
---

# Adding Tooltips to Appointments



## 

You can create and associate a tooltip to an appointment in RadScheduler by setting the __ToolTipText__property to a string. The following example creates a new ToolTip with a custom text. This example uses the __ToolTipText__property of the Appointment class:



#### __[C#]__

{{source=..\SamplesCS\Scheduler\AppointmentsAndDialogues\WorkingWithAppointments.cs region=toolTips}}
	            Appointment myAppointment = new Appointment(DateTime.Now, TimeSpan.FromMinutes(30), "Summary", "Description");
	            myAppointment.ToolTipText = "Custom Tooltip";
	            this.radScheduler1.Appointments.Add(myAppointment);
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\AppointmentsAndDialogues\WorkingWithAppointments.vb region=toolTips}}
	        Dim myAppointment As New Appointment(Date.Now, TimeSpan.FromMinutes(30), "Summary", "Description")
	        myAppointment.ToolTipText = "Custom Tooltip"
	        Me.RadScheduler1.Appointments.Add(myAppointment)
	{{endregion}}




