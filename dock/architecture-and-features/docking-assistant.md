---
title: Docking Assistant
page_title: Docking Assistant | UI for WinForms Documentation
description: Docking Assistant
slug: winforms/dock/architecture-and-features/docking-assistant
tags: docking,assistant
published: True
position: 2
---

# Docking Assistant
 
The Docking Assistant indicates the relationship of a dragged panel to the rest of the docking layout. Use the Docking Assistant at runtime to pinpoint drag-drop destinations.

## Component Parts of the Docking Assistant

This tool is made up of an outer zone and an inner zone of controls. The outer zone consists of four satellite grips, situated at the four points of a virtual compass over the docking container. It is used for positioning a __DockWindow__relative to the primary host container. The inner zone has a center compass with icons for positioning a __DockWindow__in the underlying docking container or in another docking container relative to the underlying one. All of these icons represent a drop target, i.e. the destination for the DockWindow you are moving.

## Using the Docking Assistant

To use the Docking Assistant, use the mouse to select the title bar of the source __ToolWindow__. Drag the window over the host (destination) container. This action activates the Docking Assistant. Point to the inner or outer zone icon that represents the area you want the __ToolWindow__ to occupy. When the mouse button is released, the __ToolWindow__ is relocated. Other windows in the host container, as well as other docking containers within the __RadDock__, are relocated to accommodate the change.

## Docking Hints

In addition to the drop target icons, the docking assistant displays docking hints. A docking hint is a visual preview of what space will be occupied by a __DockWindow__. Drop hints are enabled when you are in the process of moving the __DockWindow__ and while the mouse pointer is positioned over one of the drop targets. In the example below, the drop hint indicates that "ToolWindow4" will be situated to bottom of "ToolWindow5" and to the left of "ToolWindow3". After the drop is made, the __RadDock__ automatically resizes both windows' containers to fill the available space.




|||
|----|----|
|![dock-architecture-and-features-docking-assistant 001](images/dock-architecture-and-features-docking-assistant001.png)|![dock-architecture-and-features-docking-assistant 002](images/dock-architecture-and-features-docking-assistant002.png)|



## Tabbing/Un-tabbing DockWindows

In addition to moving __ToolWindows__ from one docking container to another, you can place multiple __ToolWindow__ into the same visual space so that they overlap. Each window within the overlapped docking area is accessible by use of document tabs.

To place a __ToolWindow__ as a tab, use the drop target icon at the center of the __RadDock__ compass when you drag a __ToolWindow__ to its destination. The two __ToolWindows__ will overlap each other at the site of the destination. Other docking containers and __ToolWindow__ will resize themselves automatically to fill the available space, subject to any minimum or maximum size specifications set at design time.

In the example below, "ToolWindow4" is dropped into the space occupied by "ToolWindow5". After the drop, tabs for both "ToolWindow5" and "ToolWindow4" are displayed.


|||
|----|----|
|![dock-architecture-and-features-docking-assistant 003](images/dock-architecture-and-features-docking-assistant003.png)|![dock-architecture-and-features-docking-assistant 004](images/dock-architecture-and-features-docking-assistant004.png)|



To un-tab a __ToolWindow__, drag the __ToolWindow__ tab into a docking container using the docking assistant. In the screenshots below, the tab for "ToolWindow4" is dragged on to the docking assistant inner compass, indicating that it will be dropped to the left of "ToolWindow3".


|||
|----|----|
|![dock-architecture-and-features-docking-assistant 005](images/dock-architecture-and-features-docking-assistant005.png)|![dock-architecture-and-features-docking-assistant 006](images/dock-architecture-and-features-docking-assistant006.png)|






