---
title: Scheduler Cell Containers
page_title: Scheduler Cell Containers
description: Scheduler Cell Containers
slug: scheduler-views-scheduler-cell-containers
tags: scheduler,cell,containers
published: True
position: 12
---

# Scheduler Cell Containers



The cell containers in __RadScheduler__ are the elements which contain cells and appointments.
      The cells and the appointments are dynamic elements which get recycled and updated under various conditions.
      The cell containers are responsible for handling this. All cell containers inherit from the abstract __SchedulerCellContainer__ class.
      Elements that implement this type are: __DayViewAllDayHeader__, __DayViewAppointmentsTable__, __DayViewHeader__,
      __MonthViewAreaElement__, __MonthViewHeader__, __MonthViewVerticalHeader__,
        __TimelineAppointmentsPresenter__, __TimelineHeader__.

## Initializing the elements

The __InitializeCells__ and __InitializeAppointments__ methods are used to refresh the cell elements and appointment elements respectively.
        Both methods first remove the existing elements and add them to a cache so they can be reused later.
        After that new elements are either created or pulled out from the cache. The methods are called when the containers are being constructed
        and when a change that requires a refresh of the elements occurs (e.g. if you change the DayCount in day view).
        The __AppointmentsRefreshing__ and __CellsRefreshing__ events are fired by these methods before the refresh is performed. 
        These event allow you to cancel the refresh. The __AppointmentRefreshed__ and __CellsRefreshed__ events are fired after the
        refresh is performed and allow you to do some custom operations over the newly created elements.

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\SchedulerCellContainers.cs region=initializeSchedulerChildren}}
	            DayViewAppointmentsTable table = ((SchedulerDayViewElement)this.radScheduler1.ViewElement).DataAreaElement.Table;
	            table.CellsRefreshed +=table_CellsRefreshed;
	            table.AppointmentsRefreshed +=table_AppointmentsRefreshed;
	
	            table.InitializeCells();
	            table.InitializeAppointments();
	            //or use the following method which calls both of the above methods
	            table.InitializeChildren();
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\SchedulerCellContainers.vb region=initializeSchedulerChildren}}
	        Dim table As DayViewAppointmentsTable = DirectCast(Me.radScheduler1.ViewElement, SchedulerDayViewElement).DataAreaElement.Table
	        AddHandler table.CellsRefreshed, AddressOf table_CellsRefreshed
	        AddHandler table.AppointmentsRefreshed, AddressOf table_AppointmentsRefreshed
	
	        table.InitializeCells()
	        table.InitializeAppointments()
	        'or use the following method which calls both of the above methods
	        table.InitializeChildren()
	        '#End Region
	    End Sub
	
	    '#Region "cellContainerEvents"
	
	    Private Sub table_AppointmentsRefreshed(sender As Object, e As EventArgs)
	        RadMessageBox.Show("Appointments were refreshed")
	    End Sub
	
	    Private Sub table_CellsRefreshed(sender As Object, e As EventArgs)
	        RadMessageBox.Show("Cells were refreshed")
	    End Sub
	
	    '#End Region
	
	    Private Sub Update()
	        '#Region updateSchedulerChildren
	        Dim table As DayViewAppointmentsTable = DirectCast(Me.radScheduler1.ViewElement, SchedulerDayViewElement).DataAreaElement.Table
	        table.UpdateCells()
	        table.UpdateAppointments()
	        '#End Region
	    End Sub
	
	    Private Sub GetExisting()
	        '#Region cellContainerGetElements
	        Dim table As DayViewAppointmentsTable = DirectCast(Me.radScheduler1.ViewElement, SchedulerDayViewElement).DataAreaElement.Table
	        For Each cellElement As SchedulerCellElement In table.CellElements
	            cellElement.BackColor = Color.Red
	        Next
	
	        For Each appElement As AppointmentElement In table.AppointmentElements
	            appElement.BackColor = Color.Green
	        Next
	        '#End Region
	    End Sub
	
	    Private Sub UseViewElement()
	        '#Region viewElementUpdateCells
	        For Each cellContainer As SchedulerCellContainer In Me.radScheduler1.ViewElement.GetCellContainers()
	            cellContainer.UpdateCells()
	        Next
	        '#End Region
	
	        '#Region viewElementUpdateCellsDirect
	        Me.radScheduler1.ViewElement.UpdateCells()
	        Me.radScheduler1.ViewElement.UpdateAppointmentElements()
	        '#End Region
	
	        '#Region viewElementGetAllElements
	        For Each cellElement As SchedulerCellElement In Me.radScheduler1.ViewElement.GetCellElements()
	            cellElement.BackColor = Color.Red
	        Next
	
	        For Each appElement As AppointmentElement In Me.radScheduler1.ViewElement.GetAppointmentElements()
	            appElement.BackColor = Color.Green
	        Next
	        '#End Region
	    End Sub
	End Class



