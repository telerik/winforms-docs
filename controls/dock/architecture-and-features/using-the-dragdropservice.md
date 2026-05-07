---
title: Using the DragDropService
page_title: Using the DragDropService - WinForms Dock Control
description: Learn how you can use the DragDropService in WinForms RadDock.
slug: winforms/dock/architecture-and-features/using-the-dragdropservice
tags: using,the,dragdropservice
published: True
position: 7
previous_url: dock-architecture-and-features-using-the-dragdropservice
---

# Using the DragDropService

The new docking framework introduces service-based semantic, which allows for granular and pluggable functionality per **RadDock** instance. The entire drag-and-drop functionality is handled by the registered **DragDropService** instance, which simply receives drag requests and instantiates the appropriate operation. The service is responsible for drop target hit-testing, displaying docking guides and docking hints as well as for processing user input while dragging is in progress.

## Canceling Drag-and-drop operation

A running drag-and-drop operation (DDO) may be easily canceled by either pressing `Esc` or manually, by calling the following method:

#### Canceling Drag-and-drop operation 
 

<snippet id='dock-using-the-dragdropservice-cancellingservice-cs' />
<snippet id='dock-using-the-dragdropservice-cancellingservice-vb' />

 
 
The Boolean parameter determines whether the operation should be committed (applied) or not.

## Drag-and-drop Modes

The service can operate in two modes: *Immediate* and *Preview*. The *Immediate* mode is the default one and it means that when a drag-and-drop operation is instantiated, the dragged window will be immediately detached from its current **DockTabStrip** and will become floating. On the contrary, in *Preview* mode the **DockWindow** will not be detached but rather a semi-translucent rectangle will be displayed, indicating the floating position it would take if the operation is committed. The major benefit of this new mode is that the operation is completely cancelable. The *Preview* mode is currently used by the framework at design-time.
 
You can switch between *Preview* and *Immediate* modes by setting the __DragDropMode__ property of **RadDock**:

#### Setting DragDropMode 
 
<snippet id='dock-using-the-dragdropservice-dragdropmode-cs' />
<snippet id='dock-using-the-dragdropservice-dragdropmode-vb' />

 
 
## AllowedDockStates

The service may be told which dock states are allowed to be hit-tested. For example, we may exclude any floating window from hit-testing by simply specifying the following:

#### Setting AllowedStates 

<snippet id='dock-using-the-dragdropservice-dragdropallowedstates-cs' />
<snippet id='dock-using-the-dragdropservice-dragdropallowedstates-vb' />

 
 
## Extending Service’s Behavior by Handling Events

* __Starting:__ Notifies that the service is about to start. The drag context is passed as an event argument, which allows listeners to examine it and optionally cancel undesired operation.

* __Started:__ Notifies for a successfully started DDO.

* __Stopping:__ Notifies that the service is about to stop. The **Commit** parameter is passed as an event argument, which allows listeners to examine it and to modify it or to prevent the service from stopping.

* __Stopped:__ Notifies that the service is successfully stopped.

* __Dragging:__ Notifies for a drag pass, performed upon each mouse move. Allows listeners to stop the DDO under some circumstances.

* __PreviewDropTarget:__ Allows listeners to examine and/or optionally modify the currently hit-tested drop target. For example, this may be used to exclude certain panels from being hit-tested.

* __PreviewDockPosition:__ Allows listeners to examine and optionally modify the allowed dock position for the current drag operation. For example, here is the right place to allow dock only bottom for a specific drop target.

* __PreviewHitTest:__ Allows for preview and/or modification of the generated hit-test result.

The following example demonstrates how to allow only DockPosition.*Bottom* for the **MainDocumentContainer**:

#### Handling DragDropService events 

<snippet id='dock-using-the-dragdropservice-initdragdropevents-cs' />
<snippet id='dock-using-the-dragdropservice-initdragdropevents-vb' />

 
 
>caption Figure 1: Only DockPosition.Bottom is allowed.

![WinForms RadDock Only DockPositionBottom is allowed](images/dock-architecture-and-features-using-the-dragdropservice001.png)

## Allowed Dock Manager Edges

The service may be told which edges of the owning **RadDock** instance are allowed for dock operation. The following example demonstrates how to set only left and right edges as allowed:

#### Setting AllowedDockManagerEdges 

<snippet id='dock-using-the-dragdropservice-initdragdropproperties-cs' />
<snippet id='dock-using-the-dragdropservice-initdragdropproperties-vb' />

 

>caption Figure 2: Only DockPosition.Left and DockPosition.Right are available.

![WinForms RadDock Only DockPositionLeft and DockPositionRight are available](images/dock-architecture-and-features-using-the-dragdropservice002.png)

# See Also

[Getting Started]({%slug winforms/dock/getting-started%})
[Using the CommandManager]({%slug winforms/dock/architecture-and-features/using-the-commandmanager%}) 
[Using the ContextMenuService]({%slug winforms/dock/architecture-and-features/using-the-contextmenuservice%})
[Understanding RadDock]({%slug winforms/dock/architecture-and-features/understanding-raddock%})
[Document Manager]({%slug winforms/dock/architecture-and-features/document-manager%})   
