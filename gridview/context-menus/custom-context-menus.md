---
title: Custom Context Menus
page_title: Custom Context Menus | RadGridView
description: This article shows how you can change the default context menu of RadGridView with a custom one. 
slug: winforms/gridview/context-menus/custom-context-menus
tags: custom,context,menus
published: True
position: 0
previous_url: gridview-context-menus-custom-context-menus
---

# Custom Context Menus

__RadGridView__ provides a straightforward way to use custom context menus, instead of the default one. This context menu will appear every time the user right-clicks the __RadGridView__, regardless of the element of the control they click.

>caption Figure 1: Custom Context Menu.

![gridview-context-menus-custom-context-menus 001](images/gridview-context-menus-custom-context-menus001.png)

Start by creating the context menu, initializing its items, and subscribing for the events that you want to handle to achieve the desired behavior. Note: You will need Telerik.WinControls.UI namespace added to your "Using" (C#) or "Imports" (VB).

{{source=..\SamplesCS\GridView\ContextMenus\CustomContextMenus.cs region=creatingContextMenu}} 
{{source=..\SamplesVB\GridView\ContextMenus\CustomContextMenus.vb region=creatingContextMenu}} 

````C#
private RadContextMenu contextMenu;
private void Form1_Load(object sender, EventArgs e)
{
    contextMenu = new RadContextMenu();
    RadMenuItem menuItem1 = new RadMenuItem("Item 1");
    menuItem1.ForeColor = Color.Red;
    menuItem1.Click += new EventHandler(menuItem1_Click);
    RadMenuItem menuItem2 = new RadMenuItem("Item 2");
    menuItem2.Click += new EventHandler(menuItem2_Click);
    contextMenu.Items.Add(menuItem1);
    contextMenu.Items.Add(menuItem2);
}

````
````VB.NET
Private contextMenu1 As RadContextMenu
Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    contextMenu1 = New RadContextMenu()
    Dim menuItem1 As New RadMenuItem("Item 1")
    menuItem1.ForeColor = Color.Red
    AddHandler menuItem1.Click, AddressOf rmi1_Click
    Dim menuItem2 As New RadMenuItem("Item 2")
    AddHandler menuItem2.Click, AddressOf rmi2_Click
    contextMenu1.Items.Add(menuItem1)
    contextMenu1.Items.Add(menuItem2)
End Sub

````

{{endregion}} 

Once the menu object has been initialized and populated with menu items, it is ready to be attached to the __RadGridView__. To do that, subscribe to the __ContextMenuOpening__ event and set the context menu to be displayed:

{{source=..\SamplesCS\GridView\ContextMenus\CustomContextMenus.cs region=changeTheContextMenu}} 
{{source=..\SamplesVB\GridView\ContextMenus\CustomContextMenus.vb region=changeTheContextMenu}} 

````C#
void radGridView1_ContextMenuOpening(object sender, ContextMenuOpeningEventArgs e)
{
    e.ContextMenu = contextMenu.DropDown;
}

````
````VB.NET
Private Sub RadGridView1_ContextMenuOpening(ByVal sender As Object, ByVal e As Telerik.WinControls.UI.ContextMenuOpeningEventArgs) Handles RadGridView1.ContextMenuOpening
    e.ContextMenu = contextMenu1.DropDown
End Sub

````

{{endregion}} 



# See Also
* [Conditional Custom Context Menus]({%slug winforms/gridview/context-menus/conditional-custom-context-menus%})

* [Modifying the Default Context Menu]({%slug winforms/gridview/context-menus/modifying-the-default-context-menu%})