#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\SchedulerCellContainers.cs region=cellContainerEvents}}
	
	        void table_AppointmentsRefreshed(object sender, EventArgs e)
	        {
	            RadMessageBox.Show("Appointments were refreshed");
	        }
	
	        void table_CellsRefreshed(object sender, EventArgs e)
	        {
	            RadMessageBox.Show("Cells were refreshed");
	        }
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\SchedulerCellContainers.vb region=cellContainerEvents}}
	
	    Private Sub table_AppointmentsRefreshed(sender As Object, e As EventArgs)
	        RadMessageBox.Show("Appointments were refreshed")
	    End Sub
	
	    Private Sub table_CellsRefreshed(sender As Object, e As EventArgs)
	        RadMessageBox.Show("Cells were refreshed")
	    End Sub
	
	    '#End Region
	
	    Private Sub Update()
	        '#Region updateSchedulerChildren
	        Dim table As DayViewAppointmentsTable = DirectCast(Me.radScheduler1.ViewElement, SchedulerDayViewElement).DataAreaElement.Table
	        table.UpdateCells()
	        table.UpdateAppointments()
	        '#End Region
	    End Sub
	
	    Private Sub GetExisting()
	        '#Region cellContainerGetElements
	        Dim table As DayViewAppointmentsTable = DirectCast(Me.radScheduler1.ViewElement, SchedulerDayViewElement).DataAreaElement.Table
	        For Each cellElement As SchedulerCellElement In table.CellElements
	            cellElement.BackColor = Color.Red
	        Next
	
	        For Each appElement As AppointmentElement In table.AppointmentElements
	            appElement.BackColor = Color.Green
	        Next
	        '#End Region
	    End Sub
	
	    Private Sub UseViewElement()
	        '#Region viewElementUpdateCells
	        For Each cellContainer As SchedulerCellContainer In Me.radScheduler1.ViewElement.GetCellContainers()
	            cellContainer.UpdateCells()
	        Next
	        '#End Region
	
	        '#Region viewElementUpdateCellsDirect
	        Me.radScheduler1.ViewElement.UpdateCells()
	        Me.radScheduler1.ViewElement.UpdateAppointmentElements()
	        '#End Region
	
	        '#Region viewElementGetAllElements
	        For Each cellElement As SchedulerCellElement In Me.radScheduler1.ViewElement.GetCellElements()
	            cellElement.BackColor = Color.Red
	        Next
	
	        For Each appElement As AppointmentElement In Me.radScheduler1.ViewElement.GetAppointmentElements()
	            appElement.BackColor = Color.Green
	        Next
	        '#End Region
	    End Sub
	End Class



## Updating the elements

