---
title: Conditional Custom Context Menus
page_title: Conditional Custom Context Menus - WinForms GridView Control
description: Learn how to apply custom context menu for the cells of a specific column only in the WinForms GridView.
slug: winforms/gridview/context-menus/conditional-custom-context-menus
tags: conditional,custom,context,menus
published: True
position: 1
previous_url: gridview-context-menus-conditional-custom-context-menus
---

# Conditional Custom Context Menus

Applications may need to provide specific individual context menus depending on the element that was clicked. Context menus make a great amount of functionality available without burdening the user with additional screen transitions or extra controls on the screen. The example below demonstrates how to dynamically add different custom context menus, depending on the part of the grid that was clicked.

>note To set a custom context menu to appear every time the user right-clicks the __RadGridView__, regardless of the element of the control they click, see [Custom Context Menus]({%slug winforms/gridview/context-menus/custom-context-menus%}).
>

## Example

In this example, two different context menus are created and attached to cells in the second and third grid columns. If the user right-clicks in a cell the second column, they will get the first custom context menu. If they click in the third column, they will get the second context menu. If they right-click any other element of the __RadGridView__, the default context menu will be shown.

Start by creating the context menus, initializing its items, and subscribing to the context menu events that you want to handle. Then in the ContextMenuOpening event handler check the context menu provider and assign the corresponding context menu.

<snippet id='gridview-conditionalcustomcontextmenus-creatingandchangingcontextmenus-cs' />
<snippet id='gridview-conditionalcustomcontextmenus-creatingandchangingcontextmenus-vb' />

# See Also
* [Custom Context Menus]({%slug winforms/gridview/context-menus/custom-context-menus%})

* [Modifying the Default Context Menu]({%slug winforms/gridview/context-menus/modifying-the-default-context-menu%})

