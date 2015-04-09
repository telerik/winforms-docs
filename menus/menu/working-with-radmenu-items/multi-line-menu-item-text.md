---
title: Multi-Line Menu Item Text
page_title: Multi-Line Menu Item Text
description: Multi-Line Menu Item Text
slug: menus-menu-working-with-radmenu-items-multi-line-menu-item-text
tags: multi-line,menu,item,text
published: True
position: 4
---

# Multi-Line Menu Item Text



## 

The __Text__for __RadMenuItem__ can be displayed on multiple lines as shown in the screenshot below.
				![menus-menu-working-with-radmenu-items-multi-line-menu-item-text 001](images/menus-menu-working-with-radmenu-items-multi-line-menu-item-text001.png)

In the Property Window for a __RadMenuItem__use the drop down list to invoke the editor for multiple lines. __Ctrl-Shift__ creates a new line in the editor.  __Ctrl-Enter__ accepts changes and closes the editor. __Esc__ cancels changes and closes the editor. 
				![menus-menu-working-with-radmenu-items-multi-line-menu-item-text 002](images/menus-menu-working-with-radmenu-items-multi-line-menu-item-text002.png)

In code use __Environment.NewLine__ to separate strings:
				

#### __[C#]__

{{source=..\SamplesCS\Menus\Menu\MenuForm.cs region=multiline}}
	            radMenuItem1.Text = "Bar Chart - " +
	             Environment.NewLine +
	             "Compare multiple series of data";
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Menus\Menu\MenuForm.vb region=multiline}}
	        radMenuItem1.Text = "Bar Chart - " & Environment.NewLine & "Compare multiple series of data"
	{{endregion}}



## Menu Item Height

The __AllItemsEqualHeight__ property controls whether the RadMenu allows some menu items to be taller than others. By default, menu items with multiple lines of text are taller than menu items with single lines of text. If you set this property to True, the height of all items increases to match that of the tallest items.
				

#### __[C#]__

{{source=..\SamplesCS\Menus\Menu\WorkingWithRadMenuItems\MultilineMenuItemText.cs region=Height}}
	            radMenu1.AllItemsEqualHeight = true;
	{{endregion}}



#### __[VB.NET]__

{{source=..\SamplesVB\Menus\Menu\WorkingWithRadMenuItems\MultilineMenuItemText.vb region=Height}}
	        radMenu1.AllItemsEqualHeight = True
	{{endregion}}


