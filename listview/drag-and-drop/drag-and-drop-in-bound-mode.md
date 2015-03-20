---
title: Drag and Drop in bound mode
page_title: Drag and Drop in bound mode
description: Drag and Drop in bound mode
slug: listview-drag-and-drop-drag-and-drop-in-bound-mode
tags: drag,and,drop,in,bound,mode
published: True
position: 0
---

# Drag and Drop in bound mode



When the __RadListView__ is in bound mode, it does not support drag and drop functionality due to the specificity of the data source. 
        However, this can be easily achieved using the built-in __ListViewDragDropService__. 
        You only need to handle events, emanating from this service.
      ![listview-drag-and-drop-drag-and-drop-in-bound-mode 001](images/listview-drag-and-drop-drag-and-drop-in-bound-mode001.gif)

## 

1. Let’s start with populating the __RadListView__ with data. For this purpose we will create
            a class Item and fill a BindingList with items:

#### __[C#] __

{{region CreateItem}}
	        
	        public class Item
	        {
	            public string UniqueId { get; set; }
	            
	            public string Title { get; set; }
	            
	            public bool IsActive { get; set; }
	            
	            public DateTime CreatedOn { get; set; }
	            
	            public Item(string uniqueId, string title, bool isActive, DateTime createdOn)
	            {
	                this.UniqueId = uniqueId;
	                this.Title = title;
	                this.IsActive = isActive;
	                this.CreatedOn = createdOn;
	            }
	        }
	        
	        public DragDropInBoundMode()
	        {
	            InitializeComponent();
	            
	            BindingList<Item> items = new BindingList<Item>();
	            for (int i = 0; i < 30; i++)
	            {
	                items.Add(new Item(Guid.NewGuid().ToString(),
	                    "Item" + i,i % 2 == 0,DateTime.Now.AddDays(i)));
	            }
	            
	            this.radListView1.DataSource = items;
	            this.radListView1.DisplayMember = "Title";
	        }
	        
	{{endregion}}



#### __[VB.NET] __

{{region CreateItem}}
	
	    Public Class Item
	        Public Property UniqueId() As String
	            Get
	                Return m_UniqueId
	            End Get
	            Set(value As String)
	                m_UniqueId = value
	            End Set
	        End Property
	        Private m_UniqueId As String
	
	        Public Property Title() As String
	            Get
	                Return m_Title
	            End Get
	            Set(value As String)
	                m_Title = value
	            End Set
	        End Property
	        Private m_Title As String
	
	        Public Property IsActive() As Boolean
	            Get
	                Return m_IsActive
	            End Get
	            Set(value As Boolean)
	                m_IsActive = value
	            End Set
	        End Property
	        Private m_IsActive As Boolean
	
	        Public Property CreatedOn() As DateTime
	            Get
	                Return m_CreatedOn
	            End Get
	            Set(value As DateTime)
	                m_CreatedOn = value
	            End Set
	        End Property
	        Private m_CreatedOn As DateTime
	
	        Public Sub New(uniqueId As String, title As String, isActive As Boolean, createdOn As DateTime)
	            Me.UniqueId = uniqueId
	            Me.Title = title
	            Me.IsActive = isActive
	            Me.CreatedOn = createdOn
	        End Sub
	    End Class
	    
	    Public Sub New()
	        InitializeComponent()
	
	        Dim items As New BindingList(Of Item)()
	        For i As Integer = 0 To 9
	            items.Add(New Item(Guid.NewGuid().ToString(), "Item" & i, i Mod 2 = 0, DateTime.Now.AddDays(i)))
	        Next
	
	        Me.radListView1.DataSource = items
	        Me.radListView1.DisplayMember = "Title"
	    End Sub
	
	    #End Region
	
	    Protected Overrides Sub OnLoad(e As EventArgs)
	        MyBase.OnLoad(e)
	
	        '#Region "EnableDragDrop"
	
	        Me.radListView1.AllowDragDrop = True
	
	        '#End Region
	
	        AddHandler Me.RadListView1.ListViewElement.DragDropService.PreviewDragStart, AddressOf DragDropService_PreviewDragStart
	        AddHandler Me.radListView1.ListViewElement.DragDropService.PreviewDragOver, AddressOf DragDropService_PreviewDragOver
	        AddHandler Me.radListView1.ListViewElement.DragDropService.PreviewDragDrop, AddressOf DragDropService_PreviewDragDrop
	    End Sub
	
	    '#Region "DragStartOver"
	
	    Private sourceBoundItem As Item
	
	    Private Sub DragDropService_PreviewDragStart(sender As Object, e As PreviewDragStartEventArgs)
	        Dim sourceItem As SimpleListViewVisualItem = TryCast(e.DragInstance, SimpleListViewVisualItem)
	        If sourceItem IsNot Nothing Then
	            sourceBoundItem = TryCast(sourceItem.Data.DataBoundItem, Item)
	        End If
	    End Sub
	
	    Private Sub DragDropService_PreviewDragOver(sender As Object, e As RadDragOverEventArgs)
	        If TypeOf e.DragInstance Is SimpleListViewVisualItem Then
	            e.CanDrop = TypeOf e.HitTarget Is SimpleListViewVisualItem OrElse TypeOf e.HitTarget Is SimpleListViewElement
	        End If
	    End Sub
	
	    '#End Region
	
	    '#Region "DragDrop"
	
	    Private Sub DragDropService_PreviewDragDrop(sender As Object, e As RadDropEventArgs)
	        e.Handled = True
	
	        Dim targetItem As SimpleListViewVisualItem = TryCast(e.HitTarget, SimpleListViewVisualItem)
	        Dim sourceItem As SimpleListViewVisualItem = TryCast(e.DragInstance, SimpleListViewVisualItem)
	        Dim viewElement As SimpleListViewElement = TryCast(e.HitTarget, SimpleListViewElement)
	        If (targetItem Is Nothing OrElse sourceItem Is Nothing) AndAlso viewElement Is Nothing Then
	            Return
	        End If
	        Dim dataSource As BindingList(Of Item) = TryCast(sourceItem.Data.ListView.DataSource, BindingList(Of Item))
	        If dataSource IsNot Nothing Then
	            If sourceBoundItem IsNot Nothing Then
	                Dim sourceIndex As Integer = dataSource.IndexOf(sourceBoundItem)
	                If viewElement IsNot Nothing Then
	                    'add the dragged item at last position
	                    dataSource.RemoveAt(sourceIndex)
	                    dataSource.Add(sourceBoundItem)
	                Else
	                    viewElement = TryCast(sourceItem.Data.ListView.ListViewElement.ViewElement, SimpleListViewElement)
	                    'reorder the items in the BindingList
	                    Dim targetBoundItem As Item = TryCast(targetItem.Data.DataBoundItem, Item)
	
	                    dataSource.RemoveAt(sourceIndex)
	                    Dim targetIndex As Integer = dataSource.IndexOf(targetBoundItem)
	
	                    If viewElement.ShouldDropAfter(targetItem, e.DropLocation) Then
	                        targetIndex += 1
	                    End If
	                    dataSource.Insert(targetIndex, sourceBoundItem)
	                End If
	            End If
	        End If
	    End Sub
	    
	    '#End Region
	End Class



