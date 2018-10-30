---
title: RadMenuItem
page_title: RadMenuItem | RadMenu
description: RadMenu enables you to integrate attractive and flexible menus on Forms within your Windows applications.
slug: winforms/menus/menu/working-with-radmenu-items/radmenuitem
tags: radmenuitem
published: True
position: 0
previous_url: menus-menu-working-with-radmenu-items-radmenuitem
---

# RadMenuItem

The following controls are used to create a menu structure:

* **RadMenuItem** 

* **RadMenuHeaderItem** 

* **RadMenuComboItem** 

* **RadMenuSeparatorItem** 

* **RadMenuContentItem** 

## RadMenuItem

The **RadMenuItem** represents a standard menu item. Some of its properties include:

|Properties|Description|
|----|----|
|__AutoSizeMode__|Indicates how the menu item will be sized and can be *FitToAvailableSize*, *WrapAroundChildren* or *Auto*. |
|__AngleTransform__|Sets the angle offset from horizontal with which the item will be displayed. |
|__CommandBinding__|Allows you to configure keyboard shortcuts to fire a given menu item. See the [Getting Started]({%slug winforms/menus/menu/getting-started%}) topic for an example. |
|__DisplayStyle__|Lets you choose whether to show an image, text, or both on the item. |
|__DescriptionText__|Contains the text for the description that appears just below the __Text__. __DescriptionFont__ controls the font characteristics of the __DescriptionText__ display. See the example menu item in the figure below. </br> ![menus-menu-working-with-radmenu-items-radmenuitem 001](images/menus-menu-working-with-radmenu-items-radmenuitem001.png)|
|__Enabled__|When set to *false* shows the menu item as grayed out and does not react to mouse clicks. To allow non-standard painting when the menu item is not enabled set the __UseDefaultDisabledPaint__ property to *false* and then use the __Visual Style Builder__ to customize the appearance of this state.|
|__FlipText__|Flips the text of the item vertically if set to *true*. |
|__BackColor__ and __ForeColor__|Set the colors of the background and text.|
|__Font__|Sets the font and size of the item text. |
|__HintText__|Sets the text to appear at the right side of the menu item, such as Ctrl+N for New. |
|__Image__, __ImageIndex__, and __ImageKey__|Let you assign an image to display on the item. |
|__IsChecked__|Controls whether a check mark is displayed on the item. |
|__TextImageRelation__|Controls the relationship between the text and image displayed on the item. |
|__Text__|Specifies the text to show on the item. |
|__TextOrientation__|Allows you to choose vertical or horizontal text display. |
|__CheckOnClick__|Indicates whether selecting the item should set a check mark.|
|__HasTwoColumnDropDown__|Lets you add a drop-down menu that contains two columns. |
|__IsMainMenuItem__|Indicates that the menu item is an item on the main menu, rather than an item on a drop-down menu. |
|__PopupDirection__|Indicates whether the direction in which the drop-down menu will open will be to the left, right, up, or down.|
|__ShowArrow__|Displays an arrow button on the drop-down menu. |
|__StringAlignment__|Formats the alignment of the text string so it is positioned near, center, or far from the left border of the menu item. |
  

## RadMenuComboItem

The __RadMenuComboItem__ allows you to put a drop-down list on a menu. To add items to the combo box work with the __Items__ collection of the RadMenuComboItem.__ComboBoxElement__ property. Since the **ComboBoxElement** returns a **RadDropDownListElement**, you can also use data binding to put items in the drop-down list from any data source.

## RadMenuContentItem

The __RadMenuContentItem__ is a container control that allows you to build up custom menu items from other controls. You can assign any **RadElement** based control to the __ContentElement__ property of a **RadMenuContentItem**. See [Nesting Controls in Menu Items]({%slug winforms/menus/menu/working-with-radmenu-items/nesting-controls-in-menu-items%}) for an example.

## RadMenuSeparatorItem

The __RadMenuSeparatorItem__ is used to add a horizontal line for visual separation between successive items on a menu.

>tip __RadMenuSeparatorItem__ defines a __TextVisibility__ property and it needs to be set to *Visible* in order the text set to the item to be displayed.


# See Also

* [Adding and Removing Items]({%slug winforms/menus/menu/working-with-radmenu-items/adding-and-removing-items%})
* [Nesting Controls in Menu Items]({%slug winforms/menus/menu/working-with-radmenu-items/nesting-controls-in-menu-items%})	
* [RadMenuItem Events]({%slug winforms/menus/menu/working-with-radmenu-items/radmenuitem-events%})	
* [Assign Shortcuts to Menu Items]({%slug winforms/menus/menu/working-with-radmenu-items/assign-shortcuts-to-menu-items%})	
