---
title: Combining RadDragDropService and OLE drag-and-drop
page_title: Combining RadDragDropService and OLE drag-and-drop
description: Combining RadDragDropService and OLE drag-and-drop
slug: scheduler-drag-and-drop-combining-raddragdropservice-and-ole-drag-and-drop
tags: combining,raddragdropservice,and,ole,drag-and-drop
published: True
position: 2
---

# Combining RadDragDropService and OLE drag-and-drop



This article demonstrates a sample approach how to achieve drag and drop functionality between __RadScheduler__ and __RadListControl__.
      For this purpose, we will use a combination between the __RadDragDropService__, supported by the __RadScheduler__ control, and the OLE drag-and-drop,
      which is supported by all controls from the Telerik UI for WinForms suite.

Let’s assume that our __RadScheduler__ is in  [bound mode]({%slug scheduler-data-binding-data-binding-walkthrough%}) 
        and the __RadListControl__ is populated manually with items. Set the __AllowDrop__ property to *true* for both of the controls.

## Drag and drop from RadScheduler to RadListControl using RadDragDropService

To implement drag and drop functionality for this scenario, we will use the SchedulerElement.__DragDropBehavior__,
        which is a derivative of the __RadDragDropService__. Subscribe to its __PreviewDragOver__ and __PreviewDragDrop__ events.
        In the __PreviewDragOver__ event allow dropping over a __RadListElement__. The __PreviewDragDrop__ event performs the actual
        inserting of the dragged appointment into the __RadListControl.Items__ collection:

#### __[C#]__

