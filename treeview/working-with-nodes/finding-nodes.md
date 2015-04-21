---
title: Finding Nodes
page_title: Finding Nodes
description: Finding Nodes
slug: treeview-working-with-nodes-finding-nodes
tags: finding,nodes
published: True
position: 10
---

# Finding Nodes



## 

When searching for node(s) you have two options that you can use - the *Find* 
        	method of RadTreeView which searches for a specific node by __text__ or a predefined
        	__Predicate__ and returns the first node that matches the search criteria, or to
        	use the *FindNodes* method of the control which also provides overloads 
        	to search by __text__ or a __Predicate__ and returns an 
        	array of nodes as a result.
        

The following example demonstrates how to search for a single node by its text and how to get all 
        	nodes whose __Tag__ is not null by using a __Predicate__:
        



#### __[C#]__

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=find}}
	            RadTreeNode resultOfSearch = radTreeView1.Find("Child Node");
	            
	            Predicate<RadTreeNode> match = new Predicate<RadTreeNode>(delegate(RadTreeNode node)
	            {
	                return node.Tag != null ? true : false;
	            });
	
	            RadTreeNode[] result = radTreeView1.FindNodes(match);
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=find}}
	        Dim resultOfSearch As RadTreeNode = RadTreeView1.Find("Child Node")
	
	        Dim match As New Predicate(Of RadTreeNode)(Function(node As RadTreeNode) If(node.Tag IsNot Nothing, True, False))
	
	        Dim result As RadTreeNode() = RadTreeView1.FindNodes(match)
	        '#EndRegion
	
	        AddHandler RadTreeView1.DoubleClick, AddressOf radTreeView1_DoubleClick
	    End Sub
	
	
	#Region "NodeAdding"
	
	    Private Sub RadTreeView1_NodeAdding(sender As Object, e As RadTreeViewCancelEventArgs) Handles RadTreeView1.NodeAdding
	        If e.Node.Text.Contains("Non-insertable") Then
	            e.Cancel = True
	        End If
	    End Sub
	
	    Private Sub RadTreeView1_NodeAdded(sender As Object, e As RadTreeViewEventArgs) Handles RadTreeView1.NodeAdded
	        RadMessageBox.Show("Node {" + e.Node.Text + "} was added")
	    End Sub
	
	{{endregion}}


