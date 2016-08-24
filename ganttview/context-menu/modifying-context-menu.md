---
title: Modifying context menu
page_title: Modifying context menu | RadGanttView
description: Modifying context menu
slug: winforms/ganttview-/context-menu/modifying-context-menu
tags: modifying,context,menu
published: True
position: 2
previous_url: ganttview-context-menu-modifying-context-menu
---

# Modifying context menu

When a context menu in __RadGanttView__ is about to be opened the __ContextMenuOpening__ event is fired. This event allows you to customize the items shown in the context menu.

The event arguments have the following properties:

* __Item__ – the item for which a menu is about to be opened.

* __Menu__ – the menu that will be shown.

* __Cancel__ – allows you to stop the showing of the menu. Set this property to true to cancel the opening.

Here is an example which demonstrates how to change the progress step of the default context menu.
         
{{source=..\SamplesCS\GanttView\ContextMenus\ModifyingContextMenu.cs region=ModifyingContextMenu}} 
{{source=..\SamplesVB\GanttView\ContextMenus\ModifyingContextMenu.vb region=ModifyingContextMenu}} 

````C#
private void radGanttView1_ContextMenuOpening(object sender, GanttViewContextMenuOpeningEventArgs e)
{
    GanttViewDefaultContextMenu menu = e.Menu as GanttViewDefaultContextMenu;
    if (menu != null)
    {
        menu.ProgressStep = 25;
    }
}

````
````VB.NET
Private Sub radGanttView1_ContextMenuOpening(sender As Object, e As GanttViewContextMenuOpeningEventArgs)
    Dim menu As GanttViewDefaultContextMenu = TryCast(e.Menu, GanttViewDefaultContextMenu)
    If menu IsNot Nothing Then
        menu.ProgressStep = 25
    End If
End Sub

````

{{endregion}} 

![ganttview-context-menu-modifying-context-menu 001](images/ganttview-context-menu-modifying-context-menu001.png)
