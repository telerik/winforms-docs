---
title: Navigation Buttons
page_title: Navigation Buttons - WinForms PipsPager Control
description: Check our &quot;Navigation Buttons&quot; documentation article for the RadPipsPager control.
slug: pipspager-navigation-buttons
tags: pipspager, buttons
published: True
position: 6
---

# Navigation Buttons

The navigation buttons allow you to navigate through the data. RadPipsPager provides the ability to control their visibility, position, and style. Furthermore, you can also specify an auto-hide period, after which the buttons will be automatically hidden, as well as enable or disable infinite scrolling.

## Controlling the Visibility of the Buttons

The visibility of the navigation buttons is controlled via the __ButtonVisibility__ property of RadPipsPager. This property is of the type ButtonVisibility and it exposes the following options:

* __Collapsed__: This option will prevent the buttons from showing.

* __Visible__: With this option, the buttons will be visible.

* __VisibleOnMouseOver__: This option is the default one. With it, the buttons will be visible when the mouse is over the RadSlideView control.

* __HiddenWhenDisabled__: When this option is chosen, each button will be hidden when it is in a disabled state.

## Setting an Auto-Hide Interval for the Navigation Buttons

You can specify a time interval, after which the navigation buttons will become hidden. This interval will begin after the mouse is out of the control or it stops moving when it's over it. To apply such a time interval (in milliseconds), you can set the __AutoHideButtonsDelay__ property of RadPipsPager. This property has a type of int. By default, this property will be 0 and the buttons will not become hidden.

## See Also

* [Getting Started]({%slug pipspager-getting-started%})
* [Structure]({%slug pipspager-structure%})