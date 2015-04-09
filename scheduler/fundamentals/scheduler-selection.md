---
title: Scheduler Selection
page_title: Scheduler Selection
description: Scheduler Selection
slug: scheduler-fundamentals-scheduler-selection
tags: scheduler,selection
published: True
position: 3
---

# Scheduler Selection



## Cell selection

The end user is allowed to perform a single cell selection pressing the left/right mouse button. In order to select a range of cells,
          it is necessary to hold the Shift key pressed while pressing the mouse button over a specific cell or by dragging through a range of cells.
          The __CellSelectionChanging__ and the __CellSelectionChanged__ events are fired when the cell
          selection is altered. The __SchedulerCellSelectingEventArgs__ gives you additional information for the selection range.
        

## Appointment selection

The end user is allowed to perform a single appointment selection pressing the left/right mouse button. In order to select a range of appointments,
        it is necessary to set the __AllowAppointmentsMultiSelect__ property to *true* and hold the Ctrl key 
        pressed while pressing the mouse button over a certain appointment. You can track the appointments selection changes using the __AppointmentSelecting__ and the
        __AppointmentSelected__ events. The __SchedulerAppointmentCancelEventArgs__ and the __SchedulerAppointmentSelectedEventArgs__
        give you additional information about the performed selection.

## Using the SelectionBehavior

__SchedulerSelectionBehavior__ performs selection operations and provides information about
          the current selection of cells and appointments in __RadScheduler__.

* Getting the current cell selection: the SelectionBehavior.__CurrentCell__ and the SelectionBehavior.
            __CurrentCellElement__ properties return the current cell position and the currently 
            selected __SchedulerCellElement__ respectively. In addition, it is possible to access the range of the selected cells.
            The SelectionBehavior.__SelectionStartDate__ property returns the start date of the currently selected cell/cell range.
              The SelectionBehavior.__SelectionEndDate__ property returns the end date of the currently selected cell/cell range.
              In order to detect whether there are selected cells, use the __HasCellsSelected__ property.
            

* Getting the selected appointment and selected appointments: the SelectionBehavior.__SelectedAppointment__
              property returns the currently selected appointment. If the __AllowAppointmentsMultiSelect__ property is
              set to *true*, you can use the SelectionBehavior.__SelectedAppointments__
              property, which returns a collection the currently selected appointments. In order to detect whether there are selected appointments,
              use the __HasAppointmentsSelected__ property.
            

* Programmatically selecting cells and appointments: there are several methods, which allows you to modify the selection.
<table><th><tr><td>

Method</td><td>

Description</td></tr></th><tr><td>

SelectAppointment(IEvent appointment, bool extend)</td><td>

Selects an appointment given as parameter. The <i>extend</i> parameter indicates whether the selection will be extended or not.
                  If multiple selection is allowed and the <i>extend</i> parameter is true, the appointment, given as parameter, will be added to the
                  <b>SelectedAppointments</b> collection. If this appointment is currently selected, calling the 
                  <b>SelectAppointment</b> method will unselect it. If the <i>extend</i> parameter is false, the appointment,
                  given as parameter, will remain the only selected appointment, no matter if it is currently selected or not. 
                  If multiple selection is not allowed, the appointment, given as parameter, will remain the
                  only selected appointment.</td></tr><tr><td>

UnselectAppointment(IEvent appointment)</td><td>

Unselects the specific appointment.</td></tr><tr><td>

ResetAppointmentSelection</td><td>

Clears all selected appointments.</td></tr><tr><td>

IsAppointmentSelected(IEvent appointment)</td><td>

Indicates whether a specific appointment is selected or not.</td></tr><tr><td>

ResetCellSelection</td><td>

Clears the selected cells.</td></tr><tr><td>

IsDateSelected(DateTime date, TimeSpan duration, EventId resourceId, bool isAllDayAreaCell)</td><td>

Determines whether a specific date is selected for the certain resource id.</td></tr><tr><td>

SelectCell(SchedulerCellElement cell)</td><td>

Selects a specific cell.</td></tr><tr><td>

SelectCell(SchedulerCellElement cell, bool extendSelection)</td><td>

Selects a specific cell with option to extend or not the selection (as if the Shift key is pressed).</td></tr><tr><td>

IsCellSelected(SchedulerCellElement cell)</td><td>

Determines whether a specific cell is selected.</td></tr><tr><td>

SelectDateRange(DateTime startDate, DateTime endDate)</td><td>

Selects cells in the specified range. If the current cell belongs to a specific resource, the cells in the desired range for this resource will be selected.</td></tr><tr><td>

SelectDateRange(DateTime startDate, DateTime endDate, EventId resourceId)</td><td>

