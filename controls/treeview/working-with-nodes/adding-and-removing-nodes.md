---
title: Adding and Removing Nodes
page_title: Adding and Removing Nodes | RadTreeView
description: This article shows how you can add or remove nodes in code and the events that are fired when add/remove action is performed.
slug: winforms/treeview/working-with-nodes/adding-and-removing-nodes
tags: adding,and,removing,nodes
published: True
position: 0
previous_url: treeview-working-with-nodes-adding-and-removing-nodes
---

# Adding and Removing Nodes

## Adding Nodes

RadTreeView nodes are arranged in a hierarchical structure. To add a node to the first level in a __RadTreeView__ use the __Nodes.Add()__ method. To add a child node to another node use the parent nodes __Nodes.Add()__ method. __Nodes.Add()__ places the node at the end of the __Nodes__ collection. You may also use __Nodes.Insert()__ to place the node anywhere in the __Nodes__ collection.
        

The following example demonstrates how to add nodes using code:

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=addNodes}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=addNodes}} 

````C#
private void AddNodes()
{
    RadTreeNode Node1 = new RadTreeNode("Node1");
    Node1.Tag = 1234;
    Node1.BackColor = Color.Blue;
    RadTreeNode Node2 = new RadTreeNode("Node2");
    RadTreeNode Node3 = new RadTreeNode("Node3");
    RadTreeNode Node4 = new RadTreeNode("Node4");
    radTreeView1.Nodes.Add(Node1);
    radTreeView1.Nodes.Add(Node2);
    Node1.Nodes.Add(Node3);
    Node2.Nodes.Add(Node4);
    //Alternative methods for adding nodes
    //RadTreeNode Node1 = radTreeView1.Nodes.Add("Node1");
    //RadTreeNode Node2 = radTreeView1.Nodes.Add("Node2");
    //Node1.Nodes.Add("Node3");
    //Node2.Nodes.Add("Node4");
}

````
````VB.NET
Private Sub AddNodes()
    Dim Node1 As New RadTreeNode("Node1")
    Node1.Tag = 1234
    Node1.BackColor = Color.Blue
    Dim Node2 As New RadTreeNode("Node2")
    Dim Node3 As New RadTreeNode("Node3")
    Dim Node4 As New RadTreeNode("Node4")
    RadTreeView1.Nodes.Add(Node1)
    RadTreeView1.Nodes.Add(Node2)
    Node1.Nodes.Add(Node3)
    Node2.Nodes.Add(Node4)
    'Alternative methods for adding nodes
    'RadTreeNode Node1 = radTreeView1.Nodes.Add("Node1");
    'RadTreeNode Node2 = radTreeView1.Nodes.Add("Node2");
    'Node1.Nodes.Add("Node3");
    'Node2.Nodes.Add("Node4");
End Sub

````

{{endregion}} 

Just before a node is added, the  __NodeAdding__ event is fired. The event arguments of this event allow you to cancel the adding of the node. If the operation was not canceled, then the node will be added to the RadTreeView and the  __NodeAdded__ event will be fired. The following code snippet demonstrates the usage of these events:

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=NodeAdding}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=NodeAdding}} 

````C#
void radTreeView1_NodeAdding(object sender, RadTreeViewCancelEventArgs e)
{
    if (e.Node.Text.Contains("Non-insertable"))
    {
        e.Cancel = true;
    }
}
void radTreeView1_NodeAdded(object sender, RadTreeViewEventArgs e)
{
    RadMessageBox.Show("Node {" + e.Node.Text + "} was added");
}

````
````VB.NET
Private Sub RadTreeView1_NodeAdding(sender As Object, e As RadTreeViewCancelEventArgs) Handles RadTreeView1.NodeAdding
    If e.Node.Text.Contains("Non-insertable") Then
        e.Cancel = True
    End If
End Sub
Private Sub RadTreeView1_NodeAdded(sender As Object, e As RadTreeViewEventArgs) Handles RadTreeView1.NodeAdded
    RadMessageBox.Show("Node {" + e.Node.Text + "} was added")
End Sub

````

{{endregion}}

## Removing Nodes

To remove a single node use the __Remove()__ method of the node. To remove all nodes of the RadTreeView use the __Nodes.Clear()__ method.

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=removeNodes}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=removeNodes}} 

````C#
private void RemoveNodes()
{
    //Remove a single node
    radTreeView1.Nodes[0].Remove();
    // removes all nodes from TreeView
    radTreeView1.Nodes.Clear();
}

````
````VB.NET
Private Sub RemoveNodes()
    'Remove a single node
    RadTreeView1.Nodes(0).Remove()
    ' removes all nodes from TreeView
    RadTreeView1.Nodes.Clear()
End Sub

````

{{endregion}} 

Just before a node is removed, the __NodeRemoving__ event is fired. The event arguments of this event allow you to cancel the remove operation. If the operation was not canceled, then the node will be removed from RadTreeView and the __NodeRemoved__ event will be fired. The following code snippet demonstrates the usage of these events:

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=NodeRemoving}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=NodeRemoving}} 

````C#
void radTreeView1_NodeRemoving(object sender, RadTreeViewCancelEventArgs e)
{
    if (e.Node.Text.Contains("Unremovable"))
    {
        e.Cancel = true;
    }
}
void radTreeView1_NodeRemoved(object sender, RadTreeViewEventArgs e)
{
    RadMessageBox.Show("Node {" + e.Node.Text + "} was removed");
}

````
````VB.NET
Private Sub RadTreeView1_NodeRemoving(sender As Object, e As RadTreeViewCancelEventArgs) Handles RadTreeView1.NodeRemoving
    If e.Node.Text.Contains("Unremovable") Then
        e.Cancel = True
    End If
End Sub
Private Sub RadTreeView1_NodeRemoved(sender As Object, e As RadTreeViewEventArgs) Handles RadTreeView1.NodeRemoved
    RadMessageBox.Show("Node {" + e.Node.Text + "} was removed")
End Sub

````

{{endregion}}

# See Also
* [Bring a Node into View]({%slug winforms/treeview/working-with-nodes/bring-a-node-into-view%})

* [Custom Filtering]({%slug winforms/treeview/working-with-nodes/custom-filtering%})

* [Custom Nodes]({%slug winforms/treeview/working-with-nodes/custom-nodes%})

* [Custom Sorting]({%slug winforms/treeview/working-with-nodes/custom-sorting%})

* [Events]({%slug winforms/treeview/working-with-nodes/events%})

* [Filtering Nodes]({%slug winforms/treeview/working-with-nodes/filtering-nodes%})

