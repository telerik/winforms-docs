---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - WinForms OfficeNavigationBar Control
description: Get familiar with the public API that WinForms OfficeNavigationBar offers.   
slug: officenavigationbar-properties-methods-events
tags: officenavigationbar
published: True
position: 4 
CTAControlName: OfficeNavigationBar
---

# Properties, Methods and Events for RadStepProgressBar

## RadOfficeNavigationBar Properties  

|Property|Description|
|----|----|
|**OfficeNavigationBarElement**|Gets the RadOfficeNavigationBarElement that represents the main element of the control.|
|**OverflowItem**|Gets the RadOfficeNavigationBarOverflowItem which exposes the hidden items on click.|
|**OverflowItemPosition**|Gets or sets the position of the __OverflowItem__. The available options are __Front__ (before the items) and __End__ (after the items).
|**ContextMenuDropDown**|Gets the context menu that is opened when the __OverflowItem__ is clicked.
|**ShowNavigationOptionsMenuItem**|Gets or sets a value indicating whether to show the navigation options menu item when context menu is opened.|
|**NavigationOptionsMenuItem**|Gets or sets the navigation options menu item.|
|**MenuSeparator**|Gets or sets the navigation options menu separator item.|
|**VisibleItemsCount**||Gets or sets the items that are visible on the strip. WHen set to lower value than the count of items, the remaining items are displayed on an OverflowItem is clicked. If this property is not set it returns the count of items.|


## RadOfficeNavigationBarElement's Properties

|Property|Description|
|----|----|
|**OverflowItem**|Gets the RadOfficeNavigationBarItem which exposes the hidden items on click.|
|**ContextMenu**|Gets the context menu.|
|**ShowNavigationOptionsMenuItem**|Gets or sets a value indicating whether to show the navigation options menu item when context menu is opened.|
|**NavigationOptionsMenuItem**|Gets or sets the navigation options menu item.|
|**MenuSeparator**|Gets or sets the navigation options menu separator item.|
|**VisibleItemsCount**|Gets or sets the items that are visible on the strip. If this property is not set it returns the count of items.|
|**UseCompactFont**|Gets or sets a value indicating whether to use compact or large font for the items.|
|**ItemsDisplayStyle**|Gets or sets the display style of the items.|
|**OverflowItemPosition**|Gets or sets the position of the OverflowItem. The available options are __Front__ (before the items) and __Back__ (after the items).|
|**EnablePeekPopup**|Gets or sets a value indicating whether a peek pop-up can be shown when an item is hovered with the mouse. The content of the peek pop-up needs to be set in the __RadPageViewElement.PeekPopupOpening__ event.|
|**PeekPopup**|Gets the peek pop-up, which is represented by a RadCallout.|
|**PeekPopupInterval**|Gets or sets the interval needed to show a PeekPopup after a RadPageViewItem is hovered.|

>RadOfficeNavigationBar derives from RadPageView control and inherits most of its events and methods.

## RadOfficeNavigationBarElement's Events

|Event|Description|
|----|----|
|**PeekPopupOpening**|Fired when the peek pop-up is about to be shown. In this event you need to populate the content of the peek pop-up, otherwise it will not be displayed.|
|**PeekPopupClosed**|Fired when the peek pop-up has been closed.|

## RadOfficeNavigationBarElement's Methods

|Method|Description|
|----|----|
|**ShowPeekPopup**|Shows a peek pop-up over a RadPageViewItem. The content of the peek pop-up needs to be set in the __RadPageViewElement.PeekPopupOpening__ event.|

# See Also

* [Getting Started]({%slug officenavigationbar-getting-started%})
* [Design Time]({%slug officenavigationbar-design-times%})
 
        