{{source=..\SamplesCS\Scheduler\DragDrop\SchedulerToListControl.cs region=RadSchedulerToRadListControl}}
	        
	        private void DragDropBehavior_PreviewDragOver(object sender, Telerik.WinControls.RadDragOverEventArgs e)
	        {
	            e.CanDrop = e.HitTarget is RadListElement;
	        }
	        
	        private void DragDropBehavior_PreviewDragDrop(object sender, Telerik.WinControls.RadDropEventArgs e)
	        {
	            DragFeedbackElement draggedInstance = e.DragInstance as DragFeedbackElement;
	            if (draggedInstance == null)
	            {
	                return;
	            }
	
	            RadListElement listElement = e.HitTarget as RadListElement;
	            if (listElement == null)
	            {
	                return;
	            }
	            e.Handled = true;
	            RadListControl listControl = listElement.ElementTree.Control as RadListControl;
	            RadListVisualItem targetItem = listControl.ElementTree.GetElementAtPoint(e.DropLocation) as RadListVisualItem;
	            int indexToInsert;
	            if (targetItem != null)
	            {
	                indexToInsert = targetItem.Data.RowIndex;
	            }
	            else
	            {
	                indexToInsert = listControl.Items.Count;
	            }
	            Appointment draggedAppointment = draggedInstance.AssociatedAppointment as Appointment;
	            SchedulerUIHelper.DeleteAppointment(draggedAppointment, this.radScheduler1);
	            RadListDataItem newItem = new RadListDataItem(draggedAppointment.Summary);
	            listControl.Items.Insert(indexToInsert, newItem);
	
	            //save changes to data base
	            SaveChanges();
	        }
	
	        public void SaveChanges()
	        {
	            appointmentsResourcesTableAdapter.Adapter.AcceptChangesDuringUpdate = false;
	            SchedulerDataDataSet.AppointmentsResourcesDataTable deletedChildRecords =
	                this.schedulerDataDataSet.AppointmentsResources.GetChanges(DataRowState.Deleted)
	                as SchedulerDataDataSet.AppointmentsResourcesDataTable;
	            SchedulerDataDataSet.AppointmentsResourcesDataTable newChildRecords =
	                this.schedulerDataDataSet.AppointmentsResources.GetChanges(DataRowState.Added)
	                as SchedulerDataDataSet.AppointmentsResourcesDataTable;
	            SchedulerDataDataSet.AppointmentsResourcesDataTable modifiedChildRecords =
	                this.schedulerDataDataSet.AppointmentsResources.GetChanges(DataRowState.Modified)
	                as SchedulerDataDataSet.AppointmentsResourcesDataTable;
	            try
	            {
	                if (deletedChildRecords != null)
	                {
	                    appointmentsResourcesTableAdapter.Update(deletedChildRecords);
	                }
	                appointmentsTableAdapter.Update(this.schedulerDataDataSet.Appointments);
	                if (newChildRecords != null)
	                {
	                    appointmentsResourcesTableAdapter.Update(newChildRecords);
	                }
	                if (modifiedChildRecords != null)
	                {
	                    appointmentsResourcesTableAdapter.Update(modifiedChildRecords);
	                }
	                this.schedulerDataDataSet.AcceptChanges();
	            }
	            catch (Exception ex)
	            {
	                MessageBox.Show(string.Format("An error occurred during the update process:\n{0}", ex.Message));
	            }
	            finally
	            {
	                if (deletedChildRecords != null)
	                {
	                    deletedChildRecords.Dispose();
	                }
	                if (newChildRecords != null)
	                {
	                    newChildRecords.Dispose();
	                }
	                if (modifiedChildRecords != null)
	                {
	                    modifiedChildRecords.Dispose();
	                }
	            }
	        }
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\DragDrop\SchedulerToListControl.vb region=RadSchedulerToRadListControl}}
	
	    Private Sub DragDropBehavior_PreviewDragOver(sender As Object, e As Telerik.WinControls.RadDragOverEventArgs)
	        e.CanDrop = TypeOf e.HitTarget Is RadListElement
	    End Sub
	
	    Private Sub DragDropBehavior_PreviewDragDrop(sender As Object, e As Telerik.WinControls.RadDropEventArgs)
	        Dim draggedInstance As DragFeedbackElement = TryCast(e.DragInstance, DragFeedbackElement)
	        If draggedInstance Is Nothing Then
	            Return
	        End If
	
	        Dim listElement As RadListElement = TryCast(e.HitTarget, RadListElement)
	        If listElement Is Nothing Then
	            Return
	        End If
	        e.Handled = True
	        Dim listControl As RadListControl = TryCast(listElement.ElementTree.Control, RadListControl)
	        Dim targetItem As RadListVisualItem = TryCast(listControl.ElementTree.GetElementAtPoint(e.DropLocation), RadListVisualItem)
	        Dim indexToInsert As Integer
	        If targetItem IsNot Nothing Then
	            indexToInsert = targetItem.Data.RowIndex
	        Else
	            indexToInsert = listControl.Items.Count
	        End If
	        Dim draggedAppointment As Appointment = TryCast(draggedInstance.AssociatedAppointment, Appointment)
	        SchedulerUIHelper.DeleteAppointment(draggedAppointment, Me.RadScheduler1)
	        Dim newItem As New RadListDataItem(draggedAppointment.Summary)
	        listControl.Items.Insert(indexToInsert, newItem)
	
	        'save changes to data base
	        SaveChanges()
	    End Sub
	
	    Public Sub SaveChanges()
	        AppointmentsResourcesTableAdapter.Adapter.AcceptChangesDuringUpdate = False
	        Dim deletedChildRecords As SchedulerDataDataSet.AppointmentsResourcesDataTable = TryCast(Me.SchedulerDataDataSet.AppointmentsResources.GetChanges(DataRowState.Deleted), SchedulerDataDataSet.AppointmentsResourcesDataTable)
	        Dim newChildRecords As SchedulerDataDataSet.AppointmentsResourcesDataTable = TryCast(Me.SchedulerDataDataSet.AppointmentsResources.GetChanges(DataRowState.Added), SchedulerDataDataSet.AppointmentsResourcesDataTable)
	        Dim modifiedChildRecords As SchedulerDataDataSet.AppointmentsResourcesDataTable = TryCast(Me.SchedulerDataDataSet.AppointmentsResources.GetChanges(DataRowState.Modified), SchedulerDataDataSet.AppointmentsResourcesDataTable)
	        Try
	            If deletedChildRecords IsNot Nothing Then
	                AppointmentsResourcesTableAdapter.Update(deletedChildRecords)
	            End If
	            AppointmentsTableAdapter.Update(Me.SchedulerDataDataSet.Appointments)
	            If newChildRecords IsNot Nothing Then
	                AppointmentsResourcesTableAdapter.Update(newChildRecords)
	            End If
	            If modifiedChildRecords IsNot Nothing Then
	                AppointmentsResourcesTableAdapter.Update(modifiedChildRecords)
	            End If
	            Me.SchedulerDataDataSet.AcceptChanges()
	        Catch ex As Exception
	            MessageBox.Show(String.Format("An error occurred during the update process:" & vbLf & "{0}", ex.Message))
	        Finally
	            If deletedChildRecords IsNot Nothing Then
	                deletedChildRecords.Dispose()
	            End If
	            If newChildRecords IsNot Nothing Then
	                newChildRecords.Dispose()
	            End If
	            If modifiedChildRecords IsNot Nothing Then
	                modifiedChildRecords.Dispose()
	            End If
	        End Try
	    End Sub
	
	    #End Region
	
	    #Region "RadListControlToRadScheduler"
	
	    #Region "StartDragDrop"
	
	    Private mouseDownPosition As Point
	    Private isDragging As Boolean
	
	    Private Sub radListControl1_MouseMove(sender As Object, e As MouseEventArgs)
	        If e.Button <> MouseButtons.Left Then
	            Me.isDragging = False
	            Return
	        End If
	
	        If Me.isDragging Then
	            Return
	        End If
	
	        Dim currentPosition As Point = e.Location
	        If (Math.Abs((currentPosition.X - Me.mouseDownPosition.X)) >= SystemInformation.DragSize.Width) OrElse (Math.Abs((currentPosition.Y - Me.mouseDownPosition.Y)) >= SystemInformation.DragSize.Height) Then
	            Me.isDragging = True
	            Dim dragObject As New DragObject()
	            Dim draggedItem As RadListVisualItem = TryCast(Me.RadListControl1.ElementTree.GetElementAtPoint(currentPosition), RadListVisualItem)
	            If draggedItem IsNot Nothing Then
	                Dim itemText As String = draggedItem.Text
	
	                If itemText <> String.Empty Then
	                    dragObject.Values.Add(AppointmentFields.Summary, itemText)
	                    dragObject.Status = AppointmentFields.Summary
	                    'start the drag and drop operation
	                    TryCast(sender, RadListControl).DoDragDrop(dragObject, DragDropEffects.Copy)
	                End If
	            End If
	        End If
	    End Sub
	
	    Private Sub radScheduler1_DragEnter(sender As Object, e As DragEventArgs)
	        Dim dragObject As DragObject = TryCast(e.Data.GetData(GetType(DragObject)), DragObject)
	        'allow dragging over the RadScheduler
	        e.Effect = If(dragObject Is Nothing, DragDropEffects.None, DragDropEffects.Copy)
	    End Sub
	
	    #End Region
	
	    #Region "DoDragDrop"
	
	    Private Sub radScheduler1_DragDrop(sender As Object, e As DragEventArgs)
	        Dim point__1 As Point = Me.RadScheduler1.PointToClient(New Point(e.X, e.Y))
	        Dim schedulerCell As SchedulerCellElement = SchedulerUIHelper.GetCellAtPoint(point__1, Me.RadScheduler1)
	
	        If schedulerCell IsNot Nothing Then
	            Dim dragObject As DragObject = TryCast(e.Data.GetData(GetType(DragObject)), DragObject)
	            If dragObject IsNot Nothing Then
	                Dim appointment As Appointment = CreateAppointment(schedulerCell.[Date], dragObject)
	                Me.RadScheduler1.Appointments.Add(appointment)
	
	                Dim indexToRemove As Integer = Me.RadListControl1.Items.IndexOf(appointment.Summary)
	                If indexToRemove > -1 Then
	                    Me.RadListControl1.Items.RemoveAt(indexToRemove)
	                End If
	            End If
	        End If
	
	        Me.mouseDownPosition = Point.Empty
	        Me.isDragging = False
	        'save changes to database
	        SaveChanges()
	    End Sub
	
	    #End Region
	
	    #Region "DragHelper"
	
	    Private Function CreateAppointment(currentDate As DateTime, dragObject As DragObject) As Appointment
	        Dim appointment As New Appointment()
	        Dim startDate As DateTime = currentDate
	        Dim endDate As DateTime = currentDate.AddHours(1)
	        Select Case dragObject.Status
	            Case AppointmentFields.Summary
	                appointment.Summary = TryCast(dragObject.Values(dragObject.Status), String)
	                Exit Select
	            Case AppointmentFields.Row
	                appointment.Summary = TryCast(dragObject.Values(AppointmentFields.Summary), String)
	                appointment.Description = TryCast(dragObject.Values(AppointmentFields.Description), String)
	                appointment.BackgroundId = CInt(dragObject.Values(AppointmentFields.Background))
	                appointment.StatusId = CInt(dragObject.Values(AppointmentFields.Status))
	                appointment.Location = TryCast(dragObject.Values(AppointmentFields.Location), String)
	
	                startDate = DirectCast(dragObject.Values(AppointmentFields.Start), DateTime)
	                endDate = DirectCast(dragObject.Values(AppointmentFields.[End]), DateTime)
	
	                Dim range As TimeSpan = endDate - startDate
	                endDate = currentDate + range
	                startDate = currentDate
	
	                Exit Select
	        End Select
	        appointment.Start = startDate
	        appointment.[End] = endDate
	        Return appointment
	    End Function
	
	    Private Enum AppointmentFields
	        Row
	        Summary
	        Location
	        Description
	        Start
	        [End]
	        Background
	        Status
	    End Enum
	
	    Private Class DragObject
	        Private m_status As AppointmentFields
	        Private m_values As New Dictionary(Of AppointmentFields, Object)()
	
	        Public Property Status() As AppointmentFields
	            Get
	                Return Me.m_status
	            End Get
	            Set(value As AppointmentFields)
	                Me.m_status = value
	            End Set
	        End Property
	
	        Public ReadOnly Property Values() As Dictionary(Of AppointmentFields, Object)
	            Get
	                Return Me.m_values
	            End Get
	        End Property
	    End Class
	
	    #End Region
	
	    #End Region
	
	    Private Sub BindScheduler()
	        Dim appointmentMappingInfo As New AppointmentMappingInfo()
	        appointmentMappingInfo.BackgroundId = "BackgroundID"
	        appointmentMappingInfo.Description = "Description"
	        appointmentMappingInfo.[End] = "End"
	        appointmentMappingInfo.Location = "Location"
	        appointmentMappingInfo.MasterEventId = "ParentID"
	        appointmentMappingInfo.RecurrenceRule = "RecurrenceRule"
	        appointmentMappingInfo.ResourceId = "ResourceID"
	        appointmentMappingInfo.Resources = "Appointments_AppointmentsResources"
	        appointmentMappingInfo.Start = "Start"
	        appointmentMappingInfo.StatusId = "StatusID"
	        appointmentMappingInfo.Summary = "Summary"
	        SchedulerBindingDataSource1.EventProvider.Mapping = appointmentMappingInfo
	
	        Dim resourceMappingInfo As New ResourceMappingInfo()
	        resourceMappingInfo.Id = "ID"
	        resourceMappingInfo.Name = "ResourceName"
	        Me.SchedulerBindingDataSource1.ResourceProvider.Mapping = resourceMappingInfo
	
	        SchedulerBindingDataSource1.ResourceProvider.DataSource = SchedulerDataDataSet.Resources
	        SchedulerBindingDataSource1.EventProvider.DataSource = SchedulerDataDataSet.Appointments
	
	        RadScheduler1.DataSource = SchedulerBindingDataSource1
	    End Sub
	
	    Private Sub SchedulerToListControl_Load(sender As Object, e As EventArgs) Handles MyBase.Load
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.Resources' table. You can move, or remove it, as needed.
	        Me.ResourcesTableAdapter.Fill(Me.SchedulerDataDataSet.Resources)
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.AppointmentsResources' table. You can move, or remove it, as needed.
	        Me.AppointmentsResourcesTableAdapter.Fill(Me.SchedulerDataDataSet.AppointmentsResources)
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.Appointments' table. You can move, or remove it, as needed.
	        Me.AppointmentsTableAdapter.Fill(Me.SchedulerDataDataSet.Appointments)
	
	    End Sub
	End Class