1. In order to enable the drag and drop functionality, set the RadListView.__AllowDragDrop__ property to
            *true*:

#### __[C#] __

{{region EnableDragDrop}}
	            
	            this.radListView1.AllowDragDrop = true;
	            
	{{endregion}}



#### __[VB.NET] __

{{region EnableDragDrop}}
	
	        Me.radListView1.AllowDragDrop = True
	
	        '#End Region
	
	        AddHandler Me.RadListView1.ListViewElement.DragDropService.PreviewDragStart, AddressOf DragDropService_PreviewDragStart
	        AddHandler Me.radListView1.ListViewElement.DragDropService.PreviewDragOver, AddressOf DragDropService_PreviewDragOver
	        AddHandler Me.radListView1.ListViewElement.DragDropService.PreviewDragDrop, AddressOf DragDropService_PreviewDragDrop
	    End Sub
	
	    '#Region "DragStartOver"
	
	    Private sourceBoundItem As Item
	
	    Private Sub DragDropService_PreviewDragStart(sender As Object, e As PreviewDragStartEventArgs)
	        Dim sourceItem As SimpleListViewVisualItem = TryCast(e.DragInstance, SimpleListViewVisualItem)
	        If sourceItem IsNot Nothing Then
	            sourceBoundItem = TryCast(sourceItem.Data.DataBoundItem, Item)
	        End If
	    End Sub
	
	    Private Sub DragDropService_PreviewDragOver(sender As Object, e As RadDragOverEventArgs)
	        If TypeOf e.DragInstance Is SimpleListViewVisualItem Then
	            e.CanDrop = TypeOf e.HitTarget Is SimpleListViewVisualItem OrElse TypeOf e.HitTarget Is SimpleListViewElement
	        End If
	    End Sub
	
	    '#End Region
	
	    '#Region "DragDrop"
	
	    Private Sub DragDropService_PreviewDragDrop(sender As Object, e As RadDropEventArgs)
	        e.Handled = True
	
	        Dim targetItem As SimpleListViewVisualItem = TryCast(e.HitTarget, SimpleListViewVisualItem)
	        Dim sourceItem As SimpleListViewVisualItem = TryCast(e.DragInstance, SimpleListViewVisualItem)
	        Dim viewElement As SimpleListViewElement = TryCast(e.HitTarget, SimpleListViewElement)
	        If (targetItem Is Nothing OrElse sourceItem Is Nothing) AndAlso viewElement Is Nothing Then
	            Return
	        End If
	        Dim dataSource As BindingList(Of Item) = TryCast(sourceItem.Data.ListView.DataSource, BindingList(Of Item))
	        If dataSource IsNot Nothing Then
	            If sourceBoundItem IsNot Nothing Then
	                Dim sourceIndex As Integer = dataSource.IndexOf(sourceBoundItem)
	                If viewElement IsNot Nothing Then
	                    'add the dragged item at last position
	                    dataSource.RemoveAt(sourceIndex)
	                    dataSource.Add(sourceBoundItem)
	                Else
	                    viewElement = TryCast(sourceItem.Data.ListView.ListViewElement.ViewElement, SimpleListViewElement)
	                    'reorder the items in the BindingList
	                    Dim targetBoundItem As Item = TryCast(targetItem.Data.DataBoundItem, Item)
	
	                    dataSource.RemoveAt(sourceIndex)
	                    Dim targetIndex As Integer = dataSource.IndexOf(targetBoundItem)
	
	                    If viewElement.ShouldDropAfter(targetItem, e.DropLocation) Then
	                        targetIndex += 1
	                    End If
	                    dataSource.Insert(targetIndex, sourceBoundItem)
	                End If
	            End If
	        End If
	    End Sub
	    
	    '#End Region
	End Class