Selects cells in the specified range for the certain resource id.</td></tr><tr><td>

GetCellDuration</td><td>

Returns the cell duration according to the current view.</td></tr><tr><td>

ResetSelection</td><td>

Clears all selected appointments and cells.</td></tr></table>

## Custom SelectionBehavior

The default behavior of the
          __RadScheduler__ selection can be modified programmatically.
        

1. This can be achieved by creating a derivative of the __SchedulerSelectionBehavior__:
            

#### __[C#] __

{{source=..\SamplesCS\Scheduler\Fundamentals\SelectionBehavior.cs region=SchedulerSelectionBehavior}}
	        
	        public class CustomSchedulerSelectionBehavior : SchedulerSelectionBehavior
	        {
	            public CustomSchedulerSelectionBehavior(RadScheduler scheduler) : base(scheduler)
	            {
	            }
	        }
	        
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\Scheduler\Fundamentals\SelectionBehavior.vb region=SchedulerSelectionBehavior}}
	
	    Public Class CustomSchedulerSelectionBehavior
	    Inherits SchedulerSelectionBehavior
	        Public Sub New(scheduler As RadScheduler)
	            MyBase.New(scheduler)
	        End Sub
	    End Class
	
	    #End Region
	
	    Public Class DummySchedulerSelectionBehavior
	    Inherits SchedulerSelectionBehavior
	        Public Sub New(scheduler As RadScheduler)
	            MyBase.New(scheduler)
	        End Sub
	
	        #Region "SelectAppointment"
	
	        Public Overrides Sub SelectAppointment(appointment As IEvent, extend As Boolean)
	            Dim dayView As SchedulerDayView = Me.Scheduler.GetDayView()
	
	            If dayView.IsWorkTime(appointment.Start) Then
	                Return
	            End If
	            MyBase.SelectAppointment(appointment, extend)
	        End Sub
	
	        #End Region
	    End Class
	End Class



1. Override the __SelectAppointment__ method and allow selection only for appointments off work hours:
            

#### __[C#] __

{{source=..\SamplesCS\Scheduler\Fundamentals\SelectionBehavior.cs region=SelectAppointment}}
	            
	            public override void SelectAppointment(IEvent appointment, bool extend)
	            {
	                SchedulerDayView dayView = this.Scheduler.GetDayView();
	                
	                if (dayView.IsWorkTime(appointment.Start))
	                {
	                    return;
	                }
	                base.SelectAppointment(appointment, extend);
	            }
	    
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\Scheduler\Fundamentals\SelectionBehavior.vb region=SelectAppointment}}
	
	        Public Overrides Sub SelectAppointment(appointment As IEvent, extend As Boolean)
	            Dim dayView As SchedulerDayView = Me.Scheduler.GetDayView()
	
	            If dayView.IsWorkTime(appointment.Start) Then
	                Return
	            End If
	            MyBase.SelectAppointment(appointment, extend)
	        End Sub
	
	        #End Region
	    End Class
	End Class



1. Apply this behavior to the __RadScheduler__:
            

#### __[C#] __

{{source=..\SamplesCS\Scheduler\Fundamentals\SelectionBehavior.cs region=ReplaceSelectionBehavior}}
	            
	            this.radScheduler1.SelectionBehavior = new CustomSchedulerSelectionBehavior(this.radScheduler1);
	        
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\Scheduler\Fundamentals\SelectionBehavior.vb region=ReplaceSelectionBehavior}}
	
	        Me.RadScheduler1.SelectionBehavior = New CustomSchedulerSelectionBehavior(Me.RadScheduler1)
	
	        '#End Region
	
	        Me.RadScheduler1.SelectionBehavior = New DummySchedulerSelectionBehavior(Me.RadScheduler1)
	    End Sub
	
	    #Region "SchedulerSelectionBehavior"
	
	    Public Class CustomSchedulerSelectionBehavior
	    Inherits SchedulerSelectionBehavior
	        Public Sub New(scheduler As RadScheduler)
	            MyBase.New(scheduler)
	        End Sub
	    End Class
	
	    #End Region
	
	    Public Class DummySchedulerSelectionBehavior
	    Inherits SchedulerSelectionBehavior
	        Public Sub New(scheduler As RadScheduler)
	            MyBase.New(scheduler)
	        End Sub
	
	        #Region "SelectAppointment"
	
	        Public Overrides Sub SelectAppointment(appointment As IEvent, extend As Boolean)
	            Dim dayView As SchedulerDayView = Me.Scheduler.GetDayView()
	
	            If dayView.IsWorkTime(appointment.Start) Then
	                Return
	            End If
	            MyBase.SelectAppointment(appointment, extend)
	        End Sub
	
	        #End Region
	    End Class
	End Class


