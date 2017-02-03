---
title: Formatting Nodes
page_title: Formatting Nodes | RadTreeView
description: This article describes how you can change the the styles of the nodes in RadTreeView.
slug: winforms/treeview/working-with-nodes/formatting-nodes
tags: formatting,nodes
published: True
position: 2
previous_url: treeview-working-with-nodes-formatting-nodes
---

# Formatting Nodes

Similar to RadGridView, RadTreeView uses UI Virtualization. Its visual nodes (TreeNodeElement) are reused by the data nodes (RadTreeNode) which bring increased performance and optimized memory footprint. You can easily format node element by handling the __NodeFormatting__ event. The arguments of this event return the visual Node (and the data Node that is currently assigned to it) that is currently formatted and which you can additionally style.

Each __TreeNodeElement__ contains the following elements:

* __TreeNodeContentElement:__ Used for displaying the text.
* __TreeNodeImageElement:__ Used for displaying image.
* __TreeNodeExpanderItem:__ Displays the Expand/Collapse button
* __TreeNodeLinesContainer:__ Displays the lines which are connecting the nodes.

>important __TreeNodeContentElement__ and __TreeNodeImageElement__ are inheriting [LightVisualElement]({%slug winforms/telerik-presentation-framework/primitives/lightvisualelement%}). This means that each of these can display separate image, text, fill and border. This allows you customize the node and for example add two images to a single node.


The bellow example shows how you can access and format the main node elements:

{{source=..\SamplesCS\TreeView\WorkingWithNodes\NodeFormatting.cs region=nodeFormatting}} 
{{source=..\SamplesVB\TreeView\WorkingWithNodes\NodeFormatting.vb region=nodeFormatting}}

{{endregion}} 

>caption Figure 1: Nodes formated with the above code.

![treeview-formatting-nodes 001](images/treeview-formatting-nodes001.png)

>note Please note that you should always provide an 'else' clause for each 'if' clause that you have in the implementation of the NodeFormatting event. Skipping this operation will lead to incorrect images applied to the inappropriate nodes.
>


>note It is also important that we are accessing the project resources outside the NodeFormatting event handler. Accessing project resources is a time consuming operation and since NodeFormatting is fired for every visible node, you may experience performance issues if you try to access such resources in the event handler.
>

