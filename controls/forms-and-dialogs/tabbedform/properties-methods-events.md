---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - RadTabbedForm
description:  RadTabbedForm allows to display tab items directly in the title bar  
slug: radtabbedform-properties
tags: radtabbedform
published: True
position: 3
---

**RadTabbedForm** is internally working with a tabbed form control which is interacting with the tabs. Most of the functionality of the form is defined and exposed by the **RadTabbedFormControl**.

# RadTabbedForm

## Properties

|__Property__|__Description__|
|---|---|
|__AllowAero__|Gets or sets a boolean value that determines whether the Windows title bar styles are enabled.|
|__FormElement__| Gets the main element of the RadTabbedForm.|
|__TabbedFormControl__| Gets the RadTabbedFormControl which is used internally by the form responsible for working with the tabs.|

## Events 

|__Event__|__Description__|
|---|---|
|__TabbedFormControlCreating__|Raised while creating the RadTabbedFormControl. The event is raised only when the form is created at run-time.|

# RadTabbedFormControl

## Properties

|Property|Description|
|------|------|
|__SelectedTab__|Gets or sets the RadTabbedFormControlTab instance that is currently selected.|
|__Tabs__|Gets the collection of tabs for this view.|
|__CausesValidation__|Gets or sets a flag indicating whether the control causes validation|
|__LeftItemsContainer__|Gets the left LeftItemsContainer element|
|__LeftItems__|Gets the collection of the left items.|
|__RightItemsContainer__|Gets the right RightItemsContainer element|
|__RightItems__|Gets the collection of the right items.|
|__TabbedFormControlTabsElement__|Gets the TabbedFormControlTabsElement element|
|__TabbedFormControlElement__|Gets the instance of TabbedFormControlElement wrapped by this control. TabbedFormControlElement is the main element in the hierarchy tree and encapsulates the actual functionality of RadTabbedFormControl.|
|__MinimizeButton__|Gets or sets if the tabbed form has minimize button in its caption|
|__MaximizeButton__|Gets or sets if the tabbed form has maximize button in its caption|
|__CloseButton__|Gets or sets if the tabbed form has close button in its caption|
|__BackColor__|RadTabbedFormControl consists of multiple visual elements and separate settings are provided to customize their appearance. Current BackColor property might be ignored.|
|__ForeColor__|RadTabbedFormControl consists of multiple visual elements and separate settings are provided to customize their appearance. Current ForeColor property might be ignored.|
|__CaptionHeight__|Gets or sets the height of the title bar.|
|__ShowText__|Show or hides the text in the title bar.|
|__ShowTabCloseButton__|Shows or hides the close button in each tab.|
|__ShowTabPinButton__|Shows or hides the pin button in each tab.|
|__ShowNewTabButton__|Shows or hides the new tab located after all tabs.|
|__PinnedItemsPosition__|Set the pinned tabs position.|
|__MinimumTabWidth__|Gets or sets the minimum width of the tabs.|
|__TabSpacing__|Gets or set the space between the tabs.|
|__ItemDragMode__|Gets or sets the mode that controls item drag operation within the element.|

# Events

|Event|Description|
|------|------|
|__ItemDropping__|Occurs when an item is about to be dropped over another item.|
|__ItemDropped__|Occurs when an item was dropped over another item.|
|__ItemCreating__|Raised when page item is about to be created.|
|__ContextMenuOpening__|Raised when page item is about to be created.|
|__TabAdding__|Raised when a new tab is about to be added to the control. Cancelable.|
|__TabAdded__|Raised when a new tab has been successfully added to the control.|
|__TabRemoving__|Raised when a tab is about to be removed from the control. Cancelable.|
|__TabRemoved__|Raised when a tab has been successfully removed from the control.|
|__TabItemIndexChanging__|Raised when a page is about to change its index. Cancelable.|
|__TabItemIndexChanged__|Raised when a tab's index has been successfully changed.|
|__TabsClearing__|Raised when all tabs are about to be removed from the control. Cancelable.|
|__TabsCleared__|Raised when all tabs have been successfully removed from the control.|
|__SelectedTabChanging__|Raised when currently selected tab has changed.|
|__SelectedTabChanged__|Raised when currently selected tab has changed.|
|__NewTabRequested__|Raised when a new tab is requested.|

# RadTabbedFormControlElement

## Properties
|Property|Description|
|------|------|
|__ContentArea__|Gets the element which represents the content area of the tab view.|
|__CaptionFill__|Gets the instance that represents the fill of the ribbon's caption.|
|__CaptionBorder__|Gets the instance that represents the border of the ribbon's caption.|
|__SelectedItem__|Gets or sets the currently selected item in the view.|
|__NewItem__|Gets the item which stands for adding new tabs on click.|
|__Items__|Gets all the items currently present within this element.|
|__PinnedItems__|Gets all the pinned items.|
|__ItemDragService__|Gets or sets the RadDragDropService instance which handles item drag requests.|
|__ItemDragHint__|Gets or sets the RadImageShape instance which describes the hint that indicates where an item will be dropped after a drag operation.|

## Methods

|Method|Description|
|------|------|
|__ItemFromPoint__|Gets the item that contains the porvided point (in control's client coordinates).|

 
## Events

|__Property__|__Description__|
|---|---|
|__ItemClicked__|Occurs when a tab is clicked.|
|__ItemCreating__|Occurs before a tab is created.|
|__ContextMenuOpening__|Occurs before the default context menu is opened.|
|__ItemSelecting__|Occurs before the tab is selected.|
|__ItemSelected__|Occurs after a tab is selected.|
|__ItemsChanged__|Occurs when a tab is added or removed.|
|__ItemDropping__|Occurs before a tab is dropped.|
|__ItemDropped__|Occurs after a tap is dropped.|
 

# See Also
