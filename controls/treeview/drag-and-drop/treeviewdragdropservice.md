---
title: TreeViewDragDropService
page_title: TreeViewDragDropService | UI for WinForms Documentation
description: Enabling Drag and Drop
slug: winforms/treeview/drag-and-drop/treeviewdragdropservice
tags: enabling,drag,and,drop
published: True
position: 0 
---

# TreeViewDragDropService

**RadTreeView** handles the whole drag and drop operation by its **TreeViewDragDropService**. It exposes the following public properties:

* **ShowDropHint**: Gets or sets a value indicating whether show drop hint should be shown.

* **ShowDragHint**: Gets or sets a value indicating whether show drag hint should be shown.

* **DropHintColor**: Gets or sets the color for the drop hint.

## Drag and Drop in Unbound Mode

By default, **RadTreeView** supports nodes drag and drop functionality in unbound mode out of the box within the same **RadTreeView** and between two **RadTreeView** controls. It is necessary to set the RadTreeView.**AllowDragDrop** property to *true* and start reordering the nodes. 

>caption Figure 1: Drag and drop in bound mode

![treeview-drag-and-drop-treeviewdragdropservice 001](images/treeview-drag-and-drop-treeviewdragdropservice001.gif)


## Drag and Drop in Bound Mode

When **RadTreeVew** is in bound mode, drag and drop functionality is not supported out of the box because of the specificity of the **DataSource** collection of the source and target tree view. However, such a functionality can be easily achieved by the **TreeViewDragDropService**.

As a descendant of [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%}), **TreeViewDragDropService** handles the whole drag and drop operation. The **PreviewDragOver** event allows you to control on what targets the node element being dragged can be dropped on. The **PreviewDragDrop** event allows you to get a handle on all the aspects of the drag and drop operation, the source (drag) treeview, the destination (target) control, as well as the node being dragged. This is where we will initiate the actual physical move of the node(s) from one tree view to the target control. An alternative approach of handling the mentioned events is to override the relevant methods of the service. A sample implementation is demonstrated in the [Modify the DragDropService behavior]({%slug winforms/treeview/drag-and-drop/modify-the-dragdropservice-behavior%}) help article.

# See Also

* [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%})	
* [Modify the DragDropService behavior]({%slug winforms/treeview/drag-and-drop/modify-the-dragdropservice-behavior%})