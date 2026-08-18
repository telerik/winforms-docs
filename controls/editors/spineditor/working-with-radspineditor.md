---
title: Properties and Events
page_title: Properties and Events - WinForms SpinEditor Control
description: Get familiar with the most common properties and events used in WinForms SpinEditor.
slug: winforms/editors/spineditor/working-with-radspineditor
tags: working,with,radspineditor
published: True
position: 4
previous_url: editors-spineditor-working-with-radspineditor
---

## Properties

|Property|Description   |
|---|---|
|__InterceptArrowKeys__| This property when true (the default) allows the user to press the UP ARROW and DOWN ARROW keys to select values. The focus must be on the control for this functionality. |
|__ReadOnly__| When this property is set to true the end user cannot change the control value. By default this property is turned off. |
|__RightToLeft:__|If this property is set to *Yes* the arrow buttons are displayed on the left, text on the right.|
|__Value, Minimum, Maximum__|The number displayed in the edit can be set or returned using the __Value__ property. Use the __Minimum__ and __Maximum__ properties to limit the upper and lower bounds that a value may be set to.|
|__Increment__|The amount incremented or decremented when the user clicks the up or down arrow buttons. By default this value is "1".|
|__ThousandsSeparator__|This property when true displays a thousands separator. By default this property is set to *false*.|
|__ShowUpDownButtons__|Gets or sets the whether RadSpinEditor will be used as a numeric textbox.|
|__RightMouseButtonReset__|Gets or sets whether by right-mouse clicking the up/down button you reset the value to the Maximum/Minimum value respectively.|
|__Wrap__|Gets or sets a value indicating that value will revert to minimum value after reaching maximum and to maximum after reaching minimum.|
|__Value__|Represents the decimal value in the control.|
|__DecimalPlaces__|Gets or sets the number of decimal places to display in the RadSpinEditor.|
|__Hexadecimal__| Gets or sets a value indicating whether the RadSpinEditor should display the value it contains in hexadecimal format.|
|__RadSpinElement.EnableMouseWheel__| Gets or sets a value indicating whether the user can change the value with mouse wheel.|
 
>note **DecimalPlaces** is considered when you try to commit a new value to RadSpinEditor. That is why it is expected to round the value if less decimal places are specified than the contained in the value. 

## Events
|Event|Description|
|---|---|
|__ValueChanging__|This event fires before the value has changed and allows you to prevent a given value from being entered. The event passes a __ValueChangingEventArgs__ parameter that includes the __OldValue__, __NewValue__ and __Cancel__ properties.|
|__ValueChanged__|This event fires when the number has already changed. Use the __Value__ property to get the current number in the __RadSpinEditor__.|

## Troubleshooting ValueChanged

The `ValueChanged` event is raised only when the effective value changes. If clicking an up or down button does not raise the event, check the following conditions:

* Confirm that `ShowUpDownButtons` is enabled and `ReadOnly` is set to `false`.
* Confirm that the attempted step is not constrained to the current value by the `Minimum` or `Maximum` property.
* Check the `ValueChanging` event handler. Setting `ValueChangingEventArgs.Cancel` to `true` prevents the new value from being committed and `ValueChanged` from being raised.
* Remember that `ValueChanged` reports a value change; it is not a button-click notification. First verify whether the displayed `Value` changes when the button is clicked.

# See Also

* [Getting Started]({%slug winforms/editors/spineditor/getting-started%})
* [Structure]({%slug winforms/editors/spineditor/structure%})
 