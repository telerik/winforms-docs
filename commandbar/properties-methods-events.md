---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | UI for WinForms Documentation
description: RadCommandBar is a fully theme-able tool strip that provides unprecedented flexibility
slug: winforms/commandbar/properties-methods-events
tags: structure
published: True
position: 5
---

# Properties

## CommandBar

|Property|Description|
|----|----|
|Dock|Gets or sets which RadCommandBar borders are docked to its parent control and determines how a control is resized with its parent.|
|CustomizeContextMenu| Gets the RadDropDownMenu opened upon right click on the control.|
|DragSize|Gets or sets the size in pixels when current strip is being Drag and Drop in next or previous row.|
|Orientation|Gets or sets the orientation of the command bar - could be horizontal or vertical.This property is controlled by the Dock property of the RadCommandBar control.|
|Rows|Gets the rows of the commandbar.|

## CommandBarStripElement

|Property|Description|
|----|----|
|FloatingForm|Gets the form in which the items are placed where the strip is floating.|
|ItemsLayout|Gets the layout panel in which the items are arranged.|
|OverflowMenuMinSize|Gets or sets Overflow menu single strip minimum size.|
|OverflowMenuMaxSize|Gets or sets Overflow menu single strip maximum size.|
|DesiredLocation|Gets or sets the desired location of the strip element.|
|EnableDragging|Gets or sets if the strip can be dragged.|
|EnableFloating|Gets or sets if the strip can be dragged.|
|Delta|Gets the delta of the drag.|
|IsDrag|Gets whether the strip is beeing dragged.|
|VisibleInCommandBar|Gets or sets whether the strip is visible in the command bar.|
|Orientation|Gets or sets the elements orientation inside the line element.|
|HasOverflowedItems|Gets whether the strip has items in its overflow panel.|
|Grip|Gets or sets the RadCommandBarGrip element of the strip.|
|OverflowButton|Gets or sets the RadCommandBarOverflowButton element of the strip.|

# Events

## CommandBar

|Event|Description|
|----|----|
|OrientationChanging|Occurs before the orientation is changed.|
|OrientationChanged|Occurs after the orientation is changed.|
|FloatingStripCreating|Occurs before a floating form is created.|
|FloatingStripDocking|Occurs before a floating strip is docked.|
|FloatingStripCreated|Occurs when a floating strip is created.|
|FloatingStripDocked|Occurs when a floating strip is docked.|

## CommandBarStripElement

|Event|Description|
|----|----|
|BeginDrag|Occurs before dragging is started.|
|Drag|Occurs when item is being dragged.|
|EndDrag|Occurs when item is released and dragging is stopped.|
|ItemsChanged|Occurs when Items collection is changed.|
|ItemClicked|Occurs when item is clicked.|
|ItemOverflowed|Occurs when item is moved to the overflow panel.|
|ItemOutOfOverflow|Occurs when item is moved out from the overflow panel.|
|OverflowMenuOpening|Occurs before overflow menu is opened.|
|OverflowMenuOpened|Occurs when overflow menu is opened.|
|OverflowMenuClosing|Occurs before overflow menu is opened.|
|OverflowMenuClosed|Occurs when overflow menu is opened.|
|VisibleInCommandBarChanging|Occurs before VisibleInCommandBar property is changed.|
|VisibleInCommandBarChanged|Occurs when VisibleInCommandBar property is changed.|
|ItemVisibleInStripChanging|Occurs before item is moved in or out of the UncheckedItems collection.|
|ItemVisibleInStripChanged|Occurs when item is moved in or out of the UncheckedItems collection.|
|OrientationChanged|Occurs when Orientation property is changed.|
|OrientationChanging|Occurs before Orientation property is changed.|
|LineChanging|Occurs before the command strip moves in other line.|
|LineChanged|Occurs when the command strip moves in other line.|