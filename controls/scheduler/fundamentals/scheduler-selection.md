---
title: Scheduler Selection
page_title: Scheduler Selection - RadScheduler
description: This articles described the default selection behavior as well as how this behavior can be altered by using a custom class.
slug: winforms/scheduler/fundamentals/scheduler-selection
tags: scheduler,selection
published: True
position: 3
previous_url: scheduler-fundamentals-scheduler-selection
---

# Scheduler Selection

## Cell selection

The end user is allowed to perform a single cell selection pressing the left/right mouse button. In order to select a range of cells, it is necessary to hold the *Shift* key pressed while pressing the mouse button over a specific cell or by dragging through a range of cells. The __CellSelectionChanging__ and the __CellSelectionChanged__ events are fired when the cell selection is altered. The __SchedulerCellSelectingEventArgs__ gives you additional information for the selection range.

## Appointment selection

The end user is allowed to perform a single appointment selection pressing the left/right mouse button. In order to select a range of appointments, it is necessary to set the __AllowAppointmentsMultiSelect__ property to *true* and hold the Ctrl key  pressed while pressing the mouse button over a certain appointment. You can track the appointments selection changes using the __AppointmentSelecting__ and the __AppointmentSelected__ events. The __SchedulerAppointmentCancelEventArgs__ and the __SchedulerAppointmentSelectedEventArgs__ give you additional information about the performed selection.

## Using the SelectionBehavior

__SchedulerSelectionBehavior__ performs selection operations and provides information about the current selection of cells and appointments in __RadScheduler__.

* Getting the current cell selection: The SelectionBehavior.__CurrentCell__ and the SelectionBehavior. __CurrentCellElement__ properties return the current cell position and the currently  selected __SchedulerCellElement__ respectively. In addition, it is possible to access the range of the selected cells. The SelectionBehavior.__SelectionStartDate__ property returns the start date of the currently selected cell/cell range. The SelectionBehavior.__SelectionEndDate__ property returns the end date of the currently selected cell/cell range. In order to detect whether there are selected cells, use the __HasCellsSelected__ property.
            

* Getting the selected appointment and selected appointments: The SelectionBehavior.__SelectedAppointment__ property returns the currently selected appointment. If the __AllowAppointmentsMultiSelect__ property is set to *true*, you can use the SelectionBehavior.__SelectedAppointments__ property, which returns a collection the currently selected appointments. In order to detect whether there are selected appointments, use the __HasAppointmentsSelected__ property.
            
* Programmatically selecting cells and appointments: there are several methods, which allows you to modify the selection.

| Method | Description |
| ------ | ------ |
|SelectAppointment(IEvent appointment, bool extend)|Selects an appointment given as parameter. The *extend* parameter indicates whether the selection will be extended or not.If multiple selection is allowed and the *extend* parameter is true, the appointment, given as parameter, will be added to the __SelectedAppointments__ collection. If this appointment is currently selected, calling the __SelectAppointment__ method will unselect it. If the *extend* parameter is false, the appointment, given as parameter, will remain the only selected appointment, no matter if it is currently selected or not.  If multiple selection is not allowed, the appointment, given as parameter, will remain the only selected appointment.|
|UnselectAppointment(IEvent appointment)|Unselects the specific appointment.|
|ResetAppointmentSelection|Clears all selected appointments.|
|IsAppointmentSelected(IEvent appointment)|Indicates whether a specific appointment is selected or not.|
|ResetCellSelection|Clears the selected cells.|
|IsDateSelected(DateTime date, TimeSpan duration, EventId resourceId, bool isAllDayAreaCell)|Determines whether a specific date is selected for the certain resource id.|
|SelectCell(SchedulerCellElement cell)|Selects a specific cell.|
|SelectCell(SchedulerCellElement cell, bool extendSelection)|Selects a specific cell with option to extend or not the selection (as if the Shift key is pressed).|
|IsCellSelected(SchedulerCellElement cell)|Determines whether a specific cell is selected.|
|SelectDateRange(DateTime startDate, DateTime endDate)|Selects cells in the specified range. If the current cell belongs to a specific resource, the cells in the desired range for this resource will be selected.|
|SelectDateRange(DateTime startDate, DateTime endDate, EventId resourceId)|Selects cells in the specified range for the certain resource id.|
|GetCellDuration|Returns the cell duration according to the current view.|
|ResetSelection|Clears all selected appointments and cells.|

## Custom SelectionBehavior

The default behavior of the  __RadScheduler__ selection can be modified programmatically.
        

1\. This can be achieved by creating a derivative of the __SchedulerSelectionBehavior__:

#### Custom Selection Class

{{source=..\SamplesCS\Scheduler\Fundamentals\SelectionBehavior.cs region=SchedulerSelectionBehavior}} 
{{source=..\SamplesVB\Scheduler\Fundamentals\SelectionBehavior.vb region=SchedulerSelectionBehavior}} 

````C#
        
public class CustomSchedulerSelectionBehavior : SchedulerSelectionBehavior
{
    public CustomSchedulerSelectionBehavior(RadScheduler scheduler) : base(scheduler)
    {
    }
}

````
````VB.NET
Public Class CustomSchedulerSelectionBehavior
Inherits SchedulerSelectionBehavior
    Public Sub New(scheduler As RadScheduler)
        MyBase.New(scheduler)
    End Sub
End Class

````

{{endregion}} 

2\. Override the __SelectAppointment__ method and allow selection only for appointments off work hours:

#### Override Method

{{source=..\SamplesCS\Scheduler\Fundamentals\SelectionBehavior.cs region=SelectAppointment}} 
{{source=..\SamplesVB\Scheduler\Fundamentals\SelectionBehavior.vb region=SelectAppointment}} 

````C#
            
public override void SelectAppointment(IEvent appointment, bool extend)
{
    SchedulerDayView dayView = this.Scheduler.GetDayView();
    
    if (dayView.IsWorkTime(appointment.Start))
    {
        return;
    }
    base.SelectAppointment(appointment, extend);
}

````
````VB.NET
Public Overrides Sub SelectAppointment(appointment As IEvent, extend As Boolean)
    Dim dayView As SchedulerDayView = Me.Scheduler.GetDayView()
    If dayView.IsWorkTime(appointment.Start) Then
        Return
    End If
    MyBase.SelectAppointment(appointment, extend)
End Sub

````

{{endregion}} 

3\. Apply this behavior to the __RadScheduler__:

#### Set Behavior

{{source=..\SamplesCS\Scheduler\Fundamentals\SelectionBehavior.cs region=ReplaceSelectionBehavior}} 
{{source=..\SamplesVB\Scheduler\Fundamentals\SelectionBehavior.vb region=ReplaceSelectionBehavior}} 

````C#
            
this.radScheduler1.SelectionBehavior = new CustomSchedulerSelectionBehavior(this.radScheduler1);

````
````VB.NET
Me.RadScheduler1.SelectionBehavior = New CustomSchedulerSelectionBehavior(Me.RadScheduler1)

````

{{endregion}} 

# See Also

* [Design Time]({%slug winforms/scheduler/design-time/smart-tag%})
* [Data Binding]({%slug winforms/scheduler/data-binding/introduction%})
* [Views]({%slug winforms/scheduler/views/overview-and-structure%})
