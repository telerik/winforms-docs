---
title: Drag Drop
page_title: Drag Drop | Task Board
description: Move the task cards between the different columns in the WinForms TaskBoard (Kanban) control.
slug: task-board-drag-drop
tags: task board, kanban, getting, started
published: True
position: 4  
---

# Drag Drop

By default, **RadTaskBoard** supports task cards drag and drop functionality. Just drag a task card and move it to a new place within the same column or to a new column.  

As a descendant of [RadDragDropService]({%slug winforms/telerik-presentation-framework/raddragdropservice%}), **RadTaskBoardDragDropService** handles the whole drag and drop operation. The **PreviewDragOver** event allows you to control on what targets the task card being dragged can be dropped on. The **PreviewDragDrop** event allows you to get a handle on all the aspects of the drag and drop operation, the source (drag) control/element, the destination (target) control/element, as well as the task card being dragged. This is where we will initiate the actual physical move of the task(s) from one column to the target column or from one **RadTaskBoard** to another.

**RadTaskBoardDragDropService** offers a convenient API for customizing the whole drag and drop operation in **RadTaskBoard**. 
  
# See Also

* [Design Time]({%slug task-board-design-time%})
* [Structure]({%slug task-board-structure%})
 
        
