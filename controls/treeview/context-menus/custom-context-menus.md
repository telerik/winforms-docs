---
title: Custom Context Menus
page_title: Custom Context Menus - RadTreeView
description: Custom context menus can be added to a RadTreeView or to each individual node. 
components: ["treeview"]
slug: winforms/treeview/design-time/context-menus
tags: context,menus
published: True
position: 2
previous_url: treeview-design-time-context-menus
---

# Custom Context Menus

In Progress® Telerik® UI for WinForms, add a context menu to a `RadTreeView` or to individual nodes. A node's context menu takes precedence over the one assigned to the `RadTreeView`. To add a context menu to a `RadTreeView`, drag a `RadContextMenu` component onto the form, create a `RadContextMenuManager`, and assign the menu to the control's `RadContextMenu` property.

You can assign a `RadContextMenu` instance to an individual node without a `RadContextMenuManager`. For details, see [assigning a RadContextMenu to Telerik and non-Telerik controls]({%slug winforms/menus/contextmenu/assign-radcontextmenu-to-telerik-and-non-telerik-controls%}). Use the **RadTreeView Property Builder**:

1. Drag a `RadTreeView` control onto the form.

2. Drag a `RadContextMenu` component onto the form and add several `RadMenuItems` to it.

3. Click the **Smart-Tag** of the `RadContextMenu` instance, then select **Add ContextMenuManager** from the **Action Menu**. The designer adds a `RadContextMenuManager` to the form and makes the `RadContextMenu` property available on the `RadTreeView`.

4. Set the `RadTreeView`'s `RadContextMenu` property to the first `RadContextMenu` instance.

5. Drag another `RadContextMenu` onto the form and add several `RadMenuItems` to it.

6. Open the **RadTreeView Property Builder**. For each desired node, set its `ContextMenu` property to the second `RadContextMenu` instance.

7. Run the project. Right-click a `RadTreeNode` to display its context menu. Right-click elsewhere on the `RadTreeView` to display the first context menu. The image shows both menus.
    
    ![RadTreeView displaying one context menu for a node and another for the control](images/treeview-design-time-context-menus001.png)



## See Also
* [Default Context Menu]({%slug winforms/treeview/context-menus/default-context-menu%})

* [Modifying the Default Context Menu]({%slug winforms/treeview/context-menus/modifying-the-default-context-menu%})
