---
title: Appointment Factory
page_title: Appointment Factory - WinForms Scheduler Control
description: WinForms Scheduler uses a AppointmentFactory that is responsible for the creation of Appointment instances.
slug: scheduler-appointment-factory
tags: scheduler, appointment, factory
published: True
position: 0 
---

# Appointment Factory 

**RadScheduler** uses an **AppointmentFactory** to create **IEvent** objects which represent the appointments. It implements the **IAppointmentFactory** interface which requires only the **CreateNewAppointment** method's implementation.

This factory is very useful when you need to use a custom Appointment class. Just override the **CreateNewAppointment** method and run a new instance of your custom class:

````C#
    
public class CustomAppointmentFactory : IAppointmentFactory
{
    public IEvent CreateNewAppointment()
    {
        return new AppointmentWithEmail();
    }
}

````
````VB.NET
Public Class CustomAppointmentFactory
Implements IAppointmentFactory
    Public Function CreateNewAppointment() As IEvent Implements IAppointmentFactory.CreateNewAppointment
        Return New AppointmentWithEmail()
    End Function
End Class

````

Then, you need to apply this factory to your **RadScheduler**:

````C#
this.radScheduler1.AppointmentFactory = new CustomAppointmentFactory();

````
````VB.NET
Me.RadScheduler1.AppointmentFactory = New CustomAppointmentFactory()
````

Now, if you double click a **SchedulerCellElement** or create a new appointment via the context menu, the custom class for appointments will be used.

# See Also

* [Adding a Custom Field to the EditAppointment Dialog]({%slug winforms/scheduler/appointments-and-dialogs/adding-a-custom-field-to-the-editappointment-dialog%}) 