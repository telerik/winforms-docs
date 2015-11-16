---
title: Keyboard Navigation
page_title: Keyboard Navigation | UI for WinForms Documentation
description: Keyboard Navigation
slug: winforms/menus/menu/usability/keyboard-navigation
tags: keyboard,navigation
published: True
position: 0
---

# Keyboard Navigation



## Keyboard navigation

You can navigate RadMenuItems using the keyboard __arrow keys__ and if a menu item owns the focus, you can use the __Enter__ and the __Escape__ keys to respectively open or close the sub items for a given item. 

## Accelerators

Accelerators are a fast way to associate a keyboard shortcut to a menu item, for instance the File menu item to the shortcut ALT+F. In order to do that precede the F letter in the "File" string with the __&__ symbol e.g. "&File". The F letter is underscored when visualized and the ALT+F, ALT+f shortcuts are set automatically. These shortcuts work for the whole application no matter whether the menu has the current focus or not. 

## Mnemonics 

You can assign mnemonics to menu items. For example, you can use the __N__ key to invoke the command associated to the __New__ menu item. To implement that you need to modify the __Text__ property of the *New menu item *by preceding the character __N__ with the symbol __&__:

{{source=..\SamplesCS\Menus\Menu\MenuForm.cs region=mnemonics}} 
{{source=..\SamplesVB\Menus\Menu\MenuForm.vb region=mnemonics}} 

````C#
radMenuItem1.Text = "&New";

````
````VB.NET
radMenuItem1.Text = "&New"

````

{{endregion}} 

>note Mnemonics and accelerators are different features. For example, you need the accelerator ALT+F to open the file menu and the mnemonic N to invoke the event handler associated with the *New* menu item.
>

##  F10

You can use the F10 key to select the first menu item in your application. This is a common functionality in all Windows applications.