The __UpdateCells__ and __UpdateAppointments__ are called to synchronize the existing elements with the information
          from the active view (e.g. when the start date of the view changes, the cells’ dates are synchronized).
          Unlike the Initialize methods, these methods leave the elements as they are and just update their properties.
          The Initialize methods call these methods when the new elements are created to update their properties.
          These methods cause the __CellFormatting__ and __AppointmentFormatting__ events respectively.
        

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\SchedulerCellContainers.cs region=updateSchedulerChildren}}
	            DayViewAppointmentsTable table = ((SchedulerDayViewElement)this.radScheduler1.ViewElement).DataAreaElement.Table;
	            table.UpdateCells();
	            table.UpdateAppointments();
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\SchedulerCellContainers.vb region=updateSchedulerChildren}}
	        Dim table As DayViewAppointmentsTable = DirectCast(Me.radScheduler1.ViewElement, SchedulerDayViewElement).DataAreaElement.Table
	        table.UpdateCells()
	        table.UpdateAppointments()
	        '#End Region
	    End Sub
	
	    Private Sub GetExisting()
	        '#Region cellContainerGetElements
	        Dim table As DayViewAppointmentsTable = DirectCast(Me.radScheduler1.ViewElement, SchedulerDayViewElement).DataAreaElement.Table
	        For Each cellElement As SchedulerCellElement In table.CellElements
	            cellElement.BackColor = Color.Red
	        Next
	
	        For Each appElement As AppointmentElement In table.AppointmentElements
	            appElement.BackColor = Color.Green
	        Next
	        '#End Region
	    End Sub
	
	    Private Sub UseViewElement()
	        '#Region viewElementUpdateCells
	        For Each cellContainer As SchedulerCellContainer In Me.radScheduler1.ViewElement.GetCellContainers()
	            cellContainer.UpdateCells()
	        Next
	        '#End Region
	
	        '#Region viewElementUpdateCellsDirect
	        Me.radScheduler1.ViewElement.UpdateCells()
	        Me.radScheduler1.ViewElement.UpdateAppointmentElements()
	        '#End Region
	
	        '#Region viewElementGetAllElements
	        For Each cellElement As SchedulerCellElement In Me.radScheduler1.ViewElement.GetCellElements()
	            cellElement.BackColor = Color.Red
	        Next
	
	        For Each appElement As AppointmentElement In Me.radScheduler1.ViewElement.GetAppointmentElements()
	            appElement.BackColor = Color.Green
	        Next
	        '#End Region
	    End Sub
	End Class



## Getting the existing elements

You can access the cell element and the appointment elements from a SchedulerCellContainer by using the __CellElements__  
        and the __AppointmentElements__ collections.

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\SchedulerCellContainers.cs region=cellContainerGetElements}}
	            DayViewAppointmentsTable table = ((SchedulerDayViewElement)this.radScheduler1.ViewElement).DataAreaElement.Table;
	            foreach (SchedulerCellElement cellElement in table.CellElements)
	            {
	                cellElement.BackColor = Color.Red;
	            }
	
	            foreach (AppointmentElement appElement in table.AppointmentElements)
	            {
	                appElement.BackColor = Color.Green;
	            }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\SchedulerCellContainers.vb region=cellContainerGetElements}}
	        Dim table As DayViewAppointmentsTable = DirectCast(Me.radScheduler1.ViewElement, SchedulerDayViewElement).DataAreaElement.Table
	        For Each cellElement As SchedulerCellElement In table.CellElements
	            cellElement.BackColor = Color.Red
	        Next
	
	        For Each appElement As AppointmentElement In table.AppointmentElements
	            appElement.BackColor = Color.Green
	        Next
	        '#End Region
	    End Sub
	
	    Private Sub UseViewElement()
	        '#Region viewElementUpdateCells
	        For Each cellContainer As SchedulerCellContainer In Me.radScheduler1.ViewElement.GetCellContainers()
	            cellContainer.UpdateCells()
	        Next
	        '#End Region
	
	        '#Region viewElementUpdateCellsDirect
	        Me.radScheduler1.ViewElement.UpdateCells()
	        Me.radScheduler1.ViewElement.UpdateAppointmentElements()
	        '#End Region
	
	        '#Region viewElementGetAllElements
	        For Each cellElement As SchedulerCellElement In Me.radScheduler1.ViewElement.GetCellElements()
	            cellElement.BackColor = Color.Red
	        Next
	
	        For Each appElement As AppointmentElement In Me.radScheduler1.ViewElement.GetAppointmentElements()
	            appElement.BackColor = Color.Green
	        Next
	        '#End Region
	    End Sub
	End Class



