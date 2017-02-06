---
title: Finding Nodes
page_title: Finding Nodes | RadTreeView
description: This article shows how you can use the Find method to search for a nodes that meet specific criteria.
slug: winforms/treeview/working-with-nodes/finding-nodes
tags: finding,nodes
published: True
position: 10
previous_url: treeview-working-with-nodes-finding-nodes
---

# Finding Nodes

When searching for node(s) you have several options that you can use
* The __Find__ method which searches for a specific node by __text__ 
* A  predefined __Predicate__ that returns the first node that matches the search criteria.
* Use the __FindNodes__ method which also provides overloads to search by __Text__ or a __Predicate__ and returns an array of nodes as a result. 


The following example demonstrates how to search for a single node by its text and how to get all nodes whose __Tag__ is not null by using a __Predicate__:

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=find}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=find}} 

````C#
RadTreeNode resultOfSearch = radTreeView1.Find("Child Node");
            
Predicate<RadTreeNode> match = new Predicate<RadTreeNode>(delegate(RadTreeNode node)
{
    return node.Tag != null ? true : false;
});
RadTreeNode[] result = radTreeView1.FindNodes(match);

````
````VB.NET
Dim resultOfSearch As RadTreeNode = RadTreeView1.Find("Child Node")
Dim match As New Predicate(Of RadTreeNode)(Function(node As RadTreeNode) If(node.Tag IsNot Nothing, True, False))
Dim result As RadTreeNode() = RadTreeView1.FindNodes(match)

````

{{endregion}}

# See Also
* [Adding and Removing Nodes]({%slug winforms/treeview/working-with-nodes/adding-and-removing-nodes%})

* [Bring a Node into View]({%slug winforms/treeview/working-with-nodes/bring-a-node-into-view%})

* [Custom Filtering]({%slug winforms/treeview/working-with-nodes/custom-filtering%})

* [Custom Nodes]({%slug winforms/treeview/working-with-nodes/custom-nodes%})

* [Custom Sorting]({%slug winforms/treeview/working-with-nodes/custom-sorting%})

* [Events]({%slug winforms/treeview/working-with-nodes/events%})

