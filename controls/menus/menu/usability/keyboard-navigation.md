---
title: Keyboard Navigation
page_title: Keyboard Navigation - RadMenu
description: RadMenu enables you to integrate attractive and flexible menus on Forms within your Windows applications.
slug: winforms/menus/menu/usability/keyboard-navigation
tags: keyboard,navigation
published: True
position: 0
previous_url: menus-menu-usability-keyboard-navigation
---

# Keyboard Navigation

## Keyboard navigation

You can navigate **RadMenuItems** using the keyboard arrow keys and if a menu item owns the focus, you can use the `Enter` and the `Escape` keys to respectively open or close the sub items for a given item. 

## Accelerators

Accelerators are a fast way to associate a keyboard shortcut to a menu item, for instance the **File** menu item to the shortcut Alt+F. In order to do that precede the *F* letter in the *File* string with the **&** symbol e.g. *&File*. The *F* letter is underscored when visualized and the Alt+F, Alt+f shortcuts are set automatically. These shortcuts work for the whole application no matter whether the menu has the current focus or not. 

## Mnemonics 

You can assign mnemonics to the menu items. For example, you can use the __N__ key to invoke the command associated with the __New__ menu item. To implement that you need to modify the __Text__ property of the *New menu item* by preceding the character __N__ with the symbol __&__:

#### Assigning mnemonics

{{source=..\SamplesCS\Menus\Menu\MenuForm.cs region=mnemonics}} 
{{source=..\SamplesVB\Menus\Menu\MenuForm.vb region=mnemonics}} 

````C#
radMenuItem1.Text = "&New";

````
````VB.NET
radMenuItem1.Text = "&New"

````

{{endregion}} 

>note Mnemonics and accelerators are different features. For example, you need the accelerator Alt+F to open the file menu and the mnemonic N to invoke the event handler associated with the *New* menu item.
>

## F10

You can use the `F10` key to select the first menu item in your application. This is a common functionality in all Windows applications.
