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

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=bringIntoView}}
	            RadTreeNode lastRootNode = radTreeView1.Nodes[radTreeView1.Nodes.Count - 1];
	            radTreeView1.BringIntoView(lastRootNode.Nodes[lastRootNode.Nodes.Count - 1]);
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=bringIntoView}}
	        Dim lastRootNode As RadTreeNode = RadTreeView1.Nodes(RadTreeView1.Nodes.Count - 1)
	        RadTreeView1.BringIntoView(lastRootNode.Nodes(lastRootNode.Nodes.Count - 1))
	{{endregion}}



>Note that the BringIntoView() method does not select the node!
