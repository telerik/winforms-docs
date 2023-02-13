---
title: Editing Graphical View
page_title: Editing Graphical View - WinForms GanttView Control
description: The graphical view of WinForms GanttView allows the users to modify several aspects of the tasks they are viewing.
slug: winforms/ganttview-/editing/editing-graphical-view
tags: editing,graphical,view
published: True
position: 1
previous_url: ganttview-editing-editing-graphicalview
---

# Editing Graphical View

The graphical view of __RadGanttView__ allows the users to modify several aspects of the tasks they are viewing.

## Resizing

Users can grab the edge of a summary task or a regular task and drag the edge with the mouse to effectively modify the start or end time of the tasks.
        
![WinForms RadGanttView Resizing](images/ganttview-editing-editing-graphicalview003.gif)

## Drag Drop

Users can drag the whole task by clicking anywhere on the task surface, without the edges, and drag the whole task back or forth in time. This way they modify both the start and the end time of the task.
        
![WinForms RadGanttView Drag Drop](images/ganttview-editing-editing-graphicalview002.gif)

## Creating Links

Users can create links (dependences) by doing the following:

1. Hover over the item they want the link to start.

1. Two link handles will appear on both sides of the task.

1. Press the left mouse button and start dragging. A new link will appear.

1. Finally the user should release the mouse over a link handle of another item. The link type is determined by the link handle where the operation started and the link handle where it ended.
            
![WinForms RadGanttView Creating Links](images/ganttview-editing-editing-graphicalview001.gif)

# See Also

* [Customizing editor]({%slug winforms/ganttview-/editing/customizing-editor%})
* [Creating custom editor]({%slug winforms/ganttview-/editing/creating-custom-editor%})
* [Editing Text View]({%slug winforms/ganttview-/editing/editing-text-view%})
