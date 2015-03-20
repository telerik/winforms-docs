---
title: Drag and Drop from another control
page_title: Drag and Drop from another control
description: Drag and Drop from another control
slug: listview-drag-and-drop-drag-and-drop-from-another-control
tags: drag,and,drop,from,another,control
published: True
position: 1
---

# Drag and Drop from another control



__RadListView__  supports drag and drop functionality from another control, 
        such as dragging and dropping items from a Microsoft ListBox. It is necessary to set the __AllowDrop__ 
        property to *true* for both of the controls.

## Drag and drop from ListBox to RadListView ![listview-drag-and-drop-drag-and-drop-from-another-control 001](images/listview-drag-and-drop-drag-and-drop-from-another-control001.gif)

1. Firstly, we should start the drag and drop operation, using the ListBox.__MouseMove__ event
              when the left mouse button is pressed. We should keep the mouse down location in the ListBox.__MouseDown__ event.
              Afterwards, allow dragging over the __RadListView__  via the
            __Effect__ argument of the __DragEventArgs__ in the RadListView.__DragEnter__ 
              event handler:

#### __[C#] __

{{region ListBoxToListViewStart}}
	
	        private bool isDragging;
	        private Point mouseDownPosition; 
	        
	        private void listBox1_MouseDown(object sender, MouseEventArgs e)
	        {
	            this.mouseDownPosition = e.Location;
	        }
	        
	        private void listBox1_MouseMove(object sender, MouseEventArgs e)
	        {
	            if (e.Button != MouseButtons.Left)
	            {
	                return;
	            }
	
	            if (this.isDragging)
	            {
	                return;
	            }
	
	            if (this.ShouldBeginDrag(this.mouseDownPosition, e.Location))
	            {
	                int index = this.listBox1.IndexFromPoint(e.X, e.Y);
	                if (index > -1 && index < this.listBox1.Items.Count)
	                {
	                    string itemText = this.listBox1.Items[index].ToString(); 
	
	                    if (itemText != string.Empty)
	                    {
	                        this.isDragging = true;
	                        //start the drag and drop operation
	                        (sender as ListBox).DoDragDrop(itemText, DragDropEffects.Copy);
	                    }
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
	        
	{{endregion}}



#### __[VB.NET] __

{{region ListBoxToListViewStart}}
	
	    Private isDragging As Boolean
	    Private mouseDownPosition As Point
	
	    Private Sub listBox1_MouseDown(sender As Object, e As MouseEventArgs)
	        Me.mouseDownPosition = e.Location
	    End Sub
	
	    Private Sub listBox1_MouseMove(sender As Object, e As MouseEventArgs)
	        If e.Button <> MouseButtons.Left Then
	            Return
	        End If
	
	        If Me.isDragging Then
	            Return
	        End If
	
	        If Me.ShouldBeginDrag(Me.mouseDownPosition, e.Location) Then
	            Dim index As Integer = Me.ListBox1.IndexFromPoint(e.X, e.Y)
	            If index > -1 AndAlso index < Me.ListBox1.Items.Count Then
	                Dim itemText As String = Me.ListBox1.Items(index).ToString()
	
	                If itemText <> String.Empty Then
	                    Me.isDragging = True
	                    'start the drag and drop operation
	                    TryCast(sender, ListBox).DoDragDrop(itemText, DragDropEffects.Copy)
	                End If
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
	
	    '#End Region
	
	    '#Region "ListBoxToListViewDragDrop"
	
	
	    Private Sub radListView1_DragDrop(sender As Object, e As DragEventArgs)
	        Dim point As Point = Me.RadListView1.PointToClient(New Point(e.X, e.Y))
	        Dim targetItem As BaseListViewVisualItem = TryCast(Me.RadListView1.ElementTree.GetElementAtPoint(point), BaseListViewVisualItem)
	        Dim draggedText As String = e.Data.GetData(GetType(String)).ToString()
	
	        'you are dropping over an item
	        If targetItem IsNot Nothing Then
	            Dim targetIndex As Integer = Me.RadListView1.Items.IndexOf(targetItem.Data)
	            Me.RadListView1.Items.Insert(targetIndex, New ListViewDataItem(draggedText))
	        Else
	            ' you are dropping over the ListViewElement
	            Me.RadListView1.Items.Add(New ListViewDataItem(draggedText))
	        End If
	        Dim indexToRemove As Integer = Me.ListBox1.Items.IndexOf(draggedText)
	        If indexToRemove > -1 Then
	            Me.ListBox1.Items.RemoveAt(indexToRemove)
	        End If
	        Me.mouseDownPosition = point.Empty
	        Me.isDragging = False
	    End Sub
	
	    Private Sub listBox1_MouseUp(sender As Object, e As MouseEventArgs)
	        Me.mouseDownPosition = Point.Empty
	        Me.isDragging = False
	    End Sub
	
	    '#End Region
	    
	    '#End Region
	
	    '#Region "ListViewToListBox"
	
	
	    '#Region "ListViewToListBoxStart"
	
	    Private lastMouseDownLocation As Point
	
	    Private Sub radListView1_MouseDown(sender As Object, e As MouseEventArgs)
	        Me.lastMouseDownLocation = e.Location
	    End Sub
	
	    Private Sub radListView1_MouseMove(sender As Object, e As MouseEventArgs)
	        If e.Button <> MouseButtons.Left Then
	            Return
	        End If
	        Dim draggedItem As BaseListViewVisualItem = TryCast(RadListView1.ElementTree.GetElementAtPoint(e.Location), BaseListViewVisualItem)
	        If draggedItem IsNot Nothing AndAlso _
	        IsRealDrag(Me.lastMouseDownLocation, e.Location) Then
	            RadListView1.Capture = False
	            RadListView1.DoDragDrop(draggedItem.Data, DragDropEffects.Move)
	        End If
	    End Sub
	
	    Private Function IsRealDrag(current As Point, capture As Point) As Boolean
	        Dim dragSize As Size = SystemInformation.DragSize
	        Dim dragRect As New Rectangle(capture.X - dragSize.Width / 2, _
	                                      capture.Y - dragSize.Height / 2, dragSize.Width, dragSize.Height)
	        Return Not dragRect.Contains(current)
	    End Function
	
	    Private Sub listBox1_DragEnter(sender As Object, e As DragEventArgs)
	        e.Effect = DragDropEffects.Move
	    End Sub
	
	    '#End Region
	
	    '#Region "ListViewToListBoxDrop"
	
	    Private Sub listBox1_DragDrop(sender As Object, e As DragEventArgs)
	        Dim draggedItem As ListViewDataItem = TryCast(e.Data.GetData(GetType(ListViewDataItem)), ListViewDataItem)
	        If draggedItem IsNot Nothing Then
	            Dim point As Point = Me.ListBox1.PointToClient(New Point(e.X, e.Y))
	            Dim targetIndex As Integer = Me.ListBox1.IndexFromPoint(point)
	            If targetIndex > -1 Then
	                Me.ListBox1.Items.Insert(targetIndex, draggedItem.Text)
	            Else
	                Me.ListBox1.Items.Add(draggedItem.Text)
	            End If
	            Dim sourceIndex As Integer = Me.RadListView1.Items.IndexOf(draggedItem)
	            If sourceIndex > -1 Then
	                Me.RadListView1.Items.RemoveAt(sourceIndex)
	            End If
	        End If
	        Me.lastMouseDownLocation = Point.Empty
	    End Sub
	
	    Private Sub radListView1_MouseUp(sender As Object, e As MouseEventArgs)
	        Me.lastMouseDownLocation = Point.Empty
	    End Sub
	
	    '#End Region
	
	    '#End Region
	End Class



1. In the RadListView.__DragDrop__ event handler you need to get the location of the mouse and convert
            it to a point that the __RadListView__ can use to get the target item underneath the mouse. 
            Afterwards, insert the dragged item at the specific position in the RadListView.__Items__ collection 
            and remove it from the ListBox. We should reset the stored mouse down location as well.

#### __[C#] __

{{region ListBoxToListViewDragDrop}}
	        
	        private void radListView1_DragDrop(object sender, DragEventArgs e)
	        {
	            Point point = this.radListView1.PointToClient(new Point(e.X, e.Y));
	            BaseListViewVisualItem targetItem = this.radListView1.ElementTree.GetElementAtPoint(point) as BaseListViewVisualItem;
	            string draggedText = e.Data.GetData(typeof(string)).ToString();
	            
	            //you are dropping over an item
	            if (targetItem != null)
	            {
	                int targetIndex = this.radListView1.Items.IndexOf(targetItem.Data);
	                this.radListView1.Items.Insert(targetIndex, new ListViewDataItem(draggedText));
	            }
	            else // you are dropping over the ListViewElement
	            {
	                this.radListView1.Items.Add(new ListViewDataItem(draggedText));
	            }
	            int indexToRemove = this.listBox1.Items.IndexOf(draggedText);
	            if (indexToRemove > -1)
	            {
	                this.listBox1.Items.RemoveAt(indexToRemove);
	            }
	            this.mouseDownPosition = Point.Empty;
	            this.isDragging = false;
	        }
	        
	        private void listBox1_MouseUp(object sender, MouseEventArgs e)
	        {
	            this.mouseDownPosition = Point.Empty;
	            this.isDragging = false;
	        }
	        
	{{endregion}}



#### __[VB.NET] __

{{region ListBoxToListViewDragDrop}}
	
	
	    Private Sub radListView1_DragDrop(sender As Object, e As DragEventArgs)
	        Dim point As Point = Me.RadListView1.PointToClient(New Point(e.X, e.Y))
	        Dim targetItem As BaseListViewVisualItem = TryCast(Me.RadListView1.ElementTree.GetElementAtPoint(point), BaseListViewVisualItem)
	        Dim draggedText As String = e.Data.GetData(GetType(String)).ToString()
	
	        'you are dropping over an item
	        If targetItem IsNot Nothing Then
	            Dim targetIndex As Integer = Me.RadListView1.Items.IndexOf(targetItem.Data)
	            Me.RadListView1.Items.Insert(targetIndex, New ListViewDataItem(draggedText))
	        Else
	            ' you are dropping over the ListViewElement
	            Me.RadListView1.Items.Add(New ListViewDataItem(draggedText))
	        End If
	        Dim indexToRemove As Integer = Me.ListBox1.Items.IndexOf(draggedText)
	        If indexToRemove > -1 Then
	            Me.ListBox1.Items.RemoveAt(indexToRemove)
	        End If
	        Me.mouseDownPosition = point.Empty
	        Me.isDragging = False
	    End Sub
	
	    Private Sub listBox1_MouseUp(sender As Object, e As MouseEventArgs)
	        Me.mouseDownPosition = Point.Empty
	        Me.isDragging = False
	    End Sub
	
	    '#End Region
	    
	    '#End Region
	
	    '#Region "ListViewToListBox"
	
	
	    '#Region "ListViewToListBoxStart"
	
	    Private lastMouseDownLocation As Point
	
	    Private Sub radListView1_MouseDown(sender As Object, e As MouseEventArgs)
	        Me.lastMouseDownLocation = e.Location
	    End Sub
	
	    Private Sub radListView1_MouseMove(sender As Object, e As MouseEventArgs)
	        If e.Button <> MouseButtons.Left Then
	            Return
	        End If
	        Dim draggedItem As BaseListViewVisualItem = TryCast(RadListView1.ElementTree.GetElementAtPoint(e.Location), BaseListViewVisualItem)
	        If draggedItem IsNot Nothing AndAlso _
	        IsRealDrag(Me.lastMouseDownLocation, e.Location) Then
	            RadListView1.Capture = False
	            RadListView1.DoDragDrop(draggedItem.Data, DragDropEffects.Move)
	        End If
	    End Sub
	
	    Private Function IsRealDrag(current As Point, capture As Point) As Boolean
	        Dim dragSize As Size = SystemInformation.DragSize
	        Dim dragRect As New Rectangle(capture.X - dragSize.Width / 2, _
	                                      capture.Y - dragSize.Height / 2, dragSize.Width, dragSize.Height)
	        Return Not dragRect.Contains(current)
	    End Function
	
	    Private Sub listBox1_DragEnter(sender As Object, e As DragEventArgs)
	        e.Effect = DragDropEffects.Move
	    End Sub
	
	    '#End Region
	
	    '#Region "ListViewToListBoxDrop"
	
	    Private Sub listBox1_DragDrop(sender As Object, e As DragEventArgs)
	        Dim draggedItem As ListViewDataItem = TryCast(e.Data.GetData(GetType(ListViewDataItem)), ListViewDataItem)
	        If draggedItem IsNot Nothing Then
	            Dim point As Point = Me.ListBox1.PointToClient(New Point(e.X, e.Y))
	            Dim targetIndex As Integer = Me.ListBox1.IndexFromPoint(point)
	            If targetIndex > -1 Then
	                Me.ListBox1.Items.Insert(targetIndex, draggedItem.Text)
	            Else
	                Me.ListBox1.Items.Add(draggedItem.Text)
	            End If
	            Dim sourceIndex As Integer = Me.RadListView1.Items.IndexOf(draggedItem)
	            If sourceIndex > -1 Then
	                Me.RadListView1.Items.RemoveAt(sourceIndex)
	            End If
	        End If
	        Me.lastMouseDownLocation = Point.Empty
	    End Sub
	
	    Private Sub radListView1_MouseUp(sender As Object, e As MouseEventArgs)
	        Me.lastMouseDownLocation = Point.Empty
	    End Sub
	
	    '#End Region
	
	    '#End Region
	End Class



## Drag and drop from RadListView to ListBox![listview-drag-and-drop-drag-and-drop-from-another-control 002](images/listview-drag-and-drop-drag-and-drop-from-another-control002.gif)

1. In order to enable dragging an item from the __RadListView__ and dropping it onto the ListBox,
            it is necessary to use the RadListView.__MouseDown__ and the RadListView.__MouseMove__ events to start
            the drag and drop operation. In the ListBox.__DragOver__ event you should allow the drop operation:

#### __[C#] __

{{region ListViewToListBoxStart}}
	
	        private Point lastMouseDownLocation;
	
	        private void radListView1_MouseDown(object sender, MouseEventArgs e)
	        {
	            this.lastMouseDownLocation = e.Location;
	        }
	        
	        private void radListView1_MouseMove(object sender, MouseEventArgs e)
	        {
	            if (e.Button != MouseButtons.Left)
	            {
	                return;
	            }
	            BaseListViewVisualItem draggedItem = radListView1.ElementTree.GetElementAtPoint(e.Location) as BaseListViewVisualItem;
	            if (draggedItem != null &&
	                IsRealDrag(this.lastMouseDownLocation, e.Location))
	            {
	                radListView1.Capture = false;
	                radListView1.DoDragDrop(draggedItem.Data, DragDropEffects.Move);
	            }
	        }
	
	        private bool IsRealDrag(Point current, Point capture)
	        {
	            Size dragSize = SystemInformation.DragSize;
	            Rectangle dragRect = new Rectangle(capture.X - dragSize.Width / 2,
	                capture.Y - dragSize.Height / 2, dragSize.Width, dragSize.Height);
	            return !dragRect.Contains(current);
	        }
	        
	        private void listBox1_DragEnter(object sender, DragEventArgs e)
	        {
	            e.Effect = DragDropEffects.Move;
	        }
	        
	{{endregion}}



#### __[VB.NET] __

{{region ListViewToListBoxStart}}
	
	    Private lastMouseDownLocation As Point
	
	    Private Sub radListView1_MouseDown(sender As Object, e As MouseEventArgs)
	        Me.lastMouseDownLocation = e.Location
	    End Sub
	
	    Private Sub radListView1_MouseMove(sender As Object, e As MouseEventArgs)
	        If e.Button <> MouseButtons.Left Then
	            Return
	        End If
	        Dim draggedItem As BaseListViewVisualItem = TryCast(RadListView1.ElementTree.GetElementAtPoint(e.Location), BaseListViewVisualItem)
	        If draggedItem IsNot Nothing AndAlso _
	        IsRealDrag(Me.lastMouseDownLocation, e.Location) Then
	            RadListView1.Capture = False
	            RadListView1.DoDragDrop(draggedItem.Data, DragDropEffects.Move)
	        End If
	    End Sub
	
	    Private Function IsRealDrag(current As Point, capture As Point) As Boolean
	        Dim dragSize As Size = SystemInformation.DragSize
	        Dim dragRect As New Rectangle(capture.X - dragSize.Width / 2, _
	                                      capture.Y - dragSize.Height / 2, dragSize.Width, dragSize.Height)
	        Return Not dragRect.Contains(current)
	    End Function
	
	    Private Sub listBox1_DragEnter(sender As Object, e As DragEventArgs)
	        e.Effect = DragDropEffects.Move
	    End Sub
	
	    '#End Region
	
	    '#Region "ListViewToListBoxDrop"
	
	    Private Sub listBox1_DragDrop(sender As Object, e As DragEventArgs)
	        Dim draggedItem As ListViewDataItem = TryCast(e.Data.GetData(GetType(ListViewDataItem)), ListViewDataItem)
	        If draggedItem IsNot Nothing Then
	            Dim point As Point = Me.ListBox1.PointToClient(New Point(e.X, e.Y))
	            Dim targetIndex As Integer = Me.ListBox1.IndexFromPoint(point)
	            If targetIndex > -1 Then
	                Me.ListBox1.Items.Insert(targetIndex, draggedItem.Text)
	            Else
	                Me.ListBox1.Items.Add(draggedItem.Text)
	            End If
	            Dim sourceIndex As Integer = Me.RadListView1.Items.IndexOf(draggedItem)
	            If sourceIndex > -1 Then
	                Me.RadListView1.Items.RemoveAt(sourceIndex)
	            End If
	        End If
	        Me.lastMouseDownLocation = Point.Empty
	    End Sub
	
	    Private Sub radListView1_MouseUp(sender As Object, e As MouseEventArgs)
	        Me.lastMouseDownLocation = Point.Empty
	    End Sub
	
	    '#End Region
	
	    '#End Region
	End Class



1. Finally, perform the exact drag and drop operation via inserting a new item in the ListBox in the __DragDrop__ event. 
            We should reset the stored mouse down location as well:

#### __[C#] __

{{region ListViewToListBoxDrop}}
	
	        private void listBox1_DragDrop(object sender, DragEventArgs e)
	        {
	            ListViewDataItem draggedItem = e.Data.GetData(typeof(ListViewDataItem)) as ListViewDataItem;
	            if (draggedItem != null)
	            {
	                Point point = this.listBox1.PointToClient(new Point(e.X, e.Y));
	                int targetIndex = this.listBox1.IndexFromPoint(point);
	                if (targetIndex > -1)
	                {
	                    this.listBox1.Items.Insert(targetIndex, draggedItem.Text);
	                }
	                else
	                {
	                    this.listBox1.Items.Add(draggedItem.Text);
	                }
	                int sourceIndex = this.radListView1.Items.IndexOf(draggedItem);
	                if (sourceIndex > -1)
	                {
	                    this.radListView1.Items.RemoveAt(sourceIndex);
	                }
	            }
	            this.lastMouseDownLocation = Point.Empty;
	        }
	
	        private void radListView1_MouseUp(object sender, MouseEventArgs e)
	        {
	            this.lastMouseDownLocation = Point.Empty;
	        }
	        
	{{endregion}}



#### __[VB.NET] __

{{region ListViewToListBoxDrop}}
	
	    Private Sub listBox1_DragDrop(sender As Object, e As DragEventArgs)
	        Dim draggedItem As ListViewDataItem = TryCast(e.Data.GetData(GetType(ListViewDataItem)), ListViewDataItem)
	        If draggedItem IsNot Nothing Then
	            Dim point As Point = Me.ListBox1.PointToClient(New Point(e.X, e.Y))
	            Dim targetIndex As Integer = Me.ListBox1.IndexFromPoint(point)
	            If targetIndex > -1 Then
	                Me.ListBox1.Items.Insert(targetIndex, draggedItem.Text)
	            Else
	                Me.ListBox1.Items.Add(draggedItem.Text)
	            End If
	            Dim sourceIndex As Integer = Me.RadListView1.Items.IndexOf(draggedItem)
	            If sourceIndex > -1 Then
	                Me.RadListView1.Items.RemoveAt(sourceIndex)
	            End If
	        End If
	        Me.lastMouseDownLocation = Point.Empty
	    End Sub
	
	    Private Sub radListView1_MouseUp(sender As Object, e As MouseEventArgs)
	        Me.lastMouseDownLocation = Point.Empty
	    End Sub
	
	    '#End Region
	
	    '#End Region
	End Class


