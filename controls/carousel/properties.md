---
title: Properties, Methods Events
page_title: Properties, Methods Events - WinForms Carousel Control
description: Get familiar with the public API that the WinForms Carousel control offers.
slug: winforms/carousel/properties
tags: carousel, properties, methods, events
published: True
position: 7
previous_url: carousel/using-radcarousel/radcarousel-properties, carousel-using-radcarousel-radcarousel-properties
---

## Properties

* __EnableLooping:__ Gets or sets value indicating that when item position goes beyond the carousel path, it will be displayed again in the beginning of the carousel path.

* __EnableAnimationOnFormResize:__ Enables or disables the re-animation of __RadCarousel__ on form maximize, minimize or resize.

* __AnimationFrames:__ Gets or sets the number of animation frames between two positions.

* __AnimationDelay:__ Gets or sets the delay (in ms) between two frames of animation.

* __EnableAutoLoop:__ Gets or sets a value indicating that the carousel will loop items automatically.

* __AutoLoopDirection:__ Gets or sets a value indicating whether carousel will increment or decrement item indexes when in auto-loop mode.

* __AutoLoopPauseCondition:__ Gets or sets a value indicating when carousel will pause looping if in auto-loop mode.

* __AutoLoopPauseCondition:__ Gets or sets a value indicating when carousel will pause looping if in auto-loop mode.

* __AutoLoopPauseInterval:__ Gets or sets a value indicating the interval (in seconds) after which the carousel will resume looping when in auto-loop mode.

* __VirtualMode:__ with this mode the carousel will only display spesific number of items. This significantly improves the performance when your data source contains a lot of items.

* __VisibleItemCount:__ Number of items that carousel displays displays when VirtualMode is set to true.

* __Items:__ Gives access to the items collection.

* __SelectedItem:__ Allows you to get or set the current item.

* __SelectedIndex:__ Allows you to get or set the current item using an index.


* __CarouselPath:__ Gets or sets the path which items will follow when animated.

* __EnableRelativePath:__ Indicates if the relative point coordinates are use.If set to true each point should be between 0 and 100".

* __OpacityChangeCondition:__ Sets the way opacity is applied to carousel items.

* __MinFadeOpacity:__ Indicates the minimum value of the opacity applied to items.

* __AnimationsToApply:__ Gets or sets value indicating which of the predefined animations will be applied to carousel items.

* __ItemClickDefaultAction:__ This property allows you to disable the item selection.

* __ItemReflectionPercentage:__ 0.0 indicates no reflection and 1.0 indicates 100% of the height of the original item.

* __ButtonPrevious:__ Represents the button moving the items back.

* __ButtonNext:__ Represents the button moving the items forward.

* __ButtonPositions:__ Gets or sets the location of the navigation buttons.

* __EasingType:__ This property controls how the animation is performed. The property can be assigned one of the `RadEasingType` enumeration members: Linear, InQuad, OutQuad, InOutQuad, InCubic, OutCubic, InOutCubic, InQuart, OutQuart, InOutQuart, InQuint, OutQuint, InOutQuint, InSine, OutSine, InOutSine, InOutExponential, InCircular, OutCircular, InOutCircular, InElastic, OutElastic, InBack, OutBack, InOutBack, InBounce, OutBounce and InOutBounce.

* __EnableKeyboardNavigation:__ Gets or sets a value indicating whether the keyboard navigation is enabled.

## Events

* __NewCarouselItemCreating:__ Occurs when new data bound carousel item is created.
* __ItemDataBound:__ Occurs after an Item is data bound.

* __SelectedIndexChanged:__ Occurs when the SelectedIndex property has changed.

* __SelectedItemChanged:__ Occurs when the selected items is changed.


# See Also

 * [Customize Appearance]({%slug winforms/carousel/customizing-appearance%})
 * [Working with items]({%slug  winforms/carousel/using-radcarousel/carousel-items%})
 * [Data Binding]({%slug winforms/carousel/using-radcarousel/data-binding%})
 * [Carousel Path]({%slug winforms/carousel/using-radcarousel/carousel-path%})


