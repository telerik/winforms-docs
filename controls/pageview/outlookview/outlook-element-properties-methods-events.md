---
title: Outlook Element Properties, Methods and Events
page_title: Outlook Element Properties, Methods and Events | RadPageView
description: RadPageView is yet another great addition to the Telerik UI for for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/outlookview/outlook-element-properties-methods-events
tags: outlookview
published: True
position: 3
---

# Outlook Element Properties, Methods and Events

You can use the following properties, methods and events to change the behavior of the Outlook View:

## Properties

|RadPageViewOutlookElement's Properties|Description|
|----|----|
|**OverflowItemsContainer**|Gets the element that represents the container which holds the buttons shown when items in the stack are hidden by using the overflow grip.|
|**OverflowGrip**|Gets the element which represents the grip which can be dragged to adjust the count of visible items in the stack.|
|**ShowMoreButtonsImage**|Gets or sets the image shown on the item in the overflow drop-down that is used to show more buttons in the control.|
**ShowFewerButtonsImage**|Gets or sets the image shown on the item in the overflow drop-down that is used to show fewer buttons in the control.|

## Methods

|RadPageViewOutlookElement's Methods|Description|
|----|----|
|**GetHiddenItems**|Gets an array containing the items that are currently hidden by using the overflow grip.|
|**GetUncheckedItems**|Gets an array containing the items that are currently unchecked by using the overflow menu.|
|**UncheckItem**|Makes an item invisible. The item will appear as unchecked in the overflow menu.|
|**CheckItem**|Makes an item visible. The item will appear as checked in the overflow menu.|
|**DragGripDown**|Drags the overflow grip down to hide the first possible visible item. *True* if the drag operation succeeds, otherwise *false*.|
|**DragGripUp**|Drags the overflow grip up to show the first possible hidden item. *True* if the drag operation succeeds, otherwise *false*.|
|**ShowItems**|Shows a given amount of items from the hidden items in the RadPageViewOutlookElement starting from the bottom part of the stack.|
|**HideItems**|Hides a given amount of items from the visible items in the RadPageViewOutlookElement starting from the bottom part of the stack.|

## Events

|RadPageViewOutlookElement's Events|Description|
|----|----|
|**ItemAssociatedButtonClicked**|Fires when the user clicks on a button associated with a RadPageViewItem instance. This buttons is shown when the item is collapsed by using the overflow grip.|
|**ItemShown**|Fires when an item is shown in the **RadPageViewOutlookElement**|
|**ItemCollapsed**|Fires when an item is collapsed in the RadPageViewOutlookElement.|
|**ItemChecked**|Fires when an item is checked in the overflow drop-down menu of the RadPageViewOutlookElement.|
|**ItemUnchecked**|Fires when an item is unchecked in the overflow drop-down menu of the RadPageViewOutlookElement.|

# See Also

* [Using The Overflow Grip]({%slug winforms/pageview/outlookview/using-the-overflow-grip%})	
* [Using The Overflow Menu]({%slug winforms/pageview/outlookview/using-the-overflow-menu%})	
* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpageviewoutlookelement.html#properties)	
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpageviewoutlookelement.html#methods)	
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radpageviewoutlookelement.html#events)	
