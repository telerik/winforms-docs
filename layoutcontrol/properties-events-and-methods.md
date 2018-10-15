---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadLayoutControl
description: This article lists the most commonly used properties, methods and events of RadLayoutControl.
slug: winforms/layoutcontrol/properties-methods-and-events
tags: properties,,events,and,methods
published: True
position: 4
previous_url: layoutcontrol-properties-events-and-methods
---

# Properties

|Property|Description|
|------|------|
|__AllowCustomize__| With this property you can disable the customize mode. This way the user will be not able to edit the layout at runtime.|
|__AllowHiddenItems__|By default you can hide the items when you are in customize mode and this can be disabled by setting the property to *false*.|
|__AllowResize__|When this property is set to true the user will be able to resize the control containers at run time – without opening the customize dialog.|
|__Items__|This collection contains the currently added items.|
|__DropDownMenu__|Gives access to the default context menu.|
|__DragOverlayVisible__|Gets a value which indicates if the [drag overlay]({%slug winforms/layoutcontrol/customize-layout-mode%}) is visible.|
|__CustomizeDialog__|Gives you access to the customize dialog instance. You can use it to assign custom dialog as well.|

# Methods

|Method|Description|
|------|------|
|__AddItem__|Adds item to the layout. You can directly pass an item or a control instance.|
|__RemoveItem__ |Removes an item. You can pass the item or the contained control as parameter.|
|__HideItem__|Hides an item, you can pass the item or the contained control as parameter.|
|__ShowCustomizeDialog__|Shows the customize dialog.|
|__CloseCustomizeDialog__|Closes the customize dialog.|
|__GetAllItems__|Returns IEnumerable collection of all the items. With the parameter you can include or exclude the hidden ones. This includes items nested within groups or tabbed groups.|
|__FindItemByControl__|Returns the item in which specific control is hosted in.|

# Events

|Event|Description|
|------|------|
|__StructureChanged__|Fires when the item position in the control is changed.|

## RadLayoutControlGroupItem Events

|Event|Description|
|------|------|
|Expanded|Occurs when the group item is expanded.|
|Collapsed|Occurs when the group item is collapsed.|
|Expanding|Occurs when the group item is about to be expanded.|
|Collapsing|Occurs when the group item is about to be collapsed.|

# See Also

* [Properties](http://docs.telerik.com/devtools/winforms/api/html/properties_t_telerik_wincontrols_ui_radlayoutcontrol.htm)
* [Methods](http://docs.telerik.com/devtools/winforms/api/html/methods_t_telerik_wincontrols_ui_radlayoutcontrol.htm)
* [Events](http://docs.telerik.com/devtools/winforms/api/html/events_t_telerik_wincontrols_ui_radlayoutcontrol.htm)

