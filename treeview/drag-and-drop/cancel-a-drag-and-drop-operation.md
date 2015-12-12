---
title: Cancel a Drag and Drop Operation
page_title: Cancel a Drag and Drop Operation | UI for WinForms Documentation
description: Cancel a Drag and Drop Operation
slug: winforms/treeview/drag-and-drop/cancel-a-drag-and-drop-operation
tags: cancel,a,drag,and,drop,operation
published: True
position: 1
---

# Cancel a Drag and Drop Operation



## 

In some cases you may need to impose restrictions on the drag and drop behavior. For example you may want to disallow the dropping of a node to specific location, prevent node form being dropped at different level, or perhaps disable the auto expanding of the nodes while dragging.

![treeview-drag-and-drop-cancel-a-drag-and-drop-operation 001](images/treeview-drag-and-drop-cancel-a-drag-and-drop-operation001.jpg)

## Using AllowDrop property 
        

You can interrupt a drag and drop operation by setting the __AllowDrop__ property of a specific RadTreeNode to false. This way you still can drag this particular node, by you cannot add other nodes to it with drag and drop operation. You can set this for any particular node you want.

{{source=..\SamplesCS\TreeView\DragAndDrop\CancelDragAndDropOperation.cs region=AllowDrop}} 
{{source=..\SamplesVB\TreeView\DragAndDrop\CancelDragAndDropOperation.vb region=AllowDrop}} 

````C#
            
radTreeView1.Nodes[0].AllowDrop = false;

````
````VB.NET
RadTreeView1.Nodes(0).AllowDrop = False

````

{{endregion}} 

## Restrict the user from changing the node hierarchy level with drag and drop 

1\. With the following code we will add some parent and child nodes to the tree view:

{{source=..\SamplesCS\TreeView\DragAndDrop\CancelDragAndDropOperation.cs region=Tag}} 
{{source=..\SamplesVB\TreeView\DragAndDrop\CancelDragAndDropOperation.vb region=Tag}} 

````C#
int count = 0;
            
for (int i = 0; i < 10; i++)
{
    RadTreeNode parentNode = new RadTreeNode("Parent Node" + i);              
    parentNode.AllowDrop = false;
    for (int j = 0; j < 3; j++)
    {
        RadTreeNode childNode = new RadTreeNode("Child Node" + count++);
        
        parentNode.Nodes.Add(childNode);
    }
            
    radTreeView1.Nodes.Add(parentNode);
}

````
````VB.NET
Dim count As Integer = 0
For i As Integer = 0 To 9
    Dim parentNode As New RadTreeNode("Parent Node" & i)        
    parentNode.AllowDrop = False
    For j As Integer = 0 To 2
        Dim childNode As New RadTreeNode("Child Node" & count)
        count = count + 1
        parentNode.Nodes.Add(childNode)
    Next
    RadTreeView1.Nodes.Add(parentNode)
Next

````

{{endregion}} 


1\. Now we can subscribe to the __DragEnding__ event and cancel the drop operation if the dragged node and target node have different hierarchy levels. Also we will show an appropriate message:

{{source=..\SamplesCS\TreeView\DragAndDrop\CancelDragAndDropOperation.cs region=DragEnding}} 
{{source=..\SamplesVB\TreeView\DragAndDrop\CancelDragAndDropOperation.vb region=DragEnding}} 

````C#
    
void radTreeView1_DragEnding(object sender, RadTreeViewDragCancelEventArgs e)
{
    if (e.TargetNode.Level != e.Node.Level)
    {
        e.Cancel = true;
        RadMessageBox.Show("Only nodes from the same level can be dropped here.");
    }
}

````
````VB.NET
Private Sub radTreeView1_DragEnding(sender As Object, e As RadTreeViewDragCancelEventArgs)
    If e.TargetNode.Level <> e.Node.Level Then
        e.Cancel = True
        RadMessageBox.Show("Only nodes from the same level can be dropped here.")
    End If
End Sub

````

{{endregion}} 

## Cancel Auto Expansion for Dragged Nodes

The default behavior of __RadTreeView__ when a node is dragged over a collapsed node is to automatically expand this node. To suppress this automatic expansion you can keep track of when a drag operation is in progress by using the __DragStarted__ and __DragEnded__ events. Then in the __NodeExpandedChanging__ event handler we can cancel the expanding when drag and drop operation is in progress.

{{source=..\SamplesCS\TreeView\DragAndDrop\CancelDragAndDropOperation.cs region=AutoExpansion}} 
{{source=..\SamplesVB\TreeView\DragAndDrop\CancelDragAndDropOperation.vb region=AutoExpansion}} 

````C#
                         
void radTreeView1_NodeExpandedChanging(object sender, RadTreeViewCancelEventArgs e)
{
    e.Cancel = radTreeView1.TreeViewElement.DragDropService.State == RadServiceState.Working;
}

````
````VB.NET
   
Private Sub radTreeView1_NodeExpandedChanging(sender As Object, e As RadTreeViewCancelEventArgs)
    e.Cancel = RadTreeView1.TreeViewElement.DragDropService.State = RadServiceState.Working
End Sub

````

{{endregion}}
