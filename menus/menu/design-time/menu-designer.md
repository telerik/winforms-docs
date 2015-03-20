---
title: Menu Designer
page_title: Menu Designer
description: Menu Designer
slug: menus-menu-design-time-menu-designer
tags: menu,designer
published: True
position: 1
---

# Menu Designer



## Adding Main Menu items

There are multiple methods for building menus using the property collection editor or the RadMenu designer. To add a new main menu item:

* Click the the RadMenu area labeled "Type here", and type your top level menu item directly into the entry space provided.
            When you're finished click __ESC__to abandon your edits or __Enter__to accept the edits and create
            a new __RadMenuItem__.
            ![menus-menu-design-time-menu-designer 001](images/menus-menu-design-time-menu-designer001.png)

* Or, click the drop-down arrow to the right of the existing main menu items, and select __Add RadMenuItem__,
            __Add RadMenuComboItem__ or __Add RadMenuSeparatorItem__ to create an item of the corresponding type.
            Once the menu item is created you can use the [Smart Tag]({%slug menus-menu-design-time-smart-tag%})
            to configure the __Text__, __Image__ properties and edit the __Items__ collection for the menu 
            item.![menus-menu-design-time-menu-designer 002](images/menus-menu-design-time-menu-designer002.png)

* Or, click the RadMenu control, open its [Smart Tag]({%slug menus-menu-design-time-smart-tag%}) 
            menu, and select __Edit Items__. Add a new __RadMenuItem__ in the __RadElement Collection Editor__.![menus-menu-design-time-menu-designer 003](images/menus-menu-design-time-menu-designer003.png)

>The menu designer is decorated with rightward and downward pointing arrow buttons. Right-pointing arrows 
            indicate [Smart Tags]({%slug menus-menu-design-time-smart-tag%}) for
            the __RadMenu__ and the individual __RadMenuItems__ that make up the menu. Downward 
            pointing arrows let you add a particular menu item type, i.e. __RadMenuItem__, __RadMenuComboItem__ 
              or __RadMenuSeparatorItem__.
            

## Adding Sub Menu Items

To add a new sub-menu item to a main menu item, use one of these procedures:

* Select the main menu item, click in its __Items__ property, click the ellipsis button, and then use the RadElement Collection Editor. 

* Click a main menu item in the designer to invoke the __Add new__ item.__Add new__ will allow you to select from __RadMenuitem__, __RadMenuComboItem__ or __RadmenuSeparatorItem__. Select one of these menu item types to create it and add it below the selected menu item.![menus-menu-design-time-menu-designer 004](images/menus-menu-design-time-menu-designer004.png)

* Right-click the main menu item and select __Add an item__ from the context menu.![menus-menu-design-time-menu-designer 005](images/menus-menu-design-time-menu-designer005.png)

Each __RadMenuItem__ can have its own items to allow menu designs that require multiple levels of hierarchy.![menus-menu-design-time-menu-designer 006](images/menus-menu-design-time-menu-designer006.png)

## Removing Menu Items

To remove a main menu or sub-menu item, select the item and press __Delete__or right click the menu item and 
        select __Delete__from the context menu.
