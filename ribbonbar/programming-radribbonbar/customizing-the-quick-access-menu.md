---
title: Customizing the Quick Access Menu
page_title: Customizing the Quick Access Menu | UI for WinForms Documentation
description: Customizing the Quick Access Menu
slug: winforms/ribbonbar/programming-radribbonbar/customizing-the-quick-access-menu
tags: customizing,the,quick,access,menu
published: True
position: 5
---

# Customizing the Quick Access Menu

__Quick Access Toolbar__ is an area of RadRibbonBar above the tabs:<br>![ribbonbar-programming-radribbonbar-customizing-the-quick-access-menu 001](images/ribbonbar-programming-radribbonbar-customizing-the-quick-access-menu001.png)

__Quick Access Toolbar__ can contain the same elements as __RadMenu.__

## Adding Items to Quick Access Toolbar

Add items to __Quick Access Toolbar__ through __RadRibbonBar.QuickAccessToolBarItems__ collection.

This example adds two items. The first is a __RadMenuItem__. The __RadMenuItem__ will not change its display when the user hovers the mouse over it. If you would like that effect, use the custom  item,  __RadButtonElement__, instead. The second item added to the __Quick Access Toolbar__ is a __RadButtonElement__.

In order to capture the click event of the items, add an event handler for another method. In the example, the __NewFile__ method will be run when the user clicks on the __RadMenuItem__. A method called __QuickPrint__ will be run when the user clicks on the __RadButtonElement__.

#### Adding items to QuickAccessToolbar

{{source=..\SamplesCS\RibbonBar\ProgrammingRadRibbonBar\CustomizingTheQuickAccessMenu.cs region=addingItemsToQuickAccessToolBar}} 
{{source=..\SamplesVB\RibbonBar\ProgrammingRadRibbonBar\CustomizingTheQuickAccessMenu.vb region=addingItemsToQuickAccessToolBar}} 

````C#
RadMenuItem mnuQANew = new RadMenuItem();
mnuQANew.Click += new EventHandler(NewFile);
mnuQANew.Text = "Menu item: New File";
radRibbonBar1.QuickAccessToolBarItems.Add(mnuQANew);
RadButtonElement mnuQAPrint = new RadButtonElement();
mnuQAPrint.Click += new EventHandler(QuickPrint);
mnuQAPrint.Text = "Menu item: Quick Print";
radRibbonBar1.QuickAccessToolBarItems.Add(mnuQAPrint);

````
````VB.NET
Dim mnuQANew As New RadMenuItem
AddHandler mnuQANew.Click, AddressOf NewFile
mnuQANew.Text = "Menu item: New File"
RadRibbonBar1.QuickAccessToolBarItems.Add(mnuQANew)
Dim mnuQAPrint As New RadButtonElement
AddHandler mnuQAPrint.Click, AddressOf QuickPrint
mnuQAPrint.Text = "Menu item: Print"
RadRibbonBar1.QuickAccessToolBarItems.Add(mnuQAPrint)

````

{{endregion}}

## Relocating the Quick Access Toolbar

The Quick Access Toolbar can be positioned below the ribbon bar setting the value of __RadRibbonBar1.QuickAccessToolbarBelowRibbon__ to *true*.

__Quick Access ToolBar__ supports mnemonics.
