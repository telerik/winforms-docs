---
title: Copy/Paste custom fields in RadScheduler
description: This article shows how you can copy/paste appointment's custom fields in RadScheduler.
type: how-to
page_title: How to copy/paste custom fields in RadScheduler
slug: scheduler-copy-paste-custom-fields
position: 0
tags: scheduler, copy, paste
res_type: kb
---

## Environment
 
|Product Version|Product|Author|
|----|----|----|
|2019.2.618|RadScheduler for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|
 

## Description

When you have a custom implementation for the **Appointment** class, e.g. you extended the **Appointment** class with an **Email** field and try to copy/paste it, only the content of the basic **Appointment** class are being transferred. 
A common requirement is to copy/paste the **Email** field as well.

## Solution 

In order to copy/paste a custom field (e.g. **Email**) in the **Appointment**, you can store the value of the selected object in the **AppointmentCopying** event and assign the stored value in the **AppointmentAdded** event. Here is demonstrated a sample approach: 


````C#

 private void radScheduler1_AppointmentsCopying(object sender, SchedulerClipboardEventArgs e)
{
    this.radScheduler1.Tag = ((AppointmentWithEmail)e.Appointments[0]).Email;
}
 
private void radScheduler1_AppointmentAdded(object sender, AppointmentAddedEventArgs e)
{
    if (this.radScheduler1.Tag + "" != "")
    {
        ((AppointmentWithEmail)e.Appointment).Email = this.radScheduler1.Tag.ToString();
    }
    this.radScheduler1.Tag = null;
}                        
       
````
````VB.NET
    
    Private Sub radScheduler1_AppointmentsCopying(ByVal sender As Object, ByVal e As SchedulerClipboardEventArgs)
        Me.RadScheduler1.Tag = (CType(e.Appointments(0), AppointmentWithEmail)).Email
    End Sub

    Private Sub radScheduler1_AppointmentAdded(ByVal sender As Object, ByVal e As AppointmentAddedEventArgs)
        If Me.RadScheduler1.Tag & "" <> "" Then
            Dim a As AppointmentWithEmail = TryCast(e.Appointment, AppointmentWithEmail)
            a.Email = Me.RadScheduler1.Tag.ToString()
        End If

        Me.RadScheduler1.Tag = Nothing
    End Sub        
    
````

If you need to have full control on the copy/paste operations in **RadScheduler**, you can create a derivative of the [SchedulerInputBehavior]({%slug winforms/scheduler/fundamentals/input-behavior%}), override its **HandleKeyDown** method and execute the desired logic when the `Control` key is pressed in combination with Keys.V or Keys.C: 


````C#

 public class CustomSchedulerInputBehavior : SchedulerInputBehavior
{
    public CustomSchedulerInputBehavior(RadScheduler scheduler) : base(scheduler)
    {
    }
 
    public override bool HandleKeyDown(KeyEventArgs args)
    {
        if (args.Modifiers == Keys.Control)
        {
            switch (args.KeyCode)
            {
                case Keys.C:
                    this.Scheduler.Copy();
                    break;
                case Keys.X:
                    this.Scheduler.Cut();
                    break;
                case Keys.V:
                    this.Scheduler.Paste();
                    break;
            }
        }
        return false;
    }
}                       
       
````
````VB.NET

    Public Class CustomSchedulerInputBehavior
        Inherits SchedulerInputBehavior

        Public Sub New(ByVal scheduler As RadScheduler)
            MyBase.New(scheduler)
        End Sub

        Public Overrides Function HandleKeyDown(ByVal args As KeyEventArgs) As Boolean
            If args.Modifiers = Keys.Control Then

                Select Case args.KeyCode
                    Case Keys.C
                        Me.Scheduler.Copy()
                    Case Keys.X
                        Me.Scheduler.Cut()
                    Case Keys.V
                        Me.Scheduler.Paste()
                End Select
            End If

            Return False
        End Function
    End Class
    
````

Then, set the RadScheduler.**SchedulerInputBehavior** property to the custom behavior that you have:

````C#

 this.radScheduler1.SchedulerInputBehavior = new CustomSchedulerInputBehavior(this.radScheduler1);  
 
       
````
````VB.NET

 Me.RadScheduler1.SchedulerInputBehavior = New CustomSchedulerInputBehavior(Me.RadScheduler1)
    
````


# See Also

 * [Adding a Custom Field to the EditAppointment Dialog]({%slug winforms/scheduler/appointments-and-dialogs/adding-a-custom-field-to-the-editappointment-dialog%})
 * [Copy/Paste/Cut]({%slug winforms/scheduler/end-user-functionality/copy/paste/cut%})
 * [Input Behavior]({%slug winforms/scheduler/fundamentals/input-behavior%})





    
   
  
    
 
