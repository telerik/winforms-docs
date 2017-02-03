---
title: Filtering Nodes
page_title: Filtering Nodes | RadTreeView
description: RadTreeView supports filtering of its nodes according to their Text property.
slug: winforms/treeview/working-with-nodes/filtering-nodes
tags: filtering,nodes
published: True
position: 7
previous_url: treeview-working-with-nodes-filtering
---

# Filtering Nodes

RadTreeView supports filtering of its nodes according to their __Text__ property. In order to apply a filter, you should set the __Filter__ property to the desired text value. 
        
For example, if we have this RadTreeView instance:

![treeview-working-with-nodes-filtering 001](images/treeview-working-with-nodes-filtering001.png)

and we set the __Filter__ property as shown below:

{{source=..\SamplesCS\TreeView\WorkingWithNodes\WorkingWithNodes1.cs region=filter}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\WorkingWithNodes1.vb region=filter}} 

````C#
this.radTreeView1.Filter = "new";

````
````VB.NET
Me.RadTreeView1.Filter = "new"

````

{{endregion}} 

we will get this look of RadTreeView at the end:

![treeview-working-with-nodes-filtering 002](images/treeview-working-with-nodes-filtering002.png)
