---
title: Menu Orientation
page_title: Menu Orientation
description: Menu Orientation
slug: menus-menu-styling-and-appearance-menu-orientation
tags: menu,orientation
published: True
position: 0
---

# Menu Orientation



The __Orientation__ property of the RadMenu control and the __TextOrientation__ and __FlipText__ properties of the individual RadMenuItems interact to determine the overall layout of the RadMenu.

## Default Menu

The __RadMenu__ default settings are: __Orientation__ = Horizontal, __TextOrientation__ = Horizontal, __FlipText__ = False. The resulting menu is arranged as shown in the figure below:![menus-menu-styling-and-appearance-menu-orientation 001](images/menus-menu-styling-and-appearance-menu-orientation001.png)

#### __[C#] Default orientation__

{{region default}}
	            radMenu1.Orientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemFile.FlipText = false;
	            radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemEdit.FlipText = false;
	            radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemView.FlipText = false;
	            radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemHelp.FlipText = false;
	{{endregion}}



#### __[VB.NET] Default orientation__

{{region default}}
	        radMenu1.Orientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemFile.FlipText = False
	        radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemEdit.FlipText = False
	        radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemView.FlipText = False
	        radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemHelp.FlipText = False
	{{endregion}}



## Horizontal Menu with Vertical Items

The menu can be oriented horizontally with menu items arranged vertically:![menus-menu-styling-and-appearance-menu-orientation 002](images/menus-menu-styling-and-appearance-menu-orientation002.png)

#### __[C#] Vertical text orientation__

{{region textVertical}}
	            radMenu1.Orientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Vertical;
	            radMenuItemFile.FlipText = false;
	            radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Vertical;
	            radMenuItemEdit.FlipText = false;
	            radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Vertical;
	            radMenuItemView.FlipText = false;
	            radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Vertical;
	            radMenuItemHelp.FlipText = false;
	{{endregion}}



#### __[VB.NET] Vertical text orientation__

{{region textVertical}}
	        radMenu1.Orientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Vertical
	        radMenuItemFile.FlipText = False
	        radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Vertical
	        radMenuItemEdit.FlipText = False
	        radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Vertical
	        radMenuItemView.FlipText = False
	        radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Vertical
	        radMenuItemHelp.FlipText = False
	{{endregion}}



## Sideways Menu

The menu can be oriented vertically with menu items arranged horizontally to create a "sideways" menu:![menus-menu-styling-and-appearance-menu-orientation 003](images/menus-menu-styling-and-appearance-menu-orientation003.png)

#### __[C#] Vertical menu with horizontal text__

{{region menuVertical}}
	            radMenu1.Orientation = System.Windows.Forms.Orientation.Vertical;
	            radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemFile.FlipText = false;
	            radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemEdit.FlipText = false;
	            radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemView.FlipText = false;
	            radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemHelp.FlipText = false;
	{{endregion}}



#### __[VB.NET] Vertical menu with horizontal text__

{{region menuVertical}}
	        radMenu1.Orientation = System.Windows.Forms.Orientation.Vertical
	        radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemFile.FlipText = False
	        radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemEdit.FlipText = False
	        radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemView.FlipText = False
	        radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemHelp.FlipText = False
	{{endregion}}



## 

__Stacked Vertical Menu__![menus-menu-styling-and-appearance-menu-orientation 004](images/menus-menu-styling-and-appearance-menu-orientation004.png)

#### __[C#] Vertical menu with vertical text__

{{region menuVertical}}
	            radMenu1.Orientation = System.Windows.Forms.Orientation.Vertical;
	            radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemFile.FlipText = false;
	            radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemEdit.FlipText = false;
	            radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemView.FlipText = false;
	            radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Horizontal;
	            radMenuItemHelp.FlipText = false;
	{{endregion}}



#### __[VB.NET] vertical menu with vertical text__

{{region menuVertical}}
	        radMenu1.Orientation = System.Windows.Forms.Orientation.Vertical
	        radMenuItemFile.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemFile.FlipText = False
	        radMenuItemEdit.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemEdit.FlipText = False
	        radMenuItemView.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemView.FlipText = False
	        radMenuItemHelp.TextOrientation = System.Windows.Forms.Orientation.Horizontal
	        radMenuItemHelp.FlipText = False
	{{endregion}}


