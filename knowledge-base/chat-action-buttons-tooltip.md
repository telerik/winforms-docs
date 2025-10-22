---
title: Setting a Tooltip Text for Action Buttons in RadChat Toolbar
description: Learn how to set tooltip text for action buttons in the toolbar of the RadChat control in UI for WinForms.
type: how-to
page_title: Adding Tooltip Text to Toolbar Buttons in RadChat for WinForms
meta_title: Adding Tooltip Text to Toolbar Buttons in RadChat for WinForms
slug: chat-action-buttons-tooltip
tags: chat, winforms, tooltiptext, toolbar, toolbaractionelement
res_type: kb
ticketid: 1699306
---

## Environment

|Product Version|Product|Author|
|----|----|----|
|2025.3.812|RadChat for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

In this tutorial, we will demonstrate how to set the ToolTipText property of the RaChat control Toolbar action buttons.

## Solution

To set tooltip text for action buttons in the toolbar, access the `ToolbarActionElement` objects inside the `ItemsLayout`. Use the following code snippet:

````C#

foreach (ToolbarActionElement element in this.radChat1.ChatElement.ToolbarElement.ItemsLayout.Children)
{
    element.ToolTipText = "ToolTip Text";
}

````

## See Also

* [RadChat Documentation](https://docs.telerik.com/devtools/winforms/controls/chat/overview)
* [RadChat Toolbar](https://docs.telerik.com/devtools/winforms/controls/chat/toolbar)

