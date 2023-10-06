---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - WinForms SlideView Control
description: Get familiar with the public API of the WinForms SlideView control.
slug: slideview-properties-methods-events
tags: slideview, api, properties, methods, events
published: True
position: 5 
---

# Properties, Methods and Events for RadSlideView

## Properties

|Property|Description|
|----|----|
|__SlideViewElement__|Gets the main slide view element.|
|__Mappings__|Gets the mappings collection. They offer option to map properties from the TemplateElement to the data bound object. Mappings are used only in bounds mode.|
|__TemplateElement__|Gets or sets the template element that is responsible to display the content.|
|__NumberOfPages__|Gets or sets the number of pages. If BindingSource is set, this property returns the BindingSource.Count.|
|__SelectedIndex__|Gets or sets the index of the selected slide view item.|
|__ShowButtonsOverContent__|Gets or sets a boolean value indicating whether previous and next buttons will be shown over content or outside it. The default value is true, with which the buttons will be displayed over the content.|
|__BindingSource__|Gets or sets the data source.|
|__Orientation__|Gets or sets a value indicating how to orientate the navigation buttons - horizontally or vertically.|
|__AllowAnimation__|Gets or sets a value indicating whether to use animation when changing its state.|
|__AnimationInterval__|Gets or sets the animation interval.|
|__AnimationFrames__|Gets or sets the animation frames.|
|__AnimationType__|Gets or sets the type of the animation that is executed between the slides.|
|__AnimationEasingType__|Gets or sets the animation easing type.|
|__IsInfiniteScrollingEnabled__|Determines whether infinite scrolling from last to first slide view item and vice versa is enabled.|
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
|__MappedPropertyUpdating__|Occurs when a mapped property value is extracted from the data object and is about to be applied to the mapped template property. Suitable to change the type of the mapped property to match the destination type. For example if the mapped property is of type integer and the template property is of type string, this event allows to synchronize value data type to the mapped template property data type. NOTE that, if the value data type does not match the template property type, the property value will be reset. Note that this event is fired only in bound mode(the BindingSource is set). For unbound mode(when NumberOfPages is used) handle the TemplateUpdated event.|
|__TemplateUpdated__|Occurs when all mappings have been applied, just before the slide is changed. Suitable to change the template styles or properties.|
|__AnimationStarted__|Occurs when the animation is started.|
|__AnimationFinished__|Occurs when the animation is finished.|

## See Also

* [Structure]({%slug slideview-structure%})