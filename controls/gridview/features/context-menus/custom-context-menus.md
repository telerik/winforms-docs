---
title: Custom Context Menus
page_title: Custom Context Menus - WinForms GridView Control
description: Learn how to change the default context menu of WinForms GridView with a custom one. 
slug: winforms/gridview/context-menus/custom-context-menus
tags: custom,context,menus
published: True
position: 0
previous_url: gridview-context-menus-custom-context-menus
---

# Custom Context Menus

__RadGridView__ provides a straightforward way to use custom context menus, instead of the default one. This context menu will appear every time the user right-clicks the __RadGridView__, regardless of the element of the control they click.

>caption Figure 1: Custom Context Menu.

![WinForms RadGridView Custom Context Menu](images/gridview-context-menus-custom-context-menus001.png)

Start by creating the context menu, initializing its items, and subscribing for the events that you want to handle to achieve the desired behavior. Note: You will need Telerik.WinControls.UI namespace added to your "Using" (C#) or "Imports" (VB).

#### Setup the Context Menu

<snippet id='gridview-customcontextmenus-creatingcontextmenu-cs' />
<snippet id='gridview-customcontextmenus-creatingcontextmenu-vb' />

Once the menu object has been initialized and populated with menu items, it is ready to be attached to the __RadGridView__. To do that, subscribe to the __ContextMenuOpening__ event and set the context menu to be displayed:

#### ContextMenuOpening Event

<snippet id='gridview-customcontextmenus-changethecontextmenu-cs' />
<snippet id='gridview-customcontextmenus-changethecontextmenu-vb' />

# See Also

* [Conditional Custom Context Menus]({%slug winforms/gridview/context-menus/conditional-custom-context-menus%})

* [Modifying the Default Context Menu]({%slug winforms/gridview/context-menus/modifying-the-default-context-menu%})

