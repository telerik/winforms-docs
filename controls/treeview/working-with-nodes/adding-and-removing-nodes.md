---
title: Adding and Removing Nodes
page_title: Adding and Removing Nodes - WinForms TreeView Control
description: Learn how you can add or remove nodes in code and the events that are fired when add/remove action is performed in WinForms TreeView.
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

<snippet id='treeview-workingwithnodes1-addnodes-cs' />
<snippet id='treeview-workingwithnodes1-addnodes-vb' />



Just before a node is added, the  __NodeAdding__ event is fired. The event arguments of this event allow you to cancel the adding of the node. If the operation was not canceled, then the node will be added to the RadTreeView and the  __NodeAdded__ event will be fired. The following code snippet demonstrates the usage of these events:

<snippet id='treeview-workingwithnodes1-nodeadding-cs' />
<snippet id='treeview-workingwithnodes1-nodeadding-vb' />



## Removing Nodes

To remove a single node use the __Remove()__ method of the node. To remove all nodes of the RadTreeView use the __Nodes.Clear()__ method.

<snippet id='treeview-workingwithnodes1-removenodes-cs' />
<snippet id='treeview-workingwithnodes1-removenodes-vb' />



Just before a node is removed, the __NodeRemoving__ event is fired. The event arguments of this event allow you to cancel the remove operation. If the operation was not canceled, then the node will be removed from RadTreeView and the __NodeRemoved__ event will be fired. The following code snippet demonstrates the usage of these events:

<snippet id='treeview-workingwithnodes1-noderemoving-cs' />
<snippet id='treeview-workingwithnodes1-noderemoving-vb' />



# See Also
* [Bring a Node into View]({%slug winforms/treeview/working-with-nodes/bring-a-node-into-view%})

* [Custom Filtering]({%slug winforms/treeview/working-with-nodes/custom-filtering%})

* [Custom Nodes]({%slug winforms/treeview/working-with-nodes/custom-nodes%})

* [Custom Sorting]({%slug winforms/treeview/working-with-nodes/custom-sorting%})

* [Events]({%slug winforms/treeview/working-with-nodes/events%})

* [Filtering Nodes]({%slug winforms/treeview/working-with-nodes/filtering-nodes%})

