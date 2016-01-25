---
title: Arranging DockWindows
page_title: Arranging DockWindows | UI for WinForms Documentation
description: Arranging DockWindows
slug: winforms/dock/architecture-and-features/arranging-dockwindows
tags: arranging,dockwindows
published: True
position: 1
previous_url: dock-architecture-and-features-arranging-dockwindows
---

# Arranging DockWindows



A ToolTabStrip container can include one or more __ToolWindows__. You can drag __ToolWindows__ in the following ways:

* Within a ToolTabStrip.

* From one ToolTabStrip to another existing ToolTabStrip. 

* From one ToolTabStrip to a new ToolTabStrip. 

* From a ToolTabStrip on a form to a floating ToolTabStrip. 

* From a floating ToolTabStrip to a docked ToolTabStrip. 

To move a __ToolWindow__, drag its title bar from the source location to the new target (or host) container. The [Docking Assistant]({%slug winforms/dock/architecture-and-features/docking-assistant%}) allows you to place the __ToolWindow__ in a specific relationship to the other panels.

![dock-architecture-and-features-arranging-dockwindows 001](images/dock-architecture-and-features-arranging-dockwindows001.png)

In addition to moving __ToolWindows__ in different ToolTabStrip containers, you can use the context menu or "pin" icon in the DockPanel title bar to make window auto-hidden. This mode collapses the window against an edge of the RadDock. Another option is to move a ToolWindow to a container with tabbed documents. Both of these options:

* Save critical space on the end user screen 


* Allow more information to be presented at run time. 


* Allow the end user to customize their work space.

## Resizing Panels

To resize a ToolTabStrip/DocumentTabStrip container, click the splitter bar between two adjacent docking containers and drag the splitter to the desired location. The __ToolWindows__ and docking containers will automatically resize themselves to fit the space available to them, subject to any minimum or maximum size limits set at design time. You can find the splitter bar between docking containers as shown in the screen shot below.

![dock-architecture-and-features-arranging-dockwindows 002](images/dock-architecture-and-features-arranging-dockwindows002.png)

To begin resizing move your mouse over the splitter area until the splitter mouse icon appears (the icon is a line with upward and downward pointing arrows).

![dock-architecture-and-features-arranging-dockwindows 003](images/dock-architecture-and-features-arranging-dockwindows003.png)

Hold the left mouse down and drag the splitter to a new location.

![dock-architecture-and-features-arranging-dockwindows 004](images/dock-architecture-and-features-arranging-dockwindows004.png)

To complete the resize, release the mouse button, dropping the splitter bar in its new location. The panels to either side of the splitter will be resized in relation to the new splitter position.

![dock-architecture-and-features-arranging-dockwindows 005](images/dock-architecture-and-features-arranging-dockwindows005.png)

## Resize Floating Containers

To resize a floating docking container, drag the edges of the floating window. __ToolWindow__ within the container can be resized in the same manner as within any other docking container.

 
![dock-architecture-and-features-arranging-dockwindows 006](images/dock-architecture-and-features-arranging-dockwindows006.png)

![dock-architecture-and-features-arranging-dockwindows 007](images/dock-architecture-and-features-arranging-dockwindows007.png)
