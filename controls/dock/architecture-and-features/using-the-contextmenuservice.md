---
title: Using the ContextMenuService
page_title: Using the ContextMenuService - WinForms Dock Control
description: Learn how one can customize the context menu in WinForms RadDock.  
slug: winforms/dock/architecture-and-features/using-the-contextmenuservice
tags: using,the,contextmenuservice
published: True
position: 9
previous_url: dock-architecture-and-features-using-the-contextmenuservice
---

# Using the ContextMenuService
 
## Overview
 
All context menu related operations are handled by a stand alone service, registered with **RadDock** - **ContextMenuService**. Each context menu request is passed to the service, which on its hand creates the appropriate menu items and raises several events, which allows users to modify existing items, add their own or even cancel the request.
 
## Modifying the existing context menus
 
The following example demonstrates how you can hide the **Close** options from the **DocumentWindow** context menu. By default, the menu looks like this:

![WinForms RadDock Modifying the Existing Context Menus](images/dock-architecture-and-features-using-the-contextmenuservice001.png)

 
Let's get the **ContextMenuService** and subscribe to its **ContextMenuDisplaying** event:

#### Getting the ContextMenuService 

<snippet id='dock-using-the-contextmenuservice-gettingcontextmenuservice-cs' />
<snippet id='dock-using-the-contextmenuservice-gettingcontextmenuservice-vb' />

  

Then, hide the 'Close' options in the **ContextMenuDisplaying** event handler:

#### Hiding the 'close' menu items 

<snippet id='dock-using-the-contextmenuservice-handlingcontextmenudisplaying-cs' />
<snippet id='dock-using-the-contextmenuservice-handlingcontextmenudisplaying-vb' />

 
 
The result is shown on the screenshot below:

![WinForms RadDock Hiding the Close Menu Items](images/dock-architecture-and-features-using-the-contextmenuservice002.png)
 
## Menu items' names 

You can notice in the code snippet above that we are using the __Name__ property of the items instead of the __Text__ property. This allows you to handle the case even when a custom [RadDockLocalization]({%slug winforms/dock/localization/localization%}) provider is applied. The names for the menu items in **RadDock** are:
 
| __Text__ | __Name__ |
|----|----|
|Close|CloseWindow|
|Close All But This|CloseAllButThis|
|Close All|CloseAll|
|New Horizontal Tab Group|NewHTabGroup|
|New Vertical Tab Group|NewVTabGroup|
|Floating|Floating|
|Dockable|Docked|
|Tabbed Document|TabbedDocument|
|Auto Hide|AutoHide|
|Hide|Hidden|
| *Document Name* |ActivateWindow|

# See Also

[Getting Started]({%slug winforms/dock/getting-started%})
[Using the CommandManager]({%slug winforms/dock/architecture-and-features/using-the-commandmanager%}) 
[Understanding RadDock]({%slug winforms/dock/architecture-and-features/understanding-raddock%})
[Using the DragDropService]({%slug winforms/dock/architecture-and-features/using-the-dragdropservice%}) 
[Document Manager]({%slug winforms/dock/architecture-and-features/document-manager%})   
