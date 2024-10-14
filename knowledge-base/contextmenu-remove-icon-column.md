---
title: Removing the Icon Column in RadContextMenu for WinForms
description: Learn how to hide or remove the icon column in RadContextMenu when items do not have icons, for a cleaner UI in WinForms applications.
type: how-to
page_title: How to Hide the Icon Column in RadContextMenu for WinForms Applications
slug: contextmenu-remove-icon-column
tags: menus, winforms, ui, customization
res_type: kb
ticketid: 1627322
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2024.3.806|RadContextMenu for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In some scenarios, RadContextMenu items in WinForms applications do not have icons. The default layout includes a column for icons, which may be unnecessary and consume space. This article demonstrates how to reduce or hide the icon column in RadContextMenu for a cleaner user interface.

## Solution

To remove or hide the icon column in the RadContextMenu, modify the `LeftColumnMinWidth` property of the `RadDropDownMenuLayout`. Setting this property to `0` effectively hides the space reserved for icons. 

Here is a code snippet demonstrating these steps:

````C#

RadDropDownMenuElement element = this.radContextMenu1.DropDown.PopupElement as RadDropDownMenuElement;
RadDropDownMenuLayout layout = element.LayoutPanel as RadDropDownMenuLayout;
layout.LeftColumnMinWidth = 0;

````

This code removes the space on the left side of the drop-down menu that is typically reserved for icons, providing a cleaner look when your menu items do not require icons.

## See Also

- [RadContextMenu Overview](https://docs.telerik.com/devtools/winforms/controls/contextmenu/contextmenu)
- [Customizing RadContextMenu](https://docs.telerik.com/devtools/winforms/controls/contextmenu/customizing-contextmenu)
