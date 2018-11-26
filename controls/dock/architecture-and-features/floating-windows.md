---
title: Floating Windows
page_title: Floating Windows | RadDock
description: This article describes what is floating window. 
slug: winforms/dock/architecture-and-features/floating-windows
tags: floating,windows
published: True
position: 3
previous_url: dock-architecture-and-features-floating-windows
---

# Floating Windows

__ToolWindows__ can reside in docked or floating docking containers. Floating containers are still controlled by __RadDock__.
 
## Floating a ToolWindow

There are multiple ways to float a __ToolWindow__:

* Drag the __ToolWindow__ out of the docked container area to an existing floating container.

* Drag the __ToolWindow__ to any area within the __DockingAssistant__ other than a drop target icon, the __RadDock__ will create a new floating container with the __ToolWindow__ in it.
            
* Right click the __ToolWindow__ title bar and select __Floating__ from the context menu.
           
* Double-click the title bar.

## Moving a ToolWindow to an Existing Floating Window

You can drag __DockPanels__ to an existing floating container. Select left, right, top, or bottom drop targets to create a split-cell layout, just as you would with a docked container.  

>caption Figure 1: Dock window inside floating window.

![dock-architecture-and-features-floating-windows 001](images/dock-architecture-and-features-floating-windows001.gif) 

## Unfloating a ToolWindow

To "un-float" a __ToolWindow__, drag the title bar to a docked container, or double-click the title bar.

## Moving a ToolWindow to a New Docking Container

If you use the drop target icons in the [DockingAssistant]({%slug winforms/dock/architecture-and-features/docking-assistant%}) outer zone, the __RadDock__ will create a new docking container. The __ToolWindow__ that was in a floating container will fill the new docked container. 

>caption Figure 2: Re-Dock floating window.

![dock-architecture-and-features-floating-windows 002](images/dock-architecture-and-features-floating-windows002.gif)

## Moving a Floating ToolWindow to an Existing Container

If you use the drop target icons in the inner zone different than the fill option, the __RadDock__ will insert the __ToolWindow__ that was in the floating container into an new docked container. Then, it will rearrange other docking containers within that container to accommodate the new docking container, subject to any minimum or maximum size restrictions. 

>caption Figure 3: Moving a Floating ToolWindow to an Existing Container.
![dock-architecture-and-features-floating-windows 003](images/dock-architecture-and-features-floating-windows003.gif)

## Floating a document window

Document windows can also reside in a floating window. To make a document window float, drag its tab outside of any docking container. This will create a floating window with the document inside it.

>caption Figure 4: Floating a document window.

![dock-architecture-and-features-floating-windows 004](images/dock-architecture-and-features-floating-windows004.gif)

## Moving a document window to an existing floating window

You can drag document windows to an existing floating container. Select left, right, top, or bottom drop targets to create a split-cell layout or select the fill target to create a tab for the document in the existing document container.

>caption Figure 5: Moving a document window to an existing floating window.

![dock-architecture-and-features-floating-windows 005](images/dock-architecture-and-features-floating-windows005.gif)

## Changing the floating behavior

To enable the Visual Studio 2008-like docking behavior, set the __SingleScreen__ property to *true*. Enabling this property will prevent document windows from floating and from docking inside existing floating windows.
        

{{source=..\SamplesCS\Dock\ArchitectureAndFeatures.cs region=floatingTabsMode}} 
{{source=..\SamplesVB\Dock\ArchitectureAndFeatures.vb region=floatingTabsMode}} 

````C#
this.radDock1.SingleScreen = true;

````
````VB.NET
Me.RadDock1.SingleScreen = True

````

{{endregion}} 
 
## Properties

This section describes the FloatinWindows specific properties.
* __Standalone__: Allows the floating window to behave like separate form and appear in the taskbar.
* __SnapToScreen__: Indicates whether this window should snap to the screen's edges.
* __SnapToOthers__: Indicates whether this window should snap to other windows.
* __SnapThreshold__: Indicates whether the threshold between edges before the window snaps.
* __SnapOnResize__: Indicates whether this window should snap while resizing.
* __SnapOnMove__: Indicates whether this window should snap while dragging.

>note The snapping functionality can be enabled/disabled by using the __EnableFloatingWindowSnapping__ property of __RadDock__.
>

# See Also

* [Customizing Floating Windows]({%slug winforms/dock/object-model/customizing-floating-windows%})
* [Using the CommandManager]({%slug winforms/dock/architecture-and-features/using-the-commandmanager%})     
* [Using the ContextMenuService]({%slug winforms/dock/architecture-and-features/using-the-contextmenuservice%})
* [Using the DragDropService]({%slug winforms/dock/architecture-and-features/using-the-dragdropservice%}) 
* [Document Manager]({%slug winforms/dock/architecture-and-features/document-manager%})   
* [Understanding RadDock]({%slug winforms/dock/architecture-and-features/understanding-raddock%})
