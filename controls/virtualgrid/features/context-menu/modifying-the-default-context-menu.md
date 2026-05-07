---
title: Modifying the Default Context Menu
page_title: Modifying the Default Context Menu - RadVirtualGrid
description: This article shows how one can access and modify the default context menu of RadVirtualGrid.
slug: winforms/virtualgrid/context-menu/modifying-the-default-context-menu
tags: virtualgrid, menu, modify
published: True
position: 2
---

The default __RadVirtualGrid__ context menu can be customized in the __ContextMenuOpening__ event.

# Removing an item from the default RadVirtualGrid context menu:

<snippet id='virtualgrid-virtualgridcontextmenu-removeitem-cs' />
<snippet id='virtualgrid-virtualgridcontextmenu-removeitem-vb' />



|Default Context Menu|Modified Context Menu|
|----|----|
|![WinForms RadVirtualGrid Default Context Menu](images/virtualgrid-modifying-the-default-context-menu001.png)|![WinForms RadVirtualGrid Modified Context Menu with Removed Item](images/virtualgrid-modifying-the-default-context-menu002.png)|

# Adding menu items to the default RadVirtualGrid context menu
 
In order to add custom menu items to the default context menu, you should create menu item instances in the __ContextMenuOpening__ event handler and add them to the __VirtualGridContextMenuOpeningEventArgs.ContextMenu.Items__ collection:

#### Adding items to the default RadVirtualGrid context menu:

<snippet id='virtualgrid-virtualgridcontextmenu-additem-cs' />
<snippet id='virtualgrid-virtualgridcontextmenu-additem-vb' />



|Default Context Menu|Modified Context Menu|
|----|----|
|![WinForms RadVirtualGrid ContextMenu](images/virtualgrid-modifying-the-default-context-menu001.png)|![WinForms RadVirtualGrid Modified Context Menu with Added item](images/virtualgrid-modifying-the-default-context-menu003.png)|

# See Also
* [Overview]({%slug winforms/virtualgrid/context-menu/context-menu%})

* [Custom Context Menu]({%slug winforms/virtualgrid/context-menu/custom-context-menu%})

