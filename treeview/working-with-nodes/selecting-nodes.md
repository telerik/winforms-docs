---
title: Selecting Nodes
page_title: Selecting Nodes
description: Selecting Nodes
slug: treeview-working-with-nodes-selecting-nodes
tags: selecting,nodes
published: True
position: 4
---

# Selecting Nodes



## Selecting a Single Node

To select a node use the __Selected__
        property of __RadTreeNode__. 
        The following example demonstrates how to do it.

#### __[C#]__

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=selectedNode}}
	            radTreeView1.SelectedNode = radTreeView1.Nodes[0];
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=selectedNode}}
	        RadTreeView1.SelectedNode = RadTreeView1.Nodes(0)
	        '#End Region
	
	        '#Region selectMultiNodes
	        RadTreeView1.MultiSelect = True
	        Dim Node1 As New RadTreeNode("Inbox")
	        Dim Node2 As New RadTreeNode("Deleted Items")
	        Dim Node3 As New RadTreeNode("Outbox")
	        Dim Node4 As New RadTreeNode("Sent")
	        RadTreeView1.Nodes.Add(Node1)
	        RadTreeView1.Nodes.Add(Node2)
	        RadTreeView1.Nodes.Add(Node3)
	        RadTreeView1.Nodes.Add(Node4)
	        Node3.Selected = True
	        Node4.Selected = True
	        '#End Region
	
	        '#region filter
	        Me.RadTreeView1.Filter = "new"
	{{endregion}}



## Selecting Multiple Nodes

To enable the multiple selection the __MultiSelect__ property of 
        __RadTreeView__ must be set to __true.__The default value is __false__.


<table><tr><td><b>Selection</b></td><td><b>Example</b></td><td><b>Description</b></td></tr><tr><td><b>Single Selection</b></td><td>![](images/treeview-working-with-nodes-selecting-nodes001.png)</td><td>

The user can select a single node by clicking the node. </td></tr><tr><td><b>Multiple Selection using the Shift key</b></td><td>![](images/treeview-working-with-nodes-selecting-nodes002.png)</td><td>To select a continuous series of multiple nodes at one time hold the Shift key and click on a node using the mouse. That will select all nodes between the first selected node and the node that was just clicked. The screenshot shows nodes selected between "Deleted Items" and "Large Mail". </td></tr><tr><td><b>Multiple Selection using the Ctrl key</b></td><td>

![treeview-working-with-nodes-selecting-nodes 003](images/treeview-working-with-nodes-selecting-nodes003.png)</td><td>

To select multiple nodes in distributed throughout the RadTreeView, hold the Ctrl key and click on each node using the mouse. That will select the clicked node but not unselect the previously selected nodes. The screenshot shows the "Deleted Items" and "Send Items" nodes selected. </td></tr></table>

## Selecting Multiple Nodes Programmatically

To select multiple nodes through the API, just set the Selected property of the desired nodes
        to true. The example below adds four nodes, then selects the last two nodes.

#### __[C#]__

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=selectMultiNodes}}
	            radTreeView1.MultiSelect = true;
	            RadTreeNode Node1 = new RadTreeNode("Inbox");
	            RadTreeNode Node2 = new RadTreeNode("Deleted Items");
	            RadTreeNode Node3 = new RadTreeNode("Outbox");
	            RadTreeNode Node4 = new RadTreeNode("Sent");
	            radTreeView1.Nodes.Add(Node1);
	            radTreeView1.Nodes.Add(Node2);
	            radTreeView1.Nodes.Add(Node3);
	            radTreeView1.Nodes.Add(Node4);
	            Node3.Selected = true;
	            Node4.Selected = true;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=selectMultiNodes}}
	        RadTreeView1.MultiSelect = True
	        Dim Node1 As New RadTreeNode("Inbox")
	        Dim Node2 As New RadTreeNode("Deleted Items")
	        Dim Node3 As New RadTreeNode("Outbox")
	        Dim Node4 As New RadTreeNode("Sent")
	        RadTreeView1.Nodes.Add(Node1)
	        RadTreeView1.Nodes.Add(Node2)
	        RadTreeView1.Nodes.Add(Node3)
	        RadTreeView1.Nodes.Add(Node4)
	        Node3.Selected = True
	        Node4.Selected = True
	        '#End Region
	
	        '#region filter
	        Me.RadTreeView1.Filter = "new"
	{{endregion}}


