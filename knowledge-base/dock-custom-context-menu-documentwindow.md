---
title: Customizing Context Menu on DocumentWindow Tabs in RadDock
description: Learn how to customize the context menu on DocumentWindow tabs in RadDock, including adding custom menu items and enabling inline editing for tab names.
type: how-to
page_title: How to Customize Context Menu and Enable Inline Editing on DocumentWindow Tabs in RadDock
meta_title: How to Customize Context Menu and Enable Inline Editing on DocumentWindow Tabs in RadDock
slug: customizing-context-menu-documentwindow-tabs-raddock
tags: dock, ui for winforms, contextmenu, documentwindow, tabs, inline-editing
res_type: kb
ticketid: 1705471
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2026.1.210|RadDock for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

With this KB article, we will demonstrate how to customize the context menu that appears when right-clicking on DocumentWindow tabs in RadDock. The goal is to replace the default RadDock context menu with a custom menu containing options such as "Add," "Close," "Lock" and "Edit". The Edit menu option triggers inline editing of the tab name.

## Solution

Use the built-in [ContextMenuService](https://docs.telerik.com/devtools/winforms/controls/dock/architecture-and-features/using-the-contextmenuservice) to customize the context menu for DocumentWindow tabs in RadDock. Follow these steps:

1. Subscribe to the `ContextMenuDisplaying` event from the `ContextMenuService`.
2. Clear the default menu items and add custom ones.
3. Enable inline editing by calling the `BeginEdit()` method on the `TabStripElement` associated with the clicked tab.

Here is the complete implementation:

```C#

public Form1()
{
    InitializeComponent();
    // Enable inline editing for the DocumentTabStrip
    documentTabStrip2.TabStripElement.AllowEdit = true;
    // Subscribe to the ContextMenuDisplaying event
    this.radDock1.GetService<ContextMenuService>().ContextMenuDisplaying += RadDock_ContextMenuDisplaying;
}

private void RadDock_ContextMenuDisplaying(object sender, ContextMenuDisplayingEventArgs e)
{
    // Check if the context menu is for a DocumentWindow tab
    if (e.DockWindow is DocumentWindow)
    {
        // Clear default menu items
        e.MenuItems.Clear();

        // Add custom menu items
        e.MenuItems.Add(new RadMenuItem("Add"));
        e.MenuItems.Add(new RadMenuItem("Close"));
        e.MenuItems.Add(new RadMenuItem("Lock"));

        // Add "Edit" menu item and attach edit action
        RadMenuItem editItem = new RadMenuItem("Edit");
        editItem.Click += (s, args) =>
        {
            var window = (DocumentWindow)e.DockWindow;
            window.DockTabStrip.TabStripElement.BeginEdit();
        };
        e.MenuItems.Add(editItem);
    }
}

```

## See Also

* [Using the ContextMenuService - Telerik Documentation](https://docs.telerik.com/devtools/winforms/controls/dock/architecture-and-features/using-the-contextmenuservice)
