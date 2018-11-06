---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadMenu
description: RadMenu enables you to integrate attractive and flexible menus on Forms within your Windows applications.
slug: winforms/menus/menu/properties-methods-events
tags: menu
published: True
position: 8 
---

# Properties

|Property|Description|
|----|----|
|**StretchItems**|Indicates whether the menu items should be stretched to fill the available space.|
|**SystemKeyHighlight**|Gets or sets whether the `Alt` or `F10` keys can be used to highlight the menu.|
|**MenuElement**|Gets the instance of RadMenuElement wrapped by this control. RadMenuElement is the main element in the hierarchy tree and encapsulates the actual functionality of RadMenu.|
|**Items**|Gets the collection that stores the items in RadMenu.|
|**AllowMerge**|Gets or sets whether the merging is allowed.|
|**Orientation**|Get or sets the menu orientation.|
|**AllItemsEqualHeight**|Gets or sets whether all items will appear with the same size (the size of the highest item in the collection).|
|**DropDownAnimationEnabled**|Gets or sets a value indicating whether the Drop Down animation will be enabled when it shows.|
|**DropDownAnimationEasing**|Gets or sets the type of the Drop Down animation.|
|**DropDownAnimationFrames**|Gets or sets the number of frames that will be used when the Drop Down is being animated.|
|**IsMainMenu**|Defines whether RadMenu handles the MDI menu functionality.|

The **RadMenuElement's** properties are listed below:

|Property|Description|
|----|----|
|**ItemsLayout**|Gets an instance of the WrapLayoutPanel class that represents the layout panel in which the menu items reside.|
|**MenuFill**|Gets an instance of the FillPrimitive class that represents the menu background fill.|
|**MenuBorder**|Gets an instance of the **BorderPrimitive** class that represents the border of the menu.|

# Methods

|Method|Description|
|----|----|
|**MergeMenu**|Merges the menu with the passed RadMenu as a parameter.|
|**UnmergeMenu**|Unmerges the menu with the passed RadMenu as a parameter.|

# Events

|Event|Description|
|----|----|
|**OrientationChanged**|Fires when the **Orientation** is changed.|
|**AllItemsEqualHeightChanged**|Fires when the **AllItemsEqualHeight** is changed.|
|**TextOrientationChanged**|Fires when the MenuElement.**TextOrientation** is changed.|


# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_ui_radmenu.htm)
* [Methods](http://docs.telerik.com/devtools/winforms/api/html/methods_t_telerik_wincontrols_ui_radmenu.htm)
* [Events](http://docs.telerik.com/devtools/winforms/api/html/events_t_telerik_wincontrols_ui_radmenu.htm)
