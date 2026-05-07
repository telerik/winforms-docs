---
title: Custom Context Menu
page_title: Custom context Menu - RadVirtualGrid
description: This article shows how you can create and usea custom context menu in RadVirtualGrid.
slug: winforms/virtualgrid/context-menu/custom-context-menu
tags: virtualgrid, menu, custom
published: True
position: 1
---

# Custom context Menu

__RadVirtualGrid__ provides a straightforward way to use custom context menus, instead of the default one. This context menu will appear every time the user right-clicks the __RadVirtualGrid__, regardless of the element of the control they click.

![WinForms RadVirtualGrid Custom context Menu](images/virtualgrid-custom-context-menu001.png)
 
Start by creating a __RadContextMenu__, initializing its items, and subscribing for the events that you want to handle to achieve the desired behavior:

#### Create a RadContextMenu and initialize its items

<snippet id='virtualgrid-virtualgridcontextmenu-initializecontextmenu-cs' />
<snippet id='virtualgrid-virtualgridcontextmenu-initializecontextmenu-vb' />



Once the menu object has been initialized and populated with menu items, it is ready to be attached to the __RadVirtualGrid__. To do that, subscribe to the __ContextMenuOpening__ event and set the context menu to be displayed:

#### Apply the custom context menu

<snippet id='virtualgrid-virtualgridcontextmenu-applycustomcontextmenu-cs' />
<snippet id='virtualgrid-virtualgridcontextmenu-applycustomcontextmenu-vb' />



# Conditional Custom Context Menus

Applications may need to provide specific individual context menus depending on the element that was clicked. The following example demonstrates how to create two __RadContextMenu__ instances, filled with two items each. Then, according to the right-clicked cell element, apply the relevant menu.

#### Create custom context menus

<snippet id='virtualgrid-virtualgridcontextmenu-conditionalmenus-cs' />
<snippet id='virtualgrid-virtualgridcontextmenu-conditionalmenus-vb' />



#### Apply the relevant menu

<snippet id='virtualgrid-virtualgridcontextmenu-setconditionalmenus-cs' />
<snippet id='virtualgrid-virtualgridcontextmenu-setconditionalmenus-vb' />



|Data Cells Menu|Header Cells Menu|
|----|----|
|![WinForms RadVirtualGrid Data Cells Menu](images/virtualgrid-custom-context-menu002.png)|![WinForms RadVirtualGrid Header Cells Menu](images/virtualgrid-custom-context-menu003.png)|

# See Also
* [Overview]({%slug winforms/virtualgrid/context-menu/context-menu%})

* [Modifying the Default Context Menu]({%slug winforms/virtualgrid/context-menu/modifying-the-default-context-menu%})

