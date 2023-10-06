---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - WinForms PipsPager Control
description: Get familiar with the public API of the WinForms PipsPager control.
slug: pipspager-properties-methods-events
tags: pipspager, api, properties, methods, events
published: True
position: 5 
---

# Properties, Methods and Events for RadSlideView

## Properties

|Property|Description|
|----|----|
|__PipsPagerElement__|Initializes a new instance of the RadPipsPager class.|
|__ItemSize__|Gets or sets size of the items(pips).|
|__NumberOfPages__|Gets or sets the number of pages. If BindingSource is set, this property returns the BindingSource.Count.|
|__SelectedIndex__|Gets or sets the index of the selected pips pager item.|
|__MaxVisiblePips__| Gets or sets the number of visible pips displayed in the control.|
|__BindingSource__|Gets or sets the data source.|
|__Orientation__|Gets or sets a value indicating how to orientate the pips - horizontally or vertically.|
|__AllowAnimation__|Gets or sets a value indicating whether to use animation when changing its state.|
|__AnimationInterval__|Gets or sets the animation interval.|
|__AnimationFrames__|Gets or sets the animation frames.|
|__AnimationEasingType__|Gets or sets the animation easing type.|
|__IsInfiniteScrollingEnabled__|Determines whether infinite scrolling from last to first pip item and vice versa is enabled.|
|__ButtonsVisibility__|Determines whether and how to display the navigation buttons.|
|__AutoHideButtonsDelay__|Determines how long it takes to the navigation buttons to be hidden after the mouse leaves the control(in milliseconds). Used only when the uttonsVisibility is VisibleOnMouseOver.|

## Methods

|Method|Description|
|----|----|
|__Select(int index)__|Selects the specified index.|
|__Select(int index, bool animate)__|Selects the specified index. The bool flag determines whether to animate the selection process.|
|__CanSelectPrevious()__|Determines whether moving to previous item is possible.|
|__SelectNext()__|Moves the selected item to the next one.|
|__SelectPrevious()__|Moves the selected item to the previous one.|
|__UpdateVisibility()__|Updates the visibility.|

## Events

|Event|Description|
|----|----|
|__SelectedIndexChanged__|Occurs when selected index has changed.|
|__CreatePipItem__|Occurs when a new pips pager item is created. Suitable to modify or replace the pip.|
|__AnimationStarted__|Occurs when the animation is started.|
|__AnimationFinished__|Occurs when the animation is finished.|

## See Also

* [Getting Started]({%slug pipspager-getting-started%})
* [Structure]({%slug pipspager-structure%})