---
title: Combining RadDragDropService and OLE drag-and-drop
page_title: Combining RadDragDropService and OLE drag-and-drop | UI for WinForms Documentation
description: Combining RadDragDropService and OLE drag-and-drop
slug: winforms/listview/drag-and-drop/combining-raddragdropservice-and-ole-drag-and-drop
tags: combining,raddragdropservice,and,ole,drag-and-drop
published: True
position: 3
previous_url: listview-drag-and-drop-combining-raddragdropservice-and-ole-drag-and-drop
---

# Combining RadDragDropService and OLE drag-and-drop

This article demonstrates a sample approach how to achieve drag and drop functionality between __RadListView__ and __RadListControl__. For this purpose, we will use a combination between the __RadDragDropService__, supported by the __RadListView__ control, and the OLE drag-and-drop, which is supported by all controls from the Telerik UI for WinForms suite.
      

Let’s assume that our __RadListView__ is in bound mode and its __ViewType__ property is set to *IconsView*. The __RadListControl__ is populated manually with items. Set the __AllowDrop__ property to *true*  for both of the controls. Additionally, you need to set the RadListView.__AllowDragDrop__ property to *true* as well.

{{source=..\SamplesCS\ListView\DragDrop\DragDropListViewListControl.cs region=PopulateWithData}} 
{{source=..\SamplesVB\ListView\DragDrop\DragDropListViewListControl.vb region=PopulateWithData}} 

````C#
            
BindingList<string> items = new BindingList<string>();
for (int i = 0; i < 10; i++)
{
    items.Add("Item" + i);                
    this.radListControl1.Items.Add("ListControlItem" + i);
}
            
this.radListView1.DataSource = items;
this.radListView1.AllowDragDrop = true;
this.radListView1.AllowDrop = true;
this.radListControl1.AllowDrop = true;
this.radListView1.ViewType = Telerik.WinControls.UI.ListViewType.IconsView;

````
````VB.NET
Dim items As New BindingList(Of String)()
For i As Integer = 0 To 9
    items.Add("Item" & i)
    Me.RadListControl1.Items.Add("ListControlItem" & i)
Next
Me.RadListView1.DataSource = items
Me.RadListView1.AllowDragDrop = True
Me.RadListView1.AllowDrop = True
Me.RadListControl1.AllowDrop = True
Me.RadListView1.ViewType = Telerik.WinControls.UI.ListViewType.IconsView

````

{{endregion}} 


## Drag and drop from RadListView to RadListControl using RadDragDropService

![listview-drag-and-drop-combining-raddragdropservice-and-ole-drag-and-drop 001](images/listview-drag-and-drop-combining-raddragdropservice-and-ole-drag-and-drop001.gif)

To implement drag and drop functionality for this scenario, we will use the ListViewElement.__DragDropService__, which is a derivative of the In the __PreviewDragOver__ event allow dropping over a __RadListElement__. The __PreviewDragDrop__  event performs the actual inserting of the dragged item into the RadListControl.__Items__ collection:

{{source=..\SamplesCS\ListView\DragDrop\DragDropListViewListControl.cs region=ListViewToListControl}} 
{{source=..\SamplesVB\ListView\DragDrop\DragDropListViewListControl.vb region=ListViewToListControl}} 

````C#
        
private void DragDropService_PreviewDragOver(object sender, Telerik.WinControls.RadDragOverEventArgs e)
{
    e.CanDrop = e.HitTarget is RadListElement;
}
        
private void DragDropService_PreviewDragDrop(object sender, Telerik.WinControls.RadDropEventArgs e)
{ 
    BaseListViewVisualItem draggedItem = e.DragInstance as BaseListViewVisualItem;
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
    RadListDataItem newItem = new RadListDataItem(draggedItem.Data.Text);
    listControl.Items.Insert(indexToInsert, newItem);
    
    draggedItem.Data.ListView.Items.Remove(draggedItem.Data);
}