1. Use the ListViewElement.DragDropService.__PreviewDragStart__ event to get the dragged item. Subscribe to the ListViewElement.DragDropService.__PreviewDragOver__ event, 
            which allows you to control on what targets the item, being dragged, can be dropped on:

#### __[C#] __

{{region DragStartOver}}
	        
	        Item sourceBoundItem;
	        
	        private void DragDropService_PreviewDragStart(object sender, PreviewDragStartEventArgs e)
	        {
	            SimpleListViewVisualItem sourceItem = e.DragInstance as SimpleListViewVisualItem;
	            if (sourceItem != null)
	            {
	                sourceBoundItem = sourceItem.Data.DataBoundItem as Item;
	            }
	        }
	        
	        private void DragDropService_PreviewDragOver(object sender, RadDragOverEventArgs e)
	        {
	            if (e.DragInstance is SimpleListViewVisualItem)
	            {
	                e.CanDrop = e.HitTarget is SimpleListViewVisualItem ||
	                            e.HitTarget is SimpleListViewElement ;
	            }
	        }
	        
	{{endregion}}



#### __[VB.NET] __

{{region DragStartOver}}
	
	    Private sourceBoundItem As Item
	
	    Private Sub DragDropService_PreviewDragStart(sender As Object, e As PreviewDragStartEventArgs)
	        Dim sourceItem As SimpleListViewVisualItem = TryCast(e.DragInstance, SimpleListViewVisualItem)
	        If sourceItem IsNot Nothing Then
	            sourceBoundItem = TryCast(sourceItem.Data.DataBoundItem, Item)
	        End If
	    End Sub
	
	    Private Sub DragDropService_PreviewDragOver(sender As Object, e As RadDragOverEventArgs)
	        If TypeOf e.DragInstance Is SimpleListViewVisualItem Then
	            e.CanDrop = TypeOf e.HitTarget Is SimpleListViewVisualItem OrElse TypeOf e.HitTarget Is SimpleListViewElement
	        End If
	    End Sub
	
	    '#End Region
	
	    '#Region "DragDrop"
	
	    Private Sub DragDropService_PreviewDragDrop(sender As Object, e As RadDropEventArgs)
	        e.Handled = True
	
	        Dim targetItem As SimpleListViewVisualItem = TryCast(e.HitTarget, SimpleListViewVisualItem)
	        Dim sourceItem As SimpleListViewVisualItem = TryCast(e.DragInstance, SimpleListViewVisualItem)
	        Dim viewElement As SimpleListViewElement = TryCast(e.HitTarget, SimpleListViewElement)
	        If (targetItem Is Nothing OrElse sourceItem Is Nothing) AndAlso viewElement Is Nothing Then
	            Return
	        End If
	        Dim dataSource As BindingList(Of Item) = TryCast(sourceItem.Data.ListView.DataSource, BindingList(Of Item))
	        If dataSource IsNot Nothing Then
	            If sourceBoundItem IsNot Nothing Then
	                Dim sourceIndex As Integer = dataSource.IndexOf(sourceBoundItem)
	                If viewElement IsNot Nothing Then
	                    'add the dragged item at last position
	                    dataSource.RemoveAt(sourceIndex)
	                    dataSource.Add(sourceBoundItem)
	                Else
	                    viewElement = TryCast(sourceItem.Data.ListView.ListViewElement.ViewElement, SimpleListViewElement)
	                    'reorder the items in the BindingList
	                    Dim targetBoundItem As Item = TryCast(targetItem.Data.DataBoundItem, Item)
	
	                    dataSource.RemoveAt(sourceIndex)
	                    Dim targetIndex As Integer = dataSource.IndexOf(targetBoundItem)
	
	                    If viewElement.ShouldDropAfter(targetItem, e.DropLocation) Then
	                        targetIndex += 1
	                    End If
	                    dataSource.Insert(targetIndex, sourceBoundItem)
	                End If
	            End If
	        End If
	    End Sub
	    
	    '#End Region
	End Class