![scheduler-drag-and-drop-combining-raddragdropservice-and-ole-drag-and-drop 001](images/scheduler-drag-and-drop-combining-raddragdropservice-and-ole-drag-and-drop001.gif)

## Drag and drop from RadListControl to RadScheduler using the OLE drag-and-drop

1. Firstly, we should start the drag and drop operation using the RadListControl.__MouseMove__ event when the left mouse button is pressed.
            Afterwards, allow dragging over the __RadScheduler__ via the __Effect__ argument of the __DragEventArgs__
              in the RadScheduler.__DragEnter__ event handler:

#### __[C#]__

{{source=..\SamplesCS\Scheduler\DragDrop\SchedulerToListControl.cs region=StartDragDrop}}
	        
	        private Point mouseDownPosition;
	        private bool isDragging;
	        
	        private void radListControl1_MouseMove(object sender, MouseEventArgs e)
	        {
	            if (e.Button != MouseButtons.Left)
	            {
	                this.isDragging = false;
	                return;
	            }
	            
	            if (this.isDragging)
	                return;
	            
	            Point currentPosition = e.Location;
	            if ((Math.Abs((currentPosition.X - this.mouseDownPosition.X)) >= SystemInformation.DragSize.Width) ||
	                (Math.Abs((currentPosition.Y - this.mouseDownPosition.Y)) >= SystemInformation.DragSize.Height))
	            {
	                this.isDragging = true;
	                DragObject dragObject = new DragObject();
	                RadListVisualItem draggedItem = this.radListControl1.ElementTree.GetElementAtPoint(currentPosition) as RadListVisualItem;
	                if (draggedItem != null)
	                {
	                    string itemText = draggedItem.Text; 
	                    
	                    if (itemText != string.Empty)
	                    {
	                        dragObject.Values.Add(AppointmentFields.Summary, itemText);
	                        dragObject.Status = AppointmentFields.Summary;
	                        //start the drag and drop operation
	                        (sender as RadListControl).DoDragDrop(dragObject, DragDropEffects.Copy);
	                    }
	                }
	            }
	        }
	        
	        private void radScheduler1_DragEnter(object sender, DragEventArgs e)
	        {
	            DragObject dragObject = e.Data.GetData(typeof(DragObject)) as DragObject;
	            //allow dragging over the RadScheduler
	            e.Effect = dragObject == null ? DragDropEffects.None : DragDropEffects.Copy;
	        }
	        
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\DragDrop\SchedulerToListControl.vb region=StartDragDrop}}
	
	    Private mouseDownPosition As Point
	    Private isDragging As Boolean
	
	    Private Sub radListControl1_MouseMove(sender As Object, e As MouseEventArgs)
	        If e.Button <> MouseButtons.Left Then
	            Me.isDragging = False
	            Return
	        End If
	
	        If Me.isDragging Then
	            Return
	        End If
	
	        Dim currentPosition As Point = e.Location
	        If (Math.Abs((currentPosition.X - Me.mouseDownPosition.X)) >= SystemInformation.DragSize.Width) OrElse (Math.Abs((currentPosition.Y - Me.mouseDownPosition.Y)) >= SystemInformation.DragSize.Height) Then
	            Me.isDragging = True
	            Dim dragObject As New DragObject()
	            Dim draggedItem As RadListVisualItem = TryCast(Me.RadListControl1.ElementTree.GetElementAtPoint(currentPosition), RadListVisualItem)
	            If draggedItem IsNot Nothing Then
	                Dim itemText As String = draggedItem.Text
	
	                If itemText <> String.Empty Then
	                    dragObject.Values.Add(AppointmentFields.Summary, itemText)
	                    dragObject.Status = AppointmentFields.Summary
	                    'start the drag and drop operation
	                    TryCast(sender, RadListControl).DoDragDrop(dragObject, DragDropEffects.Copy)
	                End If
	            End If
	        End If
	    End Sub
	
	    Private Sub radScheduler1_DragEnter(sender As Object, e As DragEventArgs)
	        Dim dragObject As DragObject = TryCast(e.Data.GetData(GetType(DragObject)), DragObject)
	        'allow dragging over the RadScheduler
	        e.Effect = If(dragObject Is Nothing, DragDropEffects.None, DragDropEffects.Copy)
	    End Sub
	
	    #End Region
	
	    #Region "DoDragDrop"
	
	    Private Sub radScheduler1_DragDrop(sender As Object, e As DragEventArgs)
	        Dim point__1 As Point = Me.RadScheduler1.PointToClient(New Point(e.X, e.Y))
	        Dim schedulerCell As SchedulerCellElement = SchedulerUIHelper.GetCellAtPoint(point__1, Me.RadScheduler1)
	
	        If schedulerCell IsNot Nothing Then
	            Dim dragObject As DragObject = TryCast(e.Data.GetData(GetType(DragObject)), DragObject)
	            If dragObject IsNot Nothing Then
	                Dim appointment As Appointment = CreateAppointment(schedulerCell.[Date], dragObject)
	                Me.RadScheduler1.Appointments.Add(appointment)
	
	                Dim indexToRemove As Integer = Me.RadListControl1.Items.IndexOf(appointment.Summary)
	                If indexToRemove > -1 Then
	                    Me.RadListControl1.Items.RemoveAt(indexToRemove)
	                End If
	            End If
	        End If
	
	        Me.mouseDownPosition = Point.Empty
	        Me.isDragging = False
	        'save changes to database
	        SaveChanges()
	    End Sub
	
	    #End Region
	
	    #Region "DragHelper"
	
	    Private Function CreateAppointment(currentDate As DateTime, dragObject As DragObject) As Appointment
	        Dim appointment As New Appointment()
	        Dim startDate As DateTime = currentDate
	        Dim endDate As DateTime = currentDate.AddHours(1)
	        Select Case dragObject.Status
	            Case AppointmentFields.Summary
	                appointment.Summary = TryCast(dragObject.Values(dragObject.Status), String)
	                Exit Select
	            Case AppointmentFields.Row
	                appointment.Summary = TryCast(dragObject.Values(AppointmentFields.Summary), String)
	                appointment.Description = TryCast(dragObject.Values(AppointmentFields.Description), String)
	                appointment.BackgroundId = CInt(dragObject.Values(AppointmentFields.Background))
	                appointment.StatusId = CInt(dragObject.Values(AppointmentFields.Status))
	                appointment.Location = TryCast(dragObject.Values(AppointmentFields.Location), String)
	
	                startDate = DirectCast(dragObject.Values(AppointmentFields.Start), DateTime)
	                endDate = DirectCast(dragObject.Values(AppointmentFields.[End]), DateTime)
	
	                Dim range As TimeSpan = endDate - startDate
	                endDate = currentDate + range
	                startDate = currentDate
	
	                Exit Select
	        End Select
	        appointment.Start = startDate
	        appointment.[End] = endDate
	        Return appointment
	    End Function
	
	    Private Enum AppointmentFields
	        Row
	        Summary
	        Location
	        Description
	        Start
	        [End]
	        Background
	        Status
	    End Enum
	
	    Private Class DragObject
	        Private m_status As AppointmentFields
	        Private m_values As New Dictionary(Of AppointmentFields, Object)()
	
	        Public Property Status() As AppointmentFields
	            Get
	                Return Me.m_status
	            End Get
	            Set(value As AppointmentFields)
	                Me.m_status = value
	            End Set
	        End Property
	
	        Public ReadOnly Property Values() As Dictionary(Of AppointmentFields, Object)
	            Get
	                Return Me.m_values
	            End Get
	        End Property
	    End Class
	
	    #End Region
	
	    #End Region
	
	    Private Sub BindScheduler()
	        Dim appointmentMappingInfo As New AppointmentMappingInfo()
	        appointmentMappingInfo.BackgroundId = "BackgroundID"
	        appointmentMappingInfo.Description = "Description"
	        appointmentMappingInfo.[End] = "End"
	        appointmentMappingInfo.Location = "Location"
	        appointmentMappingInfo.MasterEventId = "ParentID"
	        appointmentMappingInfo.RecurrenceRule = "RecurrenceRule"
	        appointmentMappingInfo.ResourceId = "ResourceID"
	        appointmentMappingInfo.Resources = "Appointments_AppointmentsResources"
	        appointmentMappingInfo.Start = "Start"
	        appointmentMappingInfo.StatusId = "StatusID"
	        appointmentMappingInfo.Summary = "Summary"
	        SchedulerBindingDataSource1.EventProvider.Mapping = appointmentMappingInfo
	
	        Dim resourceMappingInfo As New ResourceMappingInfo()
	        resourceMappingInfo.Id = "ID"
	        resourceMappingInfo.Name = "ResourceName"
	        Me.SchedulerBindingDataSource1.ResourceProvider.Mapping = resourceMappingInfo
	
	        SchedulerBindingDataSource1.ResourceProvider.DataSource = SchedulerDataDataSet.Resources
	        SchedulerBindingDataSource1.EventProvider.DataSource = SchedulerDataDataSet.Appointments
	
	        RadScheduler1.DataSource = SchedulerBindingDataSource1
	    End Sub
	
	    Private Sub SchedulerToListControl_Load(sender As Object, e As EventArgs) Handles MyBase.Load
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.Resources' table. You can move, or remove it, as needed.
	        Me.ResourcesTableAdapter.Fill(Me.SchedulerDataDataSet.Resources)
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.AppointmentsResources' table. You can move, or remove it, as needed.
	        Me.AppointmentsResourcesTableAdapter.Fill(Me.SchedulerDataDataSet.AppointmentsResources)
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.Appointments' table. You can move, or remove it, as needed.
	        Me.AppointmentsTableAdapter.Fill(Me.SchedulerDataDataSet.Appointments)
	
	    End Sub
	End Class



