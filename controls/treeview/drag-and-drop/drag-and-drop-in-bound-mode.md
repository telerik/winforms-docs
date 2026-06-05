---
title: Drag and Drop in bound mode
page_title: Drag and Drop in bound mode - WinForms TreeView Control
description: Learn how you can handle a drag an drop operation when the WinForms TreeView control is bound to data source.
slug: winforms/treeview/drag-and-drop/drag-and-drop-in-bound-mode
tags: drag,and,drop,in,bound,mode
published: True
position: 4
previous_url: treeview-drag-and-drop-drag-and-drop-in-bound-mode
---

# Drag and Drop in bound mode

When __RadTreeView__ is in bound mode, it supports a basic drag and drop behavior. The dragged node is inserted at the last position in its parent.

>caption Figure 1: Default drag and drop behavior in bound mode

![WinForms RadTreeView Default drag and drop behavior in bound mode](images/drag-and-drop-in-bound-mode001.gif)

In order to enable this functionality, you should set the __AllowDragDrop__ property to *true*. However, due to the specificity of  the __RadTreeView__’s [data binding]({%slug winforms/treeview/data-binding/data-binding-basics%})  and the set up hierarchical data structure, it is necessary to handle manually the drag and drop operation to obtain correct nodes order. 

>caption Figure 2: Custom drag and drop behavior in bound mode

![WinForms RadTreeView Custom drag and drop behavior in bound mode](images/drag-and-drop-in-bound-mode002.gif)

For this purpose, it is necessary to create a custom __TreeViewDragDropService__. This article demonstrates a sample approach how to achieve it.

1\. Consider the __RadTreeView__ is bound to the following [self-referencing data]({%slug winforms/treeview/data-binding/binding-to-self-referencing-data%}).

<snippet id='treeview-draganddropinboundmode-selfrefdata-cs' />
<snippet id='treeview-draganddropinboundmode-selfrefdata-vb' />



2\. Enable multiple [selection]({%slug winforms/treeview/working-with-nodes/selecting-nodes%}) by setting the __MultiSelect__  property to *true*.

3\. Create a derivative of the __TreeViewDragDropService__ which should perform the desired drag and drop functionality.  The __OnPreviewDragOver__ method allows you to control on what targets the nodes, being dragged, can be dropped on. The __OnPreviewDragDrop__ method initiates the actual physical move of the nodes from one position to another.

<snippet id='treeview-draganddropinboundmode-customservice-cs' />
<snippet id='treeview-draganddropinboundmode-customservice-vb' />



>note When a change in the underlying data source occurs, the tree needs to repopulate itself in order to get the latest changes. As a result, the expanded state of the available nodes, selection and scroll bar position are not kept. [Keep RadTreeView states on reset]({%slug winforms/treeview/how-to/keep-radtreeview-states-on-reset%}) help article explains how to save the tree state prior the change and restore it afterwards.
>

4\. The custom __TreeViewDragDropService__ is ready. Now, we need to replace the default one. For this purpose, it is necessary to create a derivative of the __RadTreeViewElement__ and override the __CreateDragDropService__ method. 

<snippet id='treeview-draganddropinboundmode-customtreeviewelement-cs' />
<snippet id='treeview-draganddropinboundmode-customtreeviewelement-vb' />



5\. Finally, replace the default __RadTreeViewElement__ in the tree with the custom one.

<snippet id='treeview-draganddropinboundmode-treeview-cs' />
<snippet id='treeview-draganddropinboundmode-treeview-vb' />



# See Also
* [Cancel a Drag and Drop Operation]({%slug winforms/treeview/drag-and-drop/cancel-a-drag-and-drop-operation%})

* [Enabling Drag and Drop]({%slug winforms/treeview/drag-and-drop/enabling-drag-and-drop%})

* [Modify the DragDropService behavior]({%slug winforms/treeview/drag-and-drop/modify-the-dragdropservice-behavior%})

