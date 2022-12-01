---
title: Multi-Line Menu Item Text
page_title: Multi-Line Menu Item Text - WinForms Menu Control
description: WinForms Menu allows you to display multiline text in its items.
slug: winforms/menus/menu/working-with-radmenu-items/multi-line-menu-item-text
tags: multi-line,menu,item,text
published: True
position: 4
previous_url: menus-menu-working-with-radmenu-items-multi-line-menu-item-text
---

# Multi-Line Menu Item Text

The RadMenuItem.__Text__ property can be displayed on multiple lines as shown in the screenshot below. 

![WinForms RadMenus menus-menu-working-with-radmenu-items-multi-line-menu-item-text 001](images/menus-menu-working-with-radmenu-items-multi-line-menu-item-text001.png)

In the Properties Window for a __RadMenuItem__ use the drop down list to invoke the editor for multiple lines. __Ctrl+Enter__ creates a new line in the editor. __Esc__ cancels changes and closes the editor. 

![WinForms RadMenus menus-menu-working-with-radmenu-items-multi-line-menu-item-text 002](images/menus-menu-working-with-radmenu-items-multi-line-menu-item-text002.png)

In code use __Environment.NewLine__ to separate strings:

{{source=..\SamplesCS\Menus\Menu\MenuForm.cs region=multiline}} 
{{source=..\SamplesVB\Menus\Menu\MenuForm.vb region=multiline}} 

````C#
radMenuItem1.Text = "Bar Chart - " +
 Environment.NewLine +
 "Compare multiple series of data";

````
````VB.NET
radMenuItem1.Text = "Bar Chart - " & Environment.NewLine & "Compare multiple series of data"

````

{{endregion}} 

## Menu Item Height

The __AllItemsEqualHeight__ property controls whether the **RadMenu** allows some menu items to be higher than others. By default, menu items with multiple lines of text are higher than menu items with single lines of text. If you set this property to *true*, the height of all items increases to match that of the tallest items.

{{source=..\SamplesCS\Menus\Menu\WorkingWithRadMenuItems\MultilineMenuItemText.cs region=Height}} 
{{source=..\SamplesVB\Menus\Menu\WorkingWithRadMenuItems\MultilineMenuItemText.vb region=Height}} 

````C#
radMenu1.AllItemsEqualHeight = true;

````
````VB.NET
radMenu1.AllItemsEqualHeight = True

````

{{endregion}} 

# See Also

* [Adding and Removing Items]({%slug winforms/menus/menu/working-with-radmenu-items/adding-and-removing-items%})
* [Nesting Controls in Menu Items]({%slug winforms/menus/menu/working-with-radmenu-items/nesting-controls-in-menu-items%})	
* [RadMenuItem Events]({%slug winforms/menus/menu/working-with-radmenu-items/radmenuitem-events%})	
* [Assign Shortcuts to Menu Items]({%slug winforms/menus/menu/working-with-radmenu-items/assign-shortcuts-to-menu-items%})



