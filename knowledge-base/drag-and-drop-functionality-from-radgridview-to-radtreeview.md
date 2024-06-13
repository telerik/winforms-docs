---
title: Drag and drop functionality from RadGridView to RadTreeView
description: Drag and drop functionality from RadGridView to RadTreeView. Check it now!
type: how-to
page_title: Drag and drop functionality from RadGridView to RadTreeView
slug: drag-and-drop-functionality-from-radgridview-to-radtreeview
tags: gridview, treeview, drag, drop
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|2016.1.112|RadGridView for WinForms|[Desislava Yordanova](https://www.telerik.com/blogs/author/desislava-yordanova)|February 04, 2016|

## Problem

This article demonstrates how to achieve drag and drop behavior from **RadGridView** to **RadTreeView** by using the **RadGridViewDragDropService**.  
  
![GridToTreeViewDragDrop001](images/drag-and-drop-from-radgridview-to-radtreeview.gif)

## Solution

Consider the **RadGridView** and **RadTreeView** are populated with data in unbound mode.

In order to start the drag and drop service when the user clicks on a row with the left mouse button, it is necessary to create a custom grid behavior. To do this, create a new class that inherits the **GridDataRowBehavior** class. In addition, the drag and drop service allows you to disable the auto scrolling while dragging functionality:

````C#
public class CustomGridDataRowBehavior : GridDataRowBehavior
{
    protected override bool OnMouseDownLeft(MouseEventArgs e)
    {
        GridDataRowElement row = this.GetRowAtPoint(e.Location) as GridDataRowElement;
        if (row != null)
        {
            RadGridViewDragDropService svc = this.GridViewElement.GetService<RadGridViewDragDropService>();
            svc.AllowAutoScrollColumnsWhileDragging = false;
            svc.AllowAutoScrollRowsWhileDragging = false;
            svc.Start(row);
        }
        return base.OnMouseDownLeft(e);
    }
}

````
````VB.NET
Public Class CustomGridDataRowBehavior
Inherits GridDataRowBehavior
    Protected Overrides Function OnMouseDownLeft(e As MouseEventArgs) As Boolean
        Dim row As GridDataRowElement = TryCast(Me.GetRowAtPoint(e.Location), GridDataRowElement)
        If row IsNot Nothing Then
            Dim svc As RadGridViewDragDropService = Me.GridViewElement.GetService(Of RadGridViewDragDropService)()
            svc.AllowAutoScrollColumnsWhileDragging = False
            svc.AllowAutoScrollRowsWhileDragging = False
            svc.Start(row)
        End If
        Return MyBase.OnMouseDownLeft(e)
    End Function
End Class

````
  
It is important to register this behavior in **RadGridView**.
   
````C#
BaseGridBehavior gridBehavior = this.radGridView1.GridBehavior as BaseGridBehavior;
gridBehavior.UnregisterBehavior(typeof(GridViewDataRowInfo));
gridBehavior.RegisterBehavior(typeof(GridViewDataRowInfo), new CustomGridDataRowBehavior());

````
````VB.NET
Dim gridBehavior = TryCast(Me.RadGridView1.GridBehavior, BaseGridBehavior)
gridBehavior.UnregisterBehavior(GetType(GridViewDataRowInfo))
gridBehavior.RegisterBehavior(GetType(GridViewDataRowInfo), New CustomGridDataRowBehavior())

````

The **PreviewDragStart** event is fired once the drag and drop service on the grid is started. In this case, we should tell the drag and drop service if the drag operation can move forward. Implement the **PreviewDragStart** event handler as follows:

````C#
private void dragDropService_PreviewDragStart(object sender, PreviewDragStartEventArgs e)
{
    e.CanStart = true;
}

````
````VB.NET
Private Sub dragDropService_PreviewDragStart(sender As Object, e As PreviewDragStartEventArgs)
    e.CanStart = True
End Sub

````

The next event we should handle is the **PreviewDragOver** event. This event allows you to control on what targets the row being dragged can be dropped on. In this case, as long as it’s being dropped somewhere on the target **RadTreeView**, we should allow the drag over operation. Here is the appropriate place to show the appropriate indication for the preview drop operation before, after or over a node. For this purpose we will use a **RadLayeredWindow** that displays the relevant image for the drop position together with the image of the row being dragged. In the **PreviewDragHint** event we should set the PreviewDragHintEventArgs.**UseDefaultHint** property to *false* in order to use our custom hint. Implement the handler as follows:

````C#
void dragDropService_PreviewDragHint(object sender, PreviewDragHintEventArgs e)
{
    e.UseDefaultHint = false;
}
 
RadLayeredWindow dropHintWindow = new RadLayeredWindow();
 
private void dragDropService_PreviewDragOver(object sender, RadDragOverEventArgs e)
{
    dropHintWindow.Hide();
    if (e.DragInstance is GridDataRowElement)
    {
        if (e.HitTarget is RadTreeViewElement)
        {
            e.CanDrop = true;
        }
        else if (e.HitTarget is TreeNodeElement)
        {
            e.CanDrop = true;
            SetHintWindowPosition(MousePosition, (TreeNodeElement)e.HitTarget, e.DragInstance.GetDragHint());
        }
    }
}
 
protected void SetHintWindowPosition(Point mousePt, TreeNodeElement nodeElement, Image originalHintImage)
{
    dropHintWindow.Hide();
    Point point = this.radTreeView1.ElementTree.Control.PointToClient(mousePt);
    point = nodeElement.PointFromScreen(mousePt);
    DropPosition dropPosition = this.GetDropPosition(point, nodeElement);
    Image dropPositionImage = null;
    switch (dropPosition)
    {
        case DropPosition.None:
            break;
        case DropPosition.BeforeNode:
            dropPositionImage = Properties.Resources.RadTreeViewDropBefore;
            break;
        case DropPosition.AfterNode:
            dropPositionImage = Properties.Resources.RadTreeViewDropAfter;
            break;
        case DropPosition.AsChildNode:
            dropPositionImage = Properties.Resources.RadTreeViewDropAsChild;
            break;
    }
 
    int offset = 10;
    Bitmap newHintImage = new Bitmap(originalHintImage.Width + dropPositionImage.Width + offset, Math.Max(originalHintImage.Height, dropPositionImage.Height));
    using (Graphics g = Graphics.FromImage(newHintImage))
    {
        g.Clear(Color.White);
        g.DrawImage(dropPositionImage, Point.Empty);
        g.DrawImage(originalHintImage, new Point(dropPositionImage.Width + offset, 0));
        g.DrawRectangle(Pens.LightGray, new Rectangle(0, 0, newHintImage.Width - 1, newHintImage.Height - 1));
    }
 
    dropHintWindow.TopMost = true;
    dropHintWindow.BackgroundImage = newHintImage;
    dropHintWindow.ShowWindow(mousePt);
}
 
protected DropPosition GetDropPosition(Point dropLocation, TreeNodeElement targetNodeElement)
{
    int part = targetNodeElement.Size.Height / 3;
    int mouseY = dropLocation.Y;
    bool dropAtTop = mouseY < part;
 
    if (dropAtTop)
    {
        return DropPosition.BeforeNode;
    }
 
    if (mouseY >= part && mouseY <= part * 2)
    {
        return DropPosition.AsChildNode;
    }
 
    return DropPosition.AfterNode;
}

````
````VB.NET
Private Sub dragDropService_PreviewDragHint(sender As Object, e As PreviewDragHintEventArgs)
    e.UseDefaultHint = False
End Sub
 
Private dropHintWindow As New RadLayeredWindow()
Private Sub dragDropService_PreviewDragOver(sender As Object, e As RadDragOverEventArgs)
    dropHintWindow.Hide()
 
    If TypeOf e.DragInstance Is GridDataRowElement Then
        If TypeOf e.HitTarget Is RadTreeViewElement Then
            e.CanDrop = True
        ElseIf TypeOf e.HitTarget Is TreeNodeElement Then
            e.CanDrop = True
            SetHintWindowPosition(MousePosition, DirectCast(e.HitTarget, TreeNodeElement), e.DragInstance.GetDragHint())
        End If
    End If
End Sub
 
Protected Sub SetHintWindowPosition(mousePt As Point, nodeElement As TreeNodeElement, originalHintImage As Image)
    dropHintWindow.Hide()
    Dim point__1 As Point = Me.RadTreeView1.ElementTree.Control.PointToClient(mousePt)
    point__1 = nodeElement.PointFromScreen(mousePt)
    Dim dropPosition__2 As DropPosition = Me.GetDropPosition(point__1, nodeElement)
    Dim dropPositionImage As Image = Nothing
    Select Case dropPosition__2
        Case DropPosition.None
            Exit Select
        Case DropPosition.BeforeNode
            dropPositionImage = My.Resources.RadTreeViewDropBefore
            Exit Select
        Case DropPosition.AfterNode
            dropPositionImage = My.Resources.RadTreeViewDropAfter
            Exit Select
        Case DropPosition.AsChildNode
            dropPositionImage = My.Resources.RadTreeViewDropAsChild
            Exit Select
    End Select
    Dim offset As Integer = 10
    Dim newHintImage As New Bitmap(originalHintImage.Width + dropPositionImage.Width + offset, Math.Max(originalHintImage.Height, dropPositionImage.Height))
 
    Using g As Graphics = Graphics.FromImage(newHintImage)
        g.Clear(Color.White)
        g.DrawImage(dropPositionImage, Point.Empty)
        g.DrawImage(originalHintImage, New Point(dropPositionImage.Width + offset, 0))
        g.DrawRectangle(Pens.LightGray, New Rectangle(0, 0, newHintImage.Width - 1, newHintImage.Height - 1))
    End Using
 
    dropHintWindow.TopMost = True
    dropHintWindow.BackgroundImage = newHintImage
    dropHintWindow.ShowWindow(mousePt)
End Sub
 
Protected Function GetDropPosition(dropLocation As Point, targetNodeElement As TreeNodeElement) As DropPosition
    Dim part As Integer = targetNodeElement.Size.Height / 3
    Dim mouseY As Integer = dropLocation.Y
    Dim dropAtTop As Boolean = mouseY < part
 
    If dropAtTop Then
        Return DropPosition.BeforeNode
    End If
 
    If mouseY >= part AndAlso mouseY <= part * 2 Then
        Return DropPosition.AsChildNode
    End If
 
    Return DropPosition.AfterNode
End Function

````

The last event we should handle in our implementation is the **PreviewDragDrop** event. This event allows you to get a handle on all the aspects of the drag and drop operation, the source (drag) grid, the destination (target) treeview, as well as the row being dragged. This is where we will initiate the actual physical move of the row from the source control to the target one. In the Stopped event we should hide the RadLayeredWindow. Implement the handler as follows:

````C#
private void dragDropService_PreviewDragDrop(object sender, RadDropEventArgs e)
{
    GridDataRowElement rowElement = e.DragInstance as GridDataRowElement;
    if (rowElement == null)
    {
        return;
    }
    string sourceText = rowElement.RowInfo.Cells[0].Value.ToString();
    TreeNodeElement targetNodeElement = e.HitTarget as TreeNodeElement;
    if (targetNodeElement != null)
    {
        RadTreeViewElement treeViewElement = targetNodeElement.TreeViewElement;
        RadTreeNode targetNode = targetNodeElement.Data;
        DropPosition dropPosition = this.GetDropPosition(e.DropLocation, targetNodeElement);
 
        switch (dropPosition)
        {
            case DropPosition.None:
                break;
            case DropPosition.BeforeNode:
                radGridView1.Rows.Remove(rowElement.RowInfo);
 
                RadTreeNodeCollection nodes = targetNode.Parent == null ? treeViewElement.Nodes : targetNode.Parent.Nodes;
                nodes.Insert(targetNode.Index, new RadTreeNode(sourceText));
                break;
            case DropPosition.AfterNode:
                radGridView1.Rows.Remove(rowElement.RowInfo);
 
                RadTreeNodeCollection nodes1 = targetNode.Parent == null ? treeViewElement.Nodes : targetNode.Parent.Nodes;
                int targetIndex = targetNodeElement.Data.Index <= treeViewElement.Nodes.Count - 1 ?
                    (targetNodeElement.Data.Index + 1) : treeViewElement.Nodes.Count - 1;
                nodes1.Insert(targetIndex, new RadTreeNode(sourceText));
                break;
            case DropPosition.AsChildNode:
                radGridView1.Rows.Remove(rowElement.RowInfo);
                targetNode.Nodes.Add(new RadTreeNode(sourceText));
                break;
        }
    }
 
    RadTreeViewElement treeElement = e.HitTarget as RadTreeViewElement;
    if (treeElement != null)
    {
        radGridView1.Rows.Remove(rowElement.RowInfo);
        radTreeView1.Nodes.Add(new RadTreeNode(sourceText));
    }
}
void dragDropService_Stopped(object sender, EventArgs e)
{
    dropHintWindow.Hide();
}

````
````VB.NET
Private Sub dragDropService_PreviewDragDrop(sender As Object, e As RadDropEventArgs)
    Dim rowElement As GridDataRowElement = TryCast(e.DragInstance, GridDataRowElement)
    If rowElement Is Nothing Then
        Return
    End If
    Dim sourceText As String = rowElement.RowInfo.Cells(0).Value.ToString()
    Dim targetNodeElement As TreeNodeElement = TryCast(e.HitTarget, TreeNodeElement)
    If targetNodeElement IsNot Nothing Then
        Dim treeViewElement As RadTreeViewElement = targetNodeElement.TreeViewElement
        Dim targetNode As RadTreeNode = targetNodeElement.Data
        Dim dropPosition__1 As DropPosition = Me.GetDropPosition(e.DropLocation, targetNodeElement)
        Select Case dropPosition__1
            Case DropPosition.None
                Exit Select
            Case DropPosition.BeforeNode
                RadGridView1.Rows.Remove(rowElement.RowInfo)
                Dim nodes As RadTreeNodeCollection = If(targetNode.Parent Is Nothing, treeViewElement.Nodes, targetNode.Parent.Nodes)
                nodes.Insert(targetNode.Index, New RadTreeNode(sourceText))
                Exit Select
            Case DropPosition.AfterNode
                RadGridView1.Rows.Remove(rowElement.RowInfo)
                Dim nodes1 As RadTreeNodeCollection = If(targetNode.Parent Is Nothing, treeViewElement.Nodes, targetNode.Parent.Nodes)
                Dim targetIndex As Integer = If(targetNodeElement.Data.Index <= treeViewElement.Nodes.Count - 1, _
                                                (targetNodeElement.Data.Index + 1), treeViewElement.Nodes.Count - 1)
                nodes1.Insert(targetIndex, New RadTreeNode(sourceText))
                Exit Select
            Case DropPosition.AsChildNode
               RadGridView1.Rows.Remove(rowElement.RowInfo)
                targetNode.Nodes.Add(New RadTreeNode(sourceText))
                Exit Select
        End Select
    End If
    Dim treeElement As RadTreeViewElement = TryCast(e.HitTarget, RadTreeViewElement)
    If treeElement IsNot Nothing Then
        RadGridView1.Rows.Remove(rowElement.RowInfo)
        RadTreeView1.Nodes.Add(New RadTreeNode(sourceText))
    End If
End Sub
 
Private Sub dragDropService_Stopped(sender As Object, e As EventArgs)
    dropHintWindow.Hide()
End Sub

````

>note You can download a VB and C# project from the following [link](https://github.com/telerik/winforms-sdk/tree/master/GridView/DragDropGridToTreeView).


