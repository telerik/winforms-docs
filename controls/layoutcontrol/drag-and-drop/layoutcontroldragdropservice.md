---
title: LayoutControlDragDropService
page_title: LayoutControlDragDropService - WinForms LayoutControl
description: WinForms LayoutControl allows you to add and arrange other controls in complex layouts by using LayoutControlDragDropService.
slug: winforms/layoutcontrol/layoutcontroldragdropservice
tags: layoutcontrol
published: True
position: 0 
---

# LayoutControlDragDropService

**RadLayoutControl** allows you quickly design and arrange your controls in complex layouts. This behavior is achieved by the **LayoutControlDragDropService**. It can be accessed by the RadLayoutControl.DragOverlay.**DragDropService** property. 

>note The **DragOverlay** property is not accessible until you show the customize dialog by calling the RadLayoutControl.**ShowCustomizeDialog** method.

>caption Figure 1: LayoutControlDragDropService

![WinForms RadLayoutControl LayoutControlDragDropService](images/layoutcontrol-drag-and-drop-layoutcontroldragdropservice001.gif)

As a descendant of [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%}), **LayoutControlDragDropService** handles the whole drag and drop operation. The **PreviewDragOver** event allows you to control on what targets the item being dragged can be dropped on. The **PreviewDragDrop** event allows you to get a handle on all the aspects of the drag and drop operation, the source (drag) **RadLayoutControl**, the destination (target) control, as well as the item being dragged. 

# See Also

* [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%})	
     
