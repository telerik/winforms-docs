---
title: Menu Orientation
page_title: Menu Orientation - RadMenu
description: RadMenu enables you to integrate attractive and flexible menus on Forms within your Windows applications.
slug: winforms/menus/menu/styling-and-appearance/menu-orientation
tags: menu,orientation
published: True
position: 0
previous_url: menus-menu-styling-and-appearance-menu-orientation
---

# Menu Orientation

The __Orientation__ property of the **RadMenu** control and the __TextOrientation__ and __FlipText__ properties of the individual **RadMenuItems** interact to determine the overall layout of the **RadMenu**.

## Default Menu

The __RadMenu__ default settings are: __Orientation__ = *Horizontal*, __TextOrientation__ = *Horizontal*, __FlipText__ = *false*. The resulting menu is arranged as shown in the figure below:

![WinForms RadMenus menus-menu-styling-and-appearance-menu-orientation 001](images/menus-menu-styling-and-appearance-menu-orientation001.png)

#### Default orientation

{{source=..\SamplesCS\Menus\Menu\MenuOrientation.cs region=default}} 
{{source=..\SamplesVB\Menus\Menu\MenuOrientation.vb region=default}} 

````C#
radMenu1.Orientation = System.Windows.Forms.Orientation.Horizontal;
radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
radMenuItemFile.FlipText = false;
radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
radMenuItemEdit.FlipText = false;
radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
radMenuItemView.FlipText = false;
radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
radMenuItemHelp.FlipText = false;

````
````VB.NET
radMenu1.Orientation = System.Windows.Forms.Orientation.Horizontal
radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Horizontal
radMenuItemFile.FlipText = False
radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Horizontal
radMenuItemEdit.FlipText = False
radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Horizontal
radMenuItemView.FlipText = False
radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Horizontal
radMenuItemHelp.FlipText = False

````

{{endregion}} 

## Horizontal Menu with Vertical Items

The menu can be oriented horizontally with menu items arranged vertically:

![WinForms RadMenus menus-menu-styling-and-appearance-menu-orientation 002](images/menus-menu-styling-and-appearance-menu-orientation002.png)

#### Vertical text orientation

{{source=..\SamplesCS\Menus\Menu\MenuOrientation.cs region=textVertical}} 
{{source=..\SamplesVB\Menus\Menu\MenuOrientation.vb region=textVertical}} 

````C#
radMenu1.Orientation = System.Windows.Forms.Orientation.Horizontal;
radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Vertical;
radMenuItemFile.FlipText = false;
radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Vertical;
radMenuItemEdit.FlipText = false;
radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Vertical;
radMenuItemView.FlipText = false;
radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Vertical;
radMenuItemHelp.FlipText = false;

````
````VB.NET
radMenu1.Orientation = System.Windows.Forms.Orientation.Horizontal
radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Vertical
radMenuItemFile.FlipText = False
radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Vertical
radMenuItemEdit.FlipText = False
radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Vertical
radMenuItemView.FlipText = False
radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Vertical
radMenuItemHelp.FlipText = False

````

{{endregion}} 

## Sideways Menu

The menu can be oriented vertically with menu items arranged horizontally to create a "sideways" menu:

![WinForms RadMenus menus-menu-styling-and-appearance-menu-orientation 003](images/menus-menu-styling-and-appearance-menu-orientation003.png)

#### Vertical menu with horizontal text

{{source=..\SamplesCS\Menus\Menu\MenuOrientation.cs region=menuVertical}} 
{{source=..\SamplesVB\Menus\Menu\MenuOrientation.vb region=menuVertical}} 

````C#
radMenu1.Orientation = System.Windows.Forms.Orientation.Vertical;
radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
radMenuItemFile.FlipText = false;
radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
radMenuItemEdit.FlipText = false;
radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
radMenuItemView.FlipText = false;
radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
radMenuItemHelp.FlipText = false;

````
````VB.NET
radMenu1.Orientation = System.Windows.Forms.Orientation.Vertical
radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Horizontal
radMenuItemFile.FlipText = False
radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Horizontal
radMenuItemEdit.FlipText = False
radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Horizontal
radMenuItemView.FlipText = False
radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Horizontal
radMenuItemHelp.FlipText = False

````

{{endregion}} 

## Stacked Vertical Menu

![WinForms RadMenus menus-menu-styling-and-appearance-menu-orientation 004](images/menus-menu-styling-and-appearance-menu-orientation004.png)

#### Vertical menu with vertical text

{{source=..\SamplesCS\Menus\Menu\MenuOrientation.cs region=textMenuVertical}} 
{{source=..\SamplesVB\Menus\Menu\MenuOrientation.vb region=textMenuVertical}} 

````C#
radMenu1.Orientation = System.Windows.Forms.Orientation.Vertical;
radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Vertical;
radMenuItemFile.FlipText = true;
radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Vertical;
radMenuItemEdit.FlipText = true;
radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Vertical;
radMenuItemView.FlipText = true;
radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Vertical;
radMenuItemHelp.FlipText = true;

````
````VB.NET
radMenu1.Orientation = System.Windows.Forms.Orientation.Vertical
radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Vertical
radMenuItemFile.FlipText = True
radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Vertical
radMenuItemEdit.FlipText = True
radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Vertical
radMenuItemView.FlipText = True
radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Vertical
radMenuItemHelp.FlipText = True

````

{{endregion}}

# See Also

* [Menu Item Images]({%slug winforms/menus/menu/styling-and-appearance/menu-item-images-%})	
* [Menu Background  and Background Image]({%slug winforms/menus/menu/styling-and-appearance/menu-background--and-background-image%})	
* [Animation Effects]({%slug winforms/menus/menu/styling-and-appearance/animation-effects%})		