````
````VB.NET
Private Sub DragDropService_PreviewDragOver(sender As Object, e As Telerik.WinControls.RadDragOverEventArgs)
    e.CanDrop = TypeOf e.HitTarget Is RadListElement
End Sub
Private Sub DragDropService_PreviewDragDrop(sender As Object, e As Telerik.WinControls.RadDropEventArgs)
    Dim draggedItem As BaseListViewVisualItem = TryCast(e.DragInstance, BaseListViewVisualItem)
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
    Dim newItem As New RadListDataItem(draggedItem.Data.Text)
    listControl.Items.Insert(indexToInsert, newItem)
    draggedItem.Data.ListView.Items.Remove(draggedItem.Data)
End Sub

````

{{endregion}} 

## Drag and drop from RadListControl to RadListView using the OLE drag-and-drop

![listview-drag-and-drop-combining-raddragdropservice-and-ole-drag-and-drop 002](images/listview-drag-and-drop-combining-raddragdropservice-and-ole-drag-and-drop002.gif)

1\. Firstly, we should start the drag and drop operation using the RadListControl.__MouseMove__ event when the left mouse button is pressed. We should keep the mouse down location in the RadListControl.__MouseDown__ event. Afterwards, allow dragging over the __RadListView__ via the __Effect__ argument of the __DragEventArgs__  in the RadListView.__DragEnter__ event handler:

{{source=..\SamplesCS\ListView\DragDrop\DragDropListViewListControl.cs region=ListControlToListViewStart}} 
{{source=..\SamplesVB\ListView\DragDrop\DragDropListViewListControl.vb region=ListControlToListViewStart}} 

````C#
        
private Point mouseDownPosition;
private bool isDragging;
private void radListControl1_MouseDown(object sender, MouseEventArgs e)
{
    this.mouseDownPosition = e.Location;
}
private void radListControl1_MouseMove(object sender, MouseEventArgs e)
{
    if (e.Button != MouseButtons.Left)
    {
        this.isDragging = false;
        return;
    }
    if (this.isDragging)
    {
        return;
    }
    if (this.ShouldBeginDrag(this.mouseDownPosition, e.Location))
    {
        RadListVisualItem draggedItem = this.radListControl1.ElementTree.GetElementAtPoint(this.mouseDownPosition) as RadListVisualItem;
        if (draggedItem != null)
        {
            this.isDragging = true;
            //start the drag and drop operation
            (sender as RadListControl).DoDragDrop(draggedItem.Data, DragDropEffects.Copy);
        }
    }
}
        
private bool ShouldBeginDrag(Point current, Point capture)
{
    Size dragSize = SystemInformation.DragSize;
    Rectangle dragRect = new Rectangle(capture.X - dragSize.Width / 2,
        capture.Y - dragSize.Height / 2, dragSize.Width, dragSize.Height);
    return !dragRect.Contains(current);
}
        
private void radListView1_DragEnter(object sender, DragEventArgs e)
{
    e.Effect = DragDropEffects.Copy;
}

````
````VB.NET
Private mouseDownPosition As Point
Private isDragging As Boolean
Private Sub radListControl1_MouseDown(sender As Object, e As MouseEventArgs)
    Me.mouseDownPosition = e.Location
End Sub
Private Sub radListControl1_MouseMove(sender As Object, e As MouseEventArgs)
    If e.Button <> MouseButtons.Left Then
        Me.isDragging = False
        Return
    End If
    If Me.isDragging Then
        Return
    End If
    If Me.ShouldBeginDrag(Me.mouseDownPosition, e.Location) Then
        Dim draggedItem As RadListVisualItem = TryCast(Me.RadListControl1.ElementTree.GetElementAtPoint(Me.mouseDownPosition), RadListVisualItem)
        If draggedItem IsNot Nothing Then
            Me.isDragging = True
            'start the drag and drop operation
            TryCast(sender, RadListControl).DoDragDrop(draggedItem.Data, DragDropEffects.Copy)
        End If
    End If