## Accessing the containers from the ViewElement 

The __SchedulerViewElement__ base type provides means for accessing the containers in the current view.
        Using the __GetCellContainers__ method you can get all the containers in a list and perform for example an update operation over all of them:

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\SchedulerCellContainers.cs region=viewElementUpdateCells}}
	            foreach (SchedulerCellContainer cellContainer in this.radScheduler1.ViewElement.GetCellContainers())
	            {
	                cellContainer.UpdateCells();
	            }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\SchedulerCellContainers.vb region=viewElementUpdateCells}}
	        Me.radScheduler1.ViewElement.UpdateCells()
	        Me.radScheduler1.ViewElement.UpdateAppointmentElements()
	        '#End Region
	
	        '#Region viewElementGetAllElements
	        For Each cellElement As SchedulerCellElement In Me.radScheduler1.ViewElement.GetCellElements()
	            cellElement.BackColor = Color.Red
	        Next
	
	        For Each appElement As AppointmentElement In Me.radScheduler1.ViewElement.GetAppointmentElements()
	            appElement.BackColor = Color.Green
	        Next
	        '#End Region
	    End Sub
	End Class



For your convenience, there are the __InitializeCells__, __UpdateCells__, 
        __InitializeAppointmentElements__, __UpdateAppointmentElements__ methods of the
        view element which you can use to perform the same operation over all of the child SchedulerCellContainers:

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\SchedulerCellContainers.cs region=viewElementUpdateCellsDirect}}
	            this.radScheduler1.ViewElement.UpdateCells();
	            this.radScheduler1.ViewElement.UpdateAppointmentElements();
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\SchedulerCellContainers.vb region=viewElementUpdateCellsDirect}}
	        Me.radScheduler1.ViewElement.UpdateCells()
	        Me.radScheduler1.ViewElement.UpdateAppointmentElements()
	        '#End Region
	
	        '#Region viewElementGetAllElements
	        For Each cellElement As SchedulerCellElement In Me.radScheduler1.ViewElement.GetCellElements()
	            cellElement.BackColor = Color.Red
	        Next
	
	        For Each appElement As AppointmentElement In Me.radScheduler1.ViewElement.GetAppointmentElements()
	            appElement.BackColor = Color.Green
	        Next
	        '#End Region
	    End Sub
	End Class



Additionally, there are the __GetCellEments__ and the __GetAppointmentElements__ methods
        which return a list of all cell or appointment elements from all containers in the view.

#### __[C#]__

{{source=..\SamplesCS\Scheduler\Views\SchedulerCellContainers.cs region=viewElementGetAllElements}}
	            foreach (SchedulerCellElement cellElement in this.radScheduler1.ViewElement.GetCellElements())
	            {
	                cellElement.BackColor = Color.Red;
	            }
	
	            foreach (AppointmentElement appElement in this.radScheduler1.ViewElement.GetAppointmentElements())
	            {
	                appElement.BackColor = Color.Green;
	            }
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\Views\SchedulerCellContainers.vb region=viewElementGetAllElements}}
	        For Each cellElement As SchedulerCellElement In Me.radScheduler1.ViewElement.GetCellElements()
	            cellElement.BackColor = Color.Red
	        Next
	
	        For Each appElement As AppointmentElement In Me.radScheduler1.ViewElement.GetAppointmentElements()
	            appElement.BackColor = Color.Green
	        Next
	        '#End Region
	    End Sub
	End Class


