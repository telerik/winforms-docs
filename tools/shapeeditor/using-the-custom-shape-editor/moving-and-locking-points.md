---
title: Moving and Locking Points
page_title: Moving and Locking Points | UI for WinForms Documentation
description: Moving and Locking Points
slug: winforms/tools/shapeeditor/using-the-custom-shape-editor/moving-and-locking-points
tags: moving,and,locking,points
published: True
position: 1
previous_url: tools-shapeeditor-using-the-custom-shape-editor-moving-and-locking-points
---

# Moving and Locking Points

## Moving Points

Points are the basic unit of functionality in the Shape Editor. Points on the drawing surface are represented by black dots for the end points and red dots for the control points of Bezier curves. To move points:

* __Using the mouse:__ Select the point and drag it to your desired position.  You can snap a point to one of the corners of the rectangle defined by your shape's dimensions.  Select a point and right-click it to access the shortcut menu. Expand the Snap to item and choose a corner. This action will move your point to the selected corner and set the point's Locked property to True.

* __Using the Property Pane__: For more precise control of point coordinates you can edit the X and Y properties of the point by using the [property pane]({%slug winforms/tools/shapeeditor/shape-editor-user-interface%}). Select the point you wish to edit in order to open its property pane. Enter a numeric value in the X property to control the horizontal position, and enter a numeric value in the Y property to control the vertical position

## Locking Points

Setting the locked property of a point to true will prevent you from using the mouse to drag points to new positions. Locking a point will not prevent you from using the Snap to menu or editing the X and Y properties to alter a point's position.

To lock a point, select the point and right-click on it to access the shortcut menu. On the shortcut menu select __Locked__. This action will place a check beside the menu item and lock the point. Click __Locked__ again to unlock the point. You can also select True or False from the drop-down menu for the Locked property in the [property pane]({%slug winforms/tools/shapeeditor/shape-editor-user-interface%}).