1. In the RadScheduler.__DragDrop__ event you need to get the location of the mouse and convert it to a point
            that the scheduler can use to get the cell element underneath the mouse.
            This __MonthCellElement__ is passed to a private method __GetCellAppointment()__ that we will write next:

#### __[C#]__

{{source=..\SamplesCS\Scheduler\DragDrop\SchedulerToListControl.cs region=DoDragDrop}}
	        
	        private void radScheduler1_DragDrop(object sender, DragEventArgs e)
	        {
	            Point point = this.radScheduler1.PointToClient(new Point(e.X, e.Y));
	            SchedulerCellElement schedulerCell = SchedulerUIHelper.GetCellAtPoint(point, this.radScheduler1);
	            
	            if (schedulerCell != null)
	            {
	                DragObject dragObject = e.Data.GetData(typeof(DragObject)) as DragObject;
	                if (dragObject != null)
	                {
	                    Appointment appointment = CreateAppointment(schedulerCell.Date, dragObject);
	                    this.radScheduler1.Appointments.Add(appointment);
	                    
	                    int indexToRemove = this.radListControl1.Items.IndexOf(appointment.Summary);
	                    if (indexToRemove > -1)
	                    {
	                        this.radListControl1.Items.RemoveAt(indexToRemove);
	                    }
	                }
	            }
	            
	            this.mouseDownPosition = Point.Empty;
	            this.isDragging = false;
	            //save changes to database
	            SaveChanges();
	        }
	
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\DragDrop\SchedulerToListControl.vb region=DoDragDrop}}
	
	    Private Sub radScheduler1_DragDrop(sender As Object, e As DragEventArgs)
	        Dim point__1 As Point = Me.RadScheduler1.PointToClient(New Point(e.X, e.Y))
	        Dim schedulerCell As SchedulerCellElement = SchedulerUIHelper.GetCellAtPoint(point__1, Me.RadScheduler1)
	
	        If schedulerCell IsNot Nothing Then
	            Dim dragObject As DragObject = TryCast(e.Data.GetData(GetType(DragObject)), DragObject)
	            If dragObject IsNot Nothing Then
	                Dim appointment As Appointment = CreateAppointment(schedulerCell.[Date], dragObject)
	                Me.RadScheduler1.Appointments.Add(appointment)
	
	                Dim indexToRemove As Integer = Me.RadListControl1.Items.IndexOf(appointment.Summary)
	                If indexToRemove > -1 Then
	                    Me.RadListControl1.Items.RemoveAt(indexToRemove)
	                End If
	            End If
	        End If
	
	        Me.mouseDownPosition = Point.Empty
	        Me.isDragging = False
	        'save changes to database
	        SaveChanges()
	    End Sub
	
	    #End Region
	
	    #Region "DragHelper"
	
	    Private Function CreateAppointment(currentDate As DateTime, dragObject As DragObject) As Appointment
	        Dim appointment As New Appointment()
	        Dim startDate As DateTime = currentDate
	        Dim endDate As DateTime = currentDate.AddHours(1)
	        Select Case dragObject.Status
	            Case AppointmentFields.Summary
	                appointment.Summary = TryCast(dragObject.Values(dragObject.Status), String)
	                Exit Select
	            Case AppointmentFields.Row
	                appointment.Summary = TryCast(dragObject.Values(AppointmentFields.Summary), String)
	                appointment.Description = TryCast(dragObject.Values(AppointmentFields.Description), String)
	                appointment.BackgroundId = CInt(dragObject.Values(AppointmentFields.Background))
	                appointment.StatusId = CInt(dragObject.Values(AppointmentFields.Status))
	                appointment.Location = TryCast(dragObject.Values(AppointmentFields.Location), String)
	
	                startDate = DirectCast(dragObject.Values(AppointmentFields.Start), DateTime)
	                endDate = DirectCast(dragObject.Values(AppointmentFields.[End]), DateTime)
	
	                Dim range As TimeSpan = endDate - startDate
	                endDate = currentDate + range
	                startDate = currentDate
	
	                Exit Select
	        End Select
	        appointment.Start = startDate
	        appointment.[End] = endDate
	        Return appointment
	    End Function
	
	    Private Enum AppointmentFields
	        Row
	        Summary
	        Location
	        Description
	        Start
	        [End]
	        Background
	        Status
	    End Enum
	
	    Private Class DragObject
	        Private m_status As AppointmentFields
	        Private m_values As New Dictionary(Of AppointmentFields, Object)()
	
	        Public Property Status() As AppointmentFields
	            Get
	                Return Me.m_status
	            End Get
	            Set(value As AppointmentFields)
	                Me.m_status = value
	            End Set
	        End Property
	
	        Public ReadOnly Property Values() As Dictionary(Of AppointmentFields, Object)
	            Get
	                Return Me.m_values
	            End Get
	        End Property
	    End Class
	
	    #End Region
	
	    #End Region
	
	    Private Sub BindScheduler()
	        Dim appointmentMappingInfo As New AppointmentMappingInfo()
	        appointmentMappingInfo.BackgroundId = "BackgroundID"
	        appointmentMappingInfo.Description = "Description"
	        appointmentMappingInfo.[End] = "End"
	        appointmentMappingInfo.Location = "Location"
	        appointmentMappingInfo.MasterEventId = "ParentID"
	        appointmentMappingInfo.RecurrenceRule = "RecurrenceRule"
	        appointmentMappingInfo.ResourceId = "ResourceID"
	        appointmentMappingInfo.Resources = "Appointments_AppointmentsResources"
	        appointmentMappingInfo.Start = "Start"
	        appointmentMappingInfo.StatusId = "StatusID"
	        appointmentMappingInfo.Summary = "Summary"
	        SchedulerBindingDataSource1.EventProvider.Mapping = appointmentMappingInfo
	
	        Dim resourceMappingInfo As New ResourceMappingInfo()
	        resourceMappingInfo.Id = "ID"
	        resourceMappingInfo.Name = "ResourceName"
	        Me.SchedulerBindingDataSource1.ResourceProvider.Mapping = resourceMappingInfo
	
	        SchedulerBindingDataSource1.ResourceProvider.DataSource = SchedulerDataDataSet.Resources
	        SchedulerBindingDataSource1.EventProvider.DataSource = SchedulerDataDataSet.Appointments
	
	        RadScheduler1.DataSource = SchedulerBindingDataSource1
	    End Sub
	
	    Private Sub SchedulerToListControl_Load(sender As Object, e As EventArgs) Handles MyBase.Load
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.Resources' table. You can move, or remove it, as needed.
	        Me.ResourcesTableAdapter.Fill(Me.SchedulerDataDataSet.Resources)
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.AppointmentsResources' table. You can move, or remove it, as needed.
	        Me.AppointmentsResourcesTableAdapter.Fill(Me.SchedulerDataDataSet.AppointmentsResources)
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.Appointments' table. You can move, or remove it, as needed.
	        Me.AppointmentsTableAdapter.Fill(Me.SchedulerDataDataSet.Appointments)
	
	    End Sub
	End Class



