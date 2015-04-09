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
	
	#End Region
	
	#Region "NodeRemoving"
	
	    Private Sub RadTreeView1_NodeRemoving(sender As Object, e As RadTreeViewCancelEventArgs) Handles RadTreeView1.NodeRemoving
	        If e.Node.Text.Contains("Unremovable") Then
	            e.Cancel = True
	        End If
	    End Sub
	
	    Private Sub RadTreeView1_NodeRemoved(sender As Object, e As RadTreeViewEventArgs) Handles RadTreeView1.NodeRemoved
	        RadMessageBox.Show("Node {" + e.Node.Text + "} was removed")
	    End Sub
	
	#End Region
	
	    Private Sub InsertingNodes()
	        '#Region insertingNodes
	        ' Create two parent nodes
	        Dim parentNode1 As New RadTreeNode("First Parent")
	        Dim parentNode2 As New RadTreeNode("Second Parent")
	        ' Add the parent nodes to tree view's nodes collection
	        Me.RadTreeView1.Nodes.Add(parentNode1)
	        Me.RadTreeView1.Nodes.Add(parentNode2)
	        ' Create child nodes
	        Dim childNode As New RadTreeNode("Child Node")
	        Dim childNode2 As New RadTreeNode("Child Node2")
	        Dim childNode3 As New RadTreeNode("Child Node3")
	        Dim childNode4 As New RadTreeNode("Child Node4")
	        Dim childNode5 As New RadTreeNode("Child Node5")
	        ' Add a single child node to the parentNode1 nodes collection and
	        ' multiple nodes to the parentNode2 nodes collection
	        parentNode1.Nodes.Add(childNode)
	        parentNode2.Nodes.Add(childNode2)
	        parentNode2.Nodes.Add(childNode3)
	        parentNode2.Nodes.Add(childNode4)
	        parentNode2.Nodes.Add(childNode5)
	        ' Insert the childNode instance to the parentNode2 nodes collection
	        parentNode2.Nodes.Insert(1, childNode)
	        '#End Region
	    End Sub
	
	    Private Sub OptionList()
	        '#Region optionList
	        Dim Node1 As New RadTreeNode("Node1")
	        Node1.Expanded = True
	        Node1.CheckType = ChildListType.OptionList
	        Dim Node2 As New RadTreeNode("Node2")
	        Dim Node3 As New RadTreeNode("Node3")
	        Dim Node4 As New RadTreeNode("Node4")
	        RadTreeView1.Nodes.Add(Node1)
	        RadTreeView1.Nodes.Add(Node2)
	        Node1.Nodes.Add(Node3)
	        Node1.Nodes.Add(Node4)
	        '#End Region
	    End Sub
	
	    '#Region doubleClick
	    Private Sub radTreeView1_DoubleClick(ByVal sender As Object, ByVal e As EventArgs)
	        Dim args As MouseEventArgs = TryCast(e, MouseEventArgs)
	        Dim clickedNode As RadTreeNode = RadTreeView1.GetNodeAt(args.X, args.Y)
	        If clickedNode IsNot Nothing Then
	            MessageBox.Show("Node Text: " & clickedNode.Text & "  Node Value: " & clickedNode.Tag)
	        End If
	    End Sub
	    '#End Region
	
	    '#Region addNodes
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
	    '#End Region
	
	    '#Region removeNodes
	    Private Sub RemoveNodes()
	        'Remove a single node
	        RadTreeView1.Nodes(0).Remove()
	        ' removes all nodes from TreeView
	        RadTreeView1.Nodes.Clear()
	    End Sub
	    '#End Region
	End Class