End Sub
Private Function ShouldBeginDrag(current As Point, capture As Point) As Boolean
    Dim dragSize As Size = SystemInformation.DragSize
    Dim dragRect As New Rectangle(capture.X - dragSize.Width / 2, capture.Y - dragSize.Height / 2, dragSize.Width, dragSize.Height)
    Return Not dragRect.Contains(current)
End Function
Private Sub radListView1_DragEnter(sender As Object, e As DragEventArgs)
    e.Effect = DragDropEffects.Copy
End Sub

````

{{endregion}} 

2\. In the RadListView.__DragDrop__ event you need to get the location of the mouse and convert it to a point that the __RadListView__ can use to get the element underneath the mouse. Afterwards, insert the dragged item on the specific position. We should reset the stored mouse down location as well:

{{source=..\SamplesCS\ListView\DragDrop\DragDropListViewListControl.cs region=ListControlToListViewDragDrop}} 
{{source=..\SamplesVB\ListView\DragDrop\DragDropListViewListControl.vb region=ListControlToListViewDragDrop}} 

````C#
        
private void radListView1_DragDrop(object sender, DragEventArgs e)
{
    RadListView listView = sender as RadListView;
    Point point = listView.PointToClient(new Point(e.X, e.Y));
    BaseListViewVisualItem targetItem = listView.ElementTree.GetElementAtPoint(point) as BaseListViewVisualItem;
    RadListDataItem draggedItem = e.Data.GetData(typeof(RadListDataItem)) as RadListDataItem;
   
    BindingList<string> targetDataSource = listView.DataSource as BindingList<string>; 
    if (targetDataSource != null)
    {
        //you are dropping over an item
        if (targetItem != null)
        {
            int targetIndex = listView.Items.IndexOf(targetItem.Data);
                
            targetDataSource.Insert(targetIndex, draggedItem.Text);
        }
        else // you are dropping over the ListViewElement
        {
            targetDataSource.Add(draggedItem.Text);
        }
    }
    
    int indexToRemove = this.radListControl1.Items.IndexOf(draggedItem);
    if (indexToRemove > -1)
    {
        this.radListControl1.Items.RemoveAt(indexToRemove);
    }
    this.mouseDownPosition = Point.Empty;
    this.isDragging = false;
}
     
private void radListControl1_MouseUp(object sender, MouseEventArgs e)
{
    this.mouseDownPosition = Point.Empty;
    this.isDragging = false;
}

````
````VB.NET
Private Sub radListView1_DragDrop(sender As Object, e As DragEventArgs)
    Dim listView As RadListView = TryCast(sender, RadListView)
    Dim point__1 As Point = listView.PointToClient(New Point(e.X, e.Y))
    Dim targetItem As BaseListViewVisualItem = TryCast(listView.ElementTree.GetElementAtPoint(point__1), BaseListViewVisualItem)
    Dim draggedItem As RadListDataItem = TryCast(e.Data.GetData(GetType(RadListDataItem)), RadListDataItem)
    Dim targetDataSource As BindingList(Of String) = TryCast(listView.DataSource, BindingList(Of String))
    If targetDataSource IsNot Nothing Then
        'you are dropping over an item
        If targetItem IsNot Nothing Then
            Dim targetIndex As Integer = listView.Items.IndexOf(targetItem.Data)
            targetDataSource.Insert(targetIndex, draggedItem.Text)
        Else
            ' you are dropping over the ListViewElement
            targetDataSource.Add(draggedItem.Text)
        End If
    End If
    Dim indexToRemove As Integer = Me.RadListControl1.Items.IndexOf(draggedItem)
    If indexToRemove > -1 Then
        Me.RadListControl1.Items.RemoveAt(indexToRemove)
    End If
    Me.mouseDownPosition = Point.Empty
    Me.isDragging = False
End Sub
Private Sub radListControl1_MouseUp(sender As Object, e As MouseEventArgs)
    Me.mouseDownPosition = Point.Empty
    Me.isDragging = False
End Sub

````

{{endregion}} 



