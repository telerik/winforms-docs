---
title: Filtering Nodes
page_title: Filtering Nodes - WinForms TreeView Control
description: WinForsm TreeView supports filtering of its nodes according to their Text property.
slug: winforms/treeview/working-with-nodes/filtering-nodes
tags: filtering,nodes
published: True
position: 8
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

# See Also
* [Adding and Removing Nodes]({%slug winforms/treeview/working-with-nodes/adding-and-removing-nodes%})

* [Bring a Node into View]({%slug winforms/treeview/working-with-nodes/bring-a-node-into-view%})

* [Custom Filtering]({%slug winforms/treeview/working-with-nodes/custom-filtering%})

* [Custom Nodes]({%slug winforms/treeview/working-with-nodes/custom-nodes%})

* [Custom Sorting]({%slug winforms/treeview/working-with-nodes/custom-sorting%})

* [Events]({%slug winforms/treeview/working-with-nodes/events%})

