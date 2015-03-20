---
title: Bring a Node into View
page_title: Bring a Node into View
description: Bring a Node into View
slug: treeview-working-with-nodes-bring-a-node-into-view
tags: bring,a,node,into,view
published: True
position: 3
---

# Bring a Node into View



## 

In cases where you have a treeview with many nodes and limited space on the form, you need to scroll the control in order to find a specific node. __RadTreeView__ control handles this automatically for you. To scroll the control to a node use the __BringIntoView()__ method of __RadTreeView__:

#### __[C#]__

{{region bringIntoView}}
	            RadTreeNode lastRootNode = radTreeView1.Nodes[radTreeView1.Nodes.Count - 1];
	            radTreeView1.BringIntoView(lastRootNode.Nodes[lastRootNode.Nodes.Count - 1]);
	{{endregion}}



#### __[VB.NET]__

{{region bringIntoView}}
	        Dim lastRootNode As RadTreeNode = RadTreeView1.Nodes(RadTreeView1.Nodes.Count - 1)
	        RadTreeView1.BringIntoView(lastRootNode.Nodes(lastRootNode.Nodes.Count - 1))
	        '#End Region
	
	        '#Region editing
	        RadTreeView1.AllowEdit = True
	        ' set the SelectedNode - this node will be edited  
	        RadTreeView1.SelectedNode = RadTreeView1.Nodes(0)
	        ' this will start edit on selected node
	        RadTreeView1.BeginEdit()
	        '#End Region
	
	        '#Region selectedNode
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



>Note that the BringIntoView() method does not select the node!
