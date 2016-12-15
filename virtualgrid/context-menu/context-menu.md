---
title: Overview
page_title: Context Menu | RadVirtualGrid
description: RadVirtualGrid provides default context menu for its cells. This context menu will appear every time the user right-clicks the RadVirtualGrid. 
slug: winforms/virtualgrid/context-menu/context-menu
tags: virtualgrid, menu
published: True
position: 0
---

# Context Menu

__RadVirtualGrid__ provides default context menu for its cells. This context menu will appear every time the user right-clicks the __RadVirtualGrid__. Depending on the clicked cell element, a specific context menu is displayed:

#### Default context menu for data cells
 
![virtualgrid-context-menu 001](images/virtualgrid-context-menu001.png)

#### Default context menu for header cells

![virtualgrid-context-menu 002](images/virtualgrid-context-menu002.png)

#### Default context menu for new row

![virtualgrid-context-menu 003](images/virtualgrid-context-menu003.png)

You can control whether the context menu will be displayed by the __AllowColumnHeaderContextMenu__ property for the header cells and the __AllowCellContextMenu__ property for the rest of the cells.

#### Disable context menu for data cells

{{source=..\SamplesCS\VirtualGrid\ContextMenu\VirtualGridContextMenu.cs region=CellContextMenu}} 
{{source=..\SamplesVB\VirtualGrid\ContextMenu\VirtualGridContextMenu.vb region=CellContextMenu}} 

````C#
            
this.radVirtualGrid1.AllowCellContextMenu = false;

````
````VB.NET
Me.RadVirtualGrid1.AllowCellContextMenu = False

````

{{endregion}} 

#### Disable context menu for header cells

{{source=..\SamplesCS\VirtualGrid\ContextMenu\VirtualGridContextMenu.cs region=HeaderContextMenu}} 
{{source=..\SamplesVB\VirtualGrid\ContextMenu\VirtualGridContextMenu.vb region=HeaderContextMenu}} 

````C#
            
this.radVirtualGrid1.AllowColumnHeaderContextMenu = false;

````
````VB.NET
Me.RadVirtualGrid1.AllowColumnHeaderContextMenu = False

````

{{endregion}} 




 
