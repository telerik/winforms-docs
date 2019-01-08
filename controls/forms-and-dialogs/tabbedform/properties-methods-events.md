---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | RadTabbedForm
description:  RadTabbedForm allows to display tab items directly in the title bar  
slug: radtabbedform-properties
tags: radtabbedform
published: True
position: 3
---

# Properties

|__Property__|__Description__|
|---|---|
|__AllowAero__|Gets or sets a boolean value that determines whether the Windows title bar styles are enabled|
|__RadTabbedFormControlElement__| Gets the access to the main elements of the form.|
 

# Events 

|__Event__|__Description__|
|---|---|
|__TabbedFormControlCreating__|Raised while creating the RadTabbedFormControl. The event is raised only when the form is created at run-time.|
 

# RadTabbedFormControlElement Properties

|__Property__|__Description__|
|---|---|
|__CaptionHeight__|Gets or sets the height of the title bar.|
|__ShowText__|Show or hides the text in the title bar.|
|__ShowTabCloseButton__|Shows or hides the close button in each tab.|
|__ShowTabPinButton__|Shows or hides the pin button in each tab.|
|__ShowNewTabButton__|Shows or hides the new tab located after all tabs.|
|__PinnedItemsPosition__|Set the pinned tabs position.|
|__MinimumTabWidth__|Gets or sets the minimum width of the tabs.|
|__TabSpacing__|Gets or set the space between the tabs|
|__ContentArea__|Returns the underlying RadTabbedFormControlContentAreaElement.|
|__LeftItems__|Gets the collection of the left items.|
|__RightItems__|Gets the collection of the right items.|
|__SelectedItem__|Gets or sets the currently selected item in the view.|
|__Items__| Gets all the tabs currently present within this element.|
|__PinnedItems__|Gets all the pinned items.|
|__ItemDragService__|Gets or sets the RadDragDropService instance which handles item drag requests.|
 
# RadTabbedFormControlElement Events

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