1. The helper method __CreateAppointment()__ creates an appointment, starting at the cell where the __RadListControl__ item is dropped.
            This appointment gets its data from the dragged item.

#### __[C#]__

{{source=..\SamplesCS\Scheduler\DragDrop\SchedulerToListControl.cs region=DragHelper}}
	            
	        private Appointment CreateAppointment(DateTime currentDate, DragObject dragObject)
	        {
	            Appointment appointment = new Appointment();
	            DateTime startDate = currentDate;
	            DateTime endDate = currentDate.AddHours(1);
	            switch (dragObject.Status)
	            {
	                case AppointmentFields.Summary:
	                    appointment.Summary = dragObject.Values[dragObject.Status] as string;
	                    break;
	                case AppointmentFields.Row:
	                    appointment.Summary = dragObject.Values[AppointmentFields.Summary] as string;
	                    appointment.Description = dragObject.Values[AppointmentFields.Description] as string;
	                    appointment.BackgroundId = (int)dragObject.Values[AppointmentFields.Background];
	                    appointment.StatusId = (int)dragObject.Values[AppointmentFields.Status];
	                    appointment.Location = dragObject.Values[AppointmentFields.Location] as string;
	                    
	                    startDate = (DateTime)dragObject.Values[AppointmentFields.Start];
	                    endDate = (DateTime)dragObject.Values[AppointmentFields.End];
	                    
	                    TimeSpan range = endDate - startDate;
	                    endDate = currentDate + range;
	                    startDate = currentDate;
	            
	                    break;
	            }
	            appointment.Start = startDate;
	            appointment.End = endDate;
	            return appointment;
	        }
	            
	        private enum AppointmentFields
	        {
	            Row,
	            Summary,
	            Location,
	            Description,
	            Start,
	            End,
	            Background,
	            Status
	        }
	            
	        private class DragObject
	        {
	            private AppointmentFields status;
	            private Dictionary<AppointmentFields, object> values = new Dictionary<AppointmentFields, object>();
	                
	            public AppointmentFields Status
	            {
	                get
	                {
	                    return this.status;
	                }
	                set
	                {
	                    this.status = value;
	                }
	            }
	                
	            public Dictionary<AppointmentFields, object> Values
	            {
	                get
	                {
	                    return this.values;
	                }
	            }
	        }
	        
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Scheduler\DragDrop\SchedulerToListControl.vb region=DragHelper}}
	
	    Private Function CreateAppointment(currentDate As DateTime, dragObject As DragObject) As Appointment
	        Dim appointment As New Appointment()
	        Dim startDate As DateTime = currentDate
	        Dim endDate As DateTime = currentDate.AddHours(1)
	        Select Case dragObject.Status
	            Case AppointmentFields.Summary
	                appointment.Summary = TryCast(dragObject.Values(dragObject.Status), String)
	                Exit Select
	            Case AppointmentFields.Row
	                appointment.Summary = TryCast(dragObject.Values(AppointmentFields.Summary), String)
	                appointment.Description = TryCast(dragObject.Values(AppointmentFields.Description), String)
	                appointment.BackgroundId = CInt(dragObject.Values(AppointmentFields.Background))
	                appointment.StatusId = CInt(dragObject.Values(AppointmentFields.Status))
	                appointment.Location = TryCast(dragObject.Values(AppointmentFields.Location), String)
	
	                startDate = DirectCast(dragObject.Values(AppointmentFields.Start), DateTime)
	                endDate = DirectCast(dragObject.Values(AppointmentFields.[End]), DateTime)
	
	                Dim range As TimeSpan = endDate - startDate
	                endDate = currentDate + range
	                startDate = currentDate
	
	                Exit Select
	        End Select
	        appointment.Start = startDate
	        appointment.[End] = endDate
	        Return appointment
	    End Function
	
	    Private Enum AppointmentFields
	        Row
	        Summary
	        Location
	        Description
	        Start
	        [End]
	        Background
	        Status
	    End Enum
	
	    Private Class DragObject
	        Private m_status As AppointmentFields
	        Private m_values As New Dictionary(Of AppointmentFields, Object)()
	
	        Public Property Status() As AppointmentFields
	            Get
	                Return Me.m_status
	            End Get
	            Set(value As AppointmentFields)
	                Me.m_status = value
	            End Set
	        End Property
	
	        Public ReadOnly Property Values() As Dictionary(Of AppointmentFields, Object)
	            Get
	                Return Me.m_values
	            End Get
	        End Property
	    End Class
	
	    #End Region
	
	    #End Region
	
	    Private Sub BindScheduler()
	        Dim appointmentMappingInfo As New AppointmentMappingInfo()
	        appointmentMappingInfo.BackgroundId = "BackgroundID"
	        appointmentMappingInfo.Description = "Description"
	        appointmentMappingInfo.[End] = "End"
	        appointmentMappingInfo.Location = "Location"
	        appointmentMappingInfo.MasterEventId = "ParentID"
	        appointmentMappingInfo.RecurrenceRule = "RecurrenceRule"
	        appointmentMappingInfo.ResourceId = "ResourceID"
	        appointmentMappingInfo.Resources = "Appointments_AppointmentsResources"
	        appointmentMappingInfo.Start = "Start"
	        appointmentMappingInfo.StatusId = "StatusID"
	        appointmentMappingInfo.Summary = "Summary"
	        SchedulerBindingDataSource1.EventProvider.Mapping = appointmentMappingInfo
	
	        Dim resourceMappingInfo As New ResourceMappingInfo()
	        resourceMappingInfo.Id = "ID"
	        resourceMappingInfo.Name = "ResourceName"
	        Me.SchedulerBindingDataSource1.ResourceProvider.Mapping = resourceMappingInfo
	
	        SchedulerBindingDataSource1.ResourceProvider.DataSource = SchedulerDataDataSet.Resources
	        SchedulerBindingDataSource1.EventProvider.DataSource = SchedulerDataDataSet.Appointments
	
	        RadScheduler1.DataSource = SchedulerBindingDataSource1
	    End Sub
	
	    Private Sub SchedulerToListControl_Load(sender As Object, e As EventArgs) Handles MyBase.Load
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.Resources' table. You can move, or remove it, as needed.
	        Me.ResourcesTableAdapter.Fill(Me.SchedulerDataDataSet.Resources)
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.AppointmentsResources' table. You can move, or remove it, as needed.
	        Me.AppointmentsResourcesTableAdapter.Fill(Me.SchedulerDataDataSet.AppointmentsResources)
	        'TODO: This line of code loads data into the 'SchedulerDataDataSet.Appointments' table. You can move, or remove it, as needed.
	        Me.AppointmentsTableAdapter.Fill(Me.SchedulerDataDataSet.Appointments)
	
	    End Sub
	End Class

![scheduler-drag-and-drop-combining-raddragdropservice-and-ole-drag-and-drop 002](images/scheduler-drag-and-drop-combining-raddragdropservice-and-ole-drag-and-drop002.gif)
