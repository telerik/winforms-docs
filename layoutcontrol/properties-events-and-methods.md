---
title: Properties, Events and Methods
page_title: Properties, Events and Methods | UI for WinForms Documentation
description: Properties, Events and Methods
slug: winforms/layoutcontrol/properties,-events-and-methods
tags: properties,,events,and,methods
published: True
position: 5
---

# Properties, Events and Methods



This article lists the most commonly used properties, methods and events of __RadLayoutControl.__

## Properties

* __AllowCustomize:__ with this property you can disable the customize mode. This way the user will be not able to edit the layout at runtime.

* __AllowHiddenItems:__ By default you can hide the items when you are in customize mode and this can be disabled by setting the property to *false*.

* __AllowResize:__ When this property is set to true the user will be able to resize the control containers at run time – without opening the customize dialog.

* __Items:__ this collection contains the currently added items.

* __DropDownMenu:__ gives access to the default context menu.

* __DragOverlayVisible:__ gets a value which indicates if the [drag overlay]({%slug winforms/layoutcontrol/customize-layout-mode%}) is visible.

* __CustomizeDialog:__ gives you access to the customize dialog instance. You can use it to assign custom dialog as well.

## Methods

* __AddItem:__ Ads item to the layout. You can directly pass an item or a control instance.

* __RemoveItem:__ Removes an item. You can pass the item or the contained control as parameter.

* __HideItem:__ Hides an item, you can pass the item or the contained control as parameter.

* __ShowCustomizeDialog:__ Shows the customize dialog.

* __CloseCustomizeDialog:__ Closes the customize dialog.

* __GetAllItems:__ Returns IEnumerable collection of all the items. With the parameter you can include or exclude the hidden ones. This includes items nested within groups or tabbed groups.

* __FindItemByControl:__ Returns the item in which specific control is hosted in.

## Events

* __StructureChanged:__ Fires when the item position in the control is changed.
            
