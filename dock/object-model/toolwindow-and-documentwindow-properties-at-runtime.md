---
title: ToolWindow and DocumentWindow Properties and Methods
page_title: ToolWindow and DocumentWindow Properties and Methods
description: ToolWindow and DocumentWindow Properties and Methods
slug: dock-object-model-toolwindow-and-documentwindow-properties-at-runtime
tags: toolwindow,and,documentwindow,properties,and,methods
published: True
position: 3
---

# ToolWindow and DocumentWindow Properties and Methods



## ToolWindow and DocumentWindow Properties

__ToolWindow__ and __DocumentWindow__ both implement the same interfaces, such as __IDockWindow__ and have a common set of properties even though their runtime behavior differs.

* __AllowedDockState__ specifies the allowed dock states for a __DockWindow__.
            

* __DockState__ specifies the current state of the __DockWindow__. You can set __DockState__ to __Docked__, __Floating__, __AutoHide__, __Hidden__, __TabbedDocument__.
            

* __DockType__: This read-only property contains one of the __Telerik.WinControls.Dock.DockType__ enumeration members __ToolWindow__ (for ToolWindow) or __Document__ for DocumentWindow.
            

* __Name__: This Guid property uniquely identifies each dock panel or tabbed document. Use this property when saving and restoring content. See [Loading and Saving Layouts]({%slug dock-loading-and-saving-layouts%}) for more information.
            

* __Image__: Used to assign an image that displays in the tab for the __ToolWindow__ or __DocumentWindow__. 
 

* __Text__ specifies the text to display in the caption bar at the top of the __ToolWindow__ and on the tab at the bottom of the __ToolWindow__.
            

## ToolWindow and DocumentWindow Methods

__Close():__ Closes a ToolWindow or a DocumentWindow. The ToolWindow/DocumentWindow can be just hidden or directly disposed. This depends on its default behavior and the __CloseAction__ property. For additional information refer to [Removing ToolWindow and DocumentWindow at Runtime]({%slug dock-object-model-removing-toolwindow-and-documentwindow-at-runtime%}).

__Show():__ Shows a hidden ToolWindow or DocumentWindow.

__DockTo(DockWindow window, DockPosition dockPosition):__ Docks a window with another window in the same container. The example below docks "Bottom Window" to the container of "Top Window".![dock-object-model-toolwindow-and-documentwindow-properties-at-runtime 001](images/dock-object-model-toolwindow-and-documentwindow-properties-at-runtime001.png)

#### __[C#] Using DockTo()__

{{region usingDockTo}}
	            toolWindow2.DockTo(toolWindow1, DockPosition.Fill);
	{{endregion}}



#### __[VB.NET] Using DockTo()__

{{region usingDockTo}}
	        toolWindow2.DockTo(ToolWindow1, DockPosition.Fill)
	{{endregion}}


