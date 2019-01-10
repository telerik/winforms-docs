---
title: Input Behavior
page_title: Input Behavior | RadScheduler
description: Input behavior
slug: winforms/scheduler/fundamentals/input-behavior
tags: input,behavior
published: True
position: 1
previous_url: scheduler-fundamentals-input-behavior
---

# Input Behavior

The __SchedulerInputBehavior__ is responsible for processing the keyboard and mouse input in __RadScheduler__.

Below are the methods which handle the respective events:

* __HandleMouseDown__
  
* __HandleMouseMove__
  
* __HandleMouseUp__
  
* __HandleMouseDown__
  
* __HandleNavigationKey__
  
* __HandleMouseWheel__
  
* __HandleMouseEnter__
  
* __HandleMouseLeave__
  
* __HandleCellElementDoubleClick__
  
* __HandleAppointmentElementDoubleClick__
  
* __HandleCellElementKeyPress__

Each of these methods can be overridden and the instance of the __SchedulerInputBehavior__ used in __RadScheduler__ can be replaced with a custom one. This allows you to modify the default behavior of the control. The following example demonstrates how to alter the default behavior and allow moving appointments via CTRL + arrow keys. In order to accomplish this, we need to inherit the SchedulerInputBehavior class and override the __HandleKeyDown__ method:

#### Custom Input Behavior

{{source=..\SamplesCS\Scheduler\Fundamentals\InputBehavior.cs region=Behavior}} 
{{source=..\SamplesVB\Scheduler\Fundamentals\InputBehavior.vb region=Behavior}} 

````C#
public class MySchedulerInputBehavior : SchedulerInputBehavior
{
    public MySchedulerInputBehavior(RadScheduler scheduler)
        : base(scheduler)
    {
    }
    public override bool HandleKeyDown(KeyEventArgs args)
    {
        bool isControl = (args.Modifiers & Keys.Control) == Keys.Control;
        IEvent selectedAppointment = this.Scheduler.SelectionBehavior.SelectedAppointment;
        if (isControl && selectedAppointment != null)
        {
            if ((args.KeyData & Keys.Up) == Keys.Up)
            {
                selectedAppointment.Start = selectedAppointment.Start.AddHours(-1);
                selectedAppointment.End = selectedAppointment.End.AddHours(-1);
            }
            else if ((args.KeyData & Keys.Down) == Keys.Down)
            {
                selectedAppointment.Start = selectedAppointment.Start.AddHours(1);
                selectedAppointment.End = selectedAppointment.End.AddHours(1);
            }
        }
        return base.HandleKeyDown(args);
    }
}

````
````VB.NET
Public Class MySchedulerInputBehavior
    Inherits SchedulerInputBehavior
    Public Sub New(scheduler As RadScheduler)
        MyBase.New(scheduler)
    End Sub
    Public Overrides Function HandleKeyDown(args As KeyEventArgs) As Boolean
        Dim isControl As Boolean = (args.Modifiers And Keys.Control) = Keys.Control
        Dim selectedAppointment As IEvent = Me.Scheduler.SelectionBehavior.SelectedAppointment
        If isControl AndAlso selectedAppointment IsNot Nothing Then
            If (args.KeyData And Keys.Up) = Keys.Up Then
                selectedAppointment.Start = selectedAppointment.Start.AddHours(-1)
                selectedAppointment.[End] = selectedAppointment.[End].AddHours(-1)
            ElseIf (args.KeyData And Keys.Down) = Keys.Down Then
                selectedAppointment.Start = selectedAppointment.Start.AddHours(1)
                selectedAppointment.[End] = selectedAppointment.[End].AddHours(1)
            End If
        End If
        Return MyBase.HandleKeyDown(args)
    End Function
End Class

````

{{endregion}} 

Now we need to assign this new input behavior to the __SchedulerInputBehavior__ property of __RadScheduler__:

#### Set Behavior

{{source=..\SamplesCS\Scheduler\Fundamentals\InputBehavior.cs region=SetBehavior}} 
{{source=..\SamplesVB\Scheduler\Fundamentals\InputBehavior.vb region=SetBehavior}} 

````C#
scheduler.SchedulerInputBehavior = new MySchedulerInputBehavior(scheduler);

````
````VB.NET
scheduler.SchedulerInputBehavior = New MySchedulerInputBehavior(scheduler)

````

{{endregion}} 

You can see the result below:

>caption Figure 1: Custom Input Behavior
![scheduler-fundamentals-input-behavior 001](images/scheduler-fundamentals-input-behavior001.gif)

# See Also

* [Design Time]({%slug winforms/scheduler/design-time/smart-tag%})
* [Data Binding]({%slug winforms/scheduler/data-binding/introduction%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})