---
title: Input Behavior
page_title: Input Behavior - WinForms GanttView Control
description: BaseGanttViewBehavior is responsible for handling the keyboard, mouse, and context menu. 
slug: winforms/ganttview/input-behavior
tags: input,behavior
published: True
position: 12
---

# Input Behavior
 
The user input in **RadGanttView** is controlled by a special behavior class. The **BaseGanttViewBehavior** class is responsible for handling the keyboard, mouse, and context menu. It defines a number of methods which are virtual and custom implementations are easy to achieve as all of the base logic can be overridden. The behavior class is exposed by the RadGanttView.**GanttViewBehavior** property.

>note The following [KB article]({%slug ganttview-custom-input-behavior%}) features an example for creating a *CustomGanttViewBehavior* with custom logic handling the mouse and keyboard.

The table below lists all of the virtual methods related to the *Mouse*, *Keyboard*, and *Context Menu* in the **BaseGanttViewBehavior** class.

|Mouse Input|
|---|
|**ProcessMouseDown**|
|**ProcessMouseDownOnCellHeaderElement**|
|**ProcessMouseDownOnCellElement**|
|**ProcessMouseDownOnTaskElement**|
|**ProcessMouseDownOnTaskLinkHandleElement**|
|**ProcessMouseDownOnTaskLinkHandleElementWhenEditingLink**|
|**ProcessMouseMove**|
|**ProcessMouseMoveWhenResizingColumn**|
|**ProcessMouseMoveWhenResizingTask**|
|**ProcessMouseMoveWhenCreatingLink**|
|**ProcessMouseMoveWhenEditingLink**|
|**ProcessMouseUp**|
|**ProcessMouseUpOnCellElement**|
|**ProcessMouseUpWhenResizingColumn**|
|**ProcessMouseUpWhenResizingTask**|
|**ProcessMouseUpWhenCreatingLink**|
|**ProcessMouseUpWhenEditingLink**|
|**ProcessMouseClick**|
|**ProcessDoubleClick**|
|**ProcessMouseEnter**|
|**ProcessMouseLeave**|
|**ProcessMouseWheel**|
|**ProcessMouseHover**|

|Keyboard Input|
|---|
|**ProcessKeyDown**|
|**ProcessKeyPress**|
|**ProcessKeyUp**|
|**ProcessDialogKey**|
|**ProcessEscapeKey**|
|**ProcessSubtractKey**|
|**ProcessAddKey**|
|**ProcessHomeKey**|
|**ProcessEndKey**|
|**ProcessLeftKey**|
|**ProcessRightKey**|
|**ProcessUpKey**|
|**ProcessDownKey**|
|**ProcessF2Key**|
|**ProcessDeleteKey**|

|Context Menu|
|---|
|**ProcessContextMenu**|

# See Also

* [Custom Input Behavior Example]({%slug ganttview-custom-input-behavior%})
* [Keyboard navigation]({%slug winforms/ganttview-/usability/keyboard-navigation%})
* [Mouse navigation]({%slug winforms/ganttview-/usability/mouse-navigation%})
