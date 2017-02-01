---
title: Sorting Nodes
page_title: Sorting Nodes | RadTreeView
description: Sorting Nodes
slug: winforms/treeview/working-with-nodes/sorting-nodes
tags: sorting,nodes
published: True
position: 8
previous_url: treeview-working-with-nodes-sorting
---

# Sorting Nodes


RadTreeView support nodes sorting. The sorting operation is applied separately to each group of nodes at the the same level. To sort the nodes, you should just set the __SortOrder__ property to one of the following values: *None*, *Ascending* or *Descending*.

For example, if we have this RadTreeView instance:

![treeview-working-with-nodes-sorting 001](images/treeview-working-with-nodes-sorting001.png)
        
and we set the __SortOrder__ as shown below:

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=sort}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=sort}} 

````C#
this.radTreeView1.SortOrder = SortOrder.Ascending;

````
````VB.NET
Me.RadTreeView1.SortOrder = SortOrder.Ascending

````

{{endregion}} 

we will get this look of RadTreeView at the end:

![treeview-working-with-nodes-sorting 002](images/treeview-working-with-nodes-sorting002.png)
