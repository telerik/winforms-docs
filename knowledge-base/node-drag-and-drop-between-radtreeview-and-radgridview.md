---
title: Node drag and drop between RadTreeView and RadGridView
description: Node drag and drop between RadTreeView and RadGridView. Check it now!
type: how-to
page_title: Node drag and drop between RadTreeView and RadGridView
slug: node-drag-and-drop-between-radtreeview-and-radgridview
res_type: kb
---

|Product Version|Product|Author|Last modified|
|----|----|----|----|
|Q2 2012|RadTreeView for WinForms|Svetlin Ralchev|May 11, 2012|

   
**PROBLEM**  
   
**RadTreeView** allows drag and drop between two different instances of **RadTreeView** out of the box. However, it does not support out of the box drag and drop of a node to a data cell in **RadGridView** and this is what we will look at in this article.  
   
**SOLUTION**  
   
In order to implement this feature, we need to handle the **PreviewDragOver** and **PreviewDragDrop** events of the **TreeViewDragDropService**. The steps below demonstrates how you can achieve the desired scenario:  
   
1. You should set the **AllowDragDrop** property of **RadTreeView** to *true*.  
2. Then you should subscribe to the **CellFormatting** event of **RadGridView** where you can allow a drop operation over a data cell:  
 
````C#
private void radGridView1_CellFormatting(object sender, CellFormattingEventArgs e)
{
    e.CellElement.AllowDrop = true;
}

````
````VB.NET
Private Sub radGridView1_CellFormatting(ByVal sender As Object, ByVal e As CellFormattingEventArgs)
    e.CellElement.AllowDrop = True
End Sub

````
   
3.Then you should handle the **PreviewDragOver** event of the **TreeViewDragDropService** in the following way:  
 
````C#
private void OnPreviewDragOver(object sender, Telerik.WinControls.RadDragOverEventArgs e)
{
    GridDataCellElement dataCell = e.HitTarget as GridDataCellElement;
 
    if (dataCell != null)
    {
        TreeNodeElement element = e.DragInstance as TreeNodeElement;
 
        object value = null;
        e.CanDrop = RadDataConverter.Instance.TryParse(dataCell as IDataConversionInfoProvider,
element.Data.Name, out value) == null;
    }
}

````
````VB.NET
Private Sub OnPreviewDragOver(ByVal sender As Object, ByVal e As Telerik.WinControls.RadDragOverEventArgs)
    Dim dataCell As GridDataCellElement = TryCast(e.HitTarget, GridDataCellElement)

    If dataCell IsNot Nothing Then
        Dim element As TreeNodeElement = TryCast(e.DragInstance, TreeNodeElement)
        Dim value As Object = Nothing
        e.CanDrop = RadDataConverter.Instance.TryParse(TryCast(dataCell, IDataConversionInfoProvider), element.Data.Name, value) Is Nothing
    End If
End Sub

````

4. Finally, you should subscribe for the **PreviewDragDrop** event of the **TreeViewDragDropService**:  

````C#
private void OnPreviewDragDrop(object sender, Telerik.WinControls.RadDropEventArgs e)
{
    GridDataCellElement dataCell = e.HitTarget as GridDataCellElement;
    if (dataCell != null)
    {
        TreeNodeElement element = e.DragInstance as TreeNodeElement;
        dataCell.Value = element.Data.Name;
        e.Handled = true;
    }
}

````
````VB.NET
Private Sub OnPreviewDragDrop(ByVal sender As Object, ByVal e As Telerik.WinControls.RadDropEventArgs)
    Dim dataCell As GridDataCellElement = TryCast(e.HitTarget, GridDataCellElement)

    If dataCell IsNot Nothing Then
        Dim element As TreeNodeElement = TryCast(e.DragInstance, TreeNodeElement)
        dataCell.Value = element.Data.Name
        e.Handled = True
    End If
End Sub

````

>note You can download a complete VB and C# project from the following [link](https://github.com/telerik/winforms-sdk/tree/master/TreeView/TreeViewDragDropToGrid). 