1. The last event we need to handle in our implementation is the ListViewElement.DragDropService.__PreviewDragDrop__ event.
            This is where we will initiate the actual physical move of the item from one position to another. Implement the handler as follows:

#### __[C#] __

{{region DragDrop}}
	        
	        private void DragDropService_PreviewDragDrop(object sender, RadDropEventArgs e)
	        {
	            e.Handled = true;
	            
	            SimpleListViewVisualItem targetItem = e.HitTarget as SimpleListViewVisualItem;
	            SimpleListViewVisualItem sourceItem = e.DragInstance as SimpleListViewVisualItem;
	            SimpleListViewElement viewElement = e.HitTarget as SimpleListViewElement; 
	            if ((targetItem == null || sourceItem == null) && viewElement == null)
	            {
	                return;
	            }
	            BindingList<Item> dataSource = sourceItem.Data.ListView.DataSource as BindingList<Item> ;
	            if (dataSource != null)
	            {
	                if (sourceBoundItem != null)
	                {
	                    int sourceIndex = dataSource.IndexOf(sourceBoundItem);
	                    if (viewElement != null)
	                    {
	                        //add the dragged item at last position
	                        dataSource.RemoveAt(sourceIndex);
	                        dataSource.Add(sourceBoundItem);
	                    }
	                    else
	                    {
	                        viewElement = sourceItem.Data.ListView.ListViewElement.ViewElement as SimpleListViewElement;
	                        //reorder the items in the BindingList
	                        Item targetBoundItem = targetItem.Data.DataBoundItem as Item;
	                        
	                        dataSource.RemoveAt(sourceIndex);  
	                        int targetIndex = dataSource.IndexOf(targetBoundItem);
	                        
	                        if (viewElement.ShouldDropAfter(targetItem, e.DropLocation))
	                        {
	                            targetIndex++;
	                        }
	                        dataSource.Insert(targetIndex, sourceBoundItem);
	                    }
	                }
	            }
	        }
	    
	{{endregion}}



#### __[VB.NET] __

{{region DragDrop}}
	
	    Private Sub DragDropService_PreviewDragDrop(sender As Object, e As RadDropEventArgs)
	        e.Handled = True
	
	        Dim targetItem As SimpleListViewVisualItem = TryCast(e.HitTarget, SimpleListViewVisualItem)
	        Dim sourceItem As SimpleListViewVisualItem = TryCast(e.DragInstance, SimpleListViewVisualItem)
	        Dim viewElement As SimpleListViewElement = TryCast(e.HitTarget, SimpleListViewElement)
	        If (targetItem Is Nothing OrElse sourceItem Is Nothing) AndAlso viewElement Is Nothing Then
	            Return
	        End If
	        Dim dataSource As BindingList(Of Item) = TryCast(sourceItem.Data.ListView.DataSource, BindingList(Of Item))
	        If dataSource IsNot Nothing Then
	            If sourceBoundItem IsNot Nothing Then
	                Dim sourceIndex As Integer = dataSource.IndexOf(sourceBoundItem)
	                If viewElement IsNot Nothing Then
	                    'add the dragged item at last position
	                    dataSource.RemoveAt(sourceIndex)
	                    dataSource.Add(sourceBoundItem)
	                Else
	                    viewElement = TryCast(sourceItem.Data.ListView.ListViewElement.ViewElement, SimpleListViewElement)
	                    'reorder the items in the BindingList
	                    Dim targetBoundItem As Item = TryCast(targetItem.Data.DataBoundItem, Item)
	
	                    dataSource.RemoveAt(sourceIndex)
	                    Dim targetIndex As Integer = dataSource.IndexOf(targetBoundItem)
	
	                    If viewElement.ShouldDropAfter(targetItem, e.DropLocation) Then
	                        targetIndex += 1
	                    End If
	                    dataSource.Insert(targetIndex, sourceBoundItem)
	                End If
	            End If
	        End If
	    End Sub
	    
	    '#End Region
	End Class


