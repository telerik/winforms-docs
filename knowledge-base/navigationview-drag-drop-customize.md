---
title: Preventing Nested Drag and Drop in NavigationView Pages
description: Learn how to prevent nested drag and drop and pin a footer page in the RadNavigationView for UI for WinForms.
type: how-to
page_title: How to Avoid Nested Drag and Pin Footer Page in RadNavigationView
meta_title: How to Avoid Nested Drag and Pin Footer Page in RadNavigationView
slug: navigationview-drag-drop-customize
tags: navigationview, ui-for-winforms, drag-drop, footer, custom-drag-drop-service
res_type: kb
ticketid: 1691649
---

|Product Version|Product|Author|
|----|----|----|
|2025.2.520|NavigationView for WinForms|[Dinko Krastev](https://www.telerik.com/blogs/author/dinko-krastev)|

## Description

By default, the RadNavigationView control allows you to reorder the navigation view items according to your preferences. The drag-drop behavior of the RadNavigationView control is achieved by the RadPageViewDragDropService, which can be accessed by the RadNavigationView1.NavigationViewElement.ItemDragService property. If customization is required, we will need to create  a custom class that derives from RadPageViewDragDropService and override the methods of the drag-drop service.

In the following scenario, the drag-drop should be performed on the first level only, thus disabling the option to have nested drag-drop. Also, the footer item should not be draggable. 

## Solution

To achieve this, create a custom drag-and-drop service and override specific methods. Follow these steps:

1. **Prevent Nested Dragging and Dropping:**  
   Implement a custom class that derives from `RadPageViewDragDropService`. Override the `CanDragOver` method to restrict drop positions and prevent nested pages.

````C#

public class CustomDragDropService : RadPageViewDragDropService
{
    public CustomDragDropService(RadPageViewElement owner) : base(owner)
    {
    }

    protected override bool CanDragOver(RadPageViewItem pageViewItem)
    {
        if (!(pageViewItem is RadPageViewNavigationViewItem radPageViewNavigationViewItem))
        {
            return true;
        }

        if (!radPageViewNavigationViewItem.Enabled || !radPageViewNavigationViewItem.AllowDrop)
        {
            return false;
        }

        if (radPageViewNavigationViewItem.PinPosition == NavigationViewItemPinPosition.Footer)
        {
            return false;
        }

        DropPosition dropPosition = GetDropPosition(radPageViewNavigationViewItem, base.DropLocation);
        if (dropPosition == DropPosition.AsChildNode)
        {
            return false;
        }

        return base.CanDragOver(pageViewItem);
    }

    protected internal virtual DropPosition GetDropPosition(RadPageViewNavigationViewItem radPageViewNavigationViewItem, Point dropLocation)
    {
        int num = radPageViewNavigationViewItem.Size.Height / 3;
        int y = dropLocation.Y;
        if (y < num)
        {
            return DropPosition.BeforeNode;
        }

        if (y >= num && y <= num * 2)
        {
            return DropPosition.AsChildNode;
        }
        return DropPosition.AfterNode;
    }
}

````

2. **Disable Dragging for Footer Page:**  
   Override the `OnPreviewDragStart` method to check the `PinPosition` property. Cancel the drag operation for the footer page.

````C#

protected override void OnPreviewDragStart(PreviewDragStartEventArgs e)
{
    var radPageViewNavigationViewItem = e.DragInstance as RadPageViewNavigationViewItem;
    if (radPageViewNavigationViewItem != null)
    {
        if (radPageViewNavigationViewItem.PinPosition == NavigationViewItemPinPosition.Footer)
        {
            e.CanStart = false;
        }
    }
    base.OnPreviewDragStart(e);
}

````

3. **Assign Custom Drag-and-Drop Service:**  
   Set the custom service to the RadNavigationView control.

````C#

radNavigationView1.NavigationViewElement.ItemDragService = new CustomDragDropService(radNavigationView1.NavigationViewElement);

````

## See Also

* [RadNavigationView Overview Documentation](https://docs.telerik.com/devtools/winforms/controls/navigationview/overview)
* [RadPageViewDragDropService API Reference](https://docs.telerik.com/devtools/winforms/api/html/T_Telerik_WinControls_UI_RadPageViewDragDropService.htm)
