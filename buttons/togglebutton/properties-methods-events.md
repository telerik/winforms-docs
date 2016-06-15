---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | UI for WinForms Documentation
description: RadToggleButton is designed to manage states on your form. It shares many features with the RadCheckBox, but provides a different visual effect than the standard check mark. 
slug: winforms/buttons/togglebutton/properties-methods-events
tags: togglebutton
published: True
position: 4 
---

# Properties

|Property|Description|
|----|----|
|Text|Gets or sets the text associated with the button control|
|Image|Gets or sets the image that is displayed on the button control|
|TextAlignment|Gets or sets the alignment of the text on the button control|
|TextImageRelation|Gets or sets the position of text and image relative to each other|
|TextWrap|Gets or sets text wrapping mode|
|ForeColor|Gets or sets the foreground color of the control|
|BackColor|Gets or sets the background color of the button control|
|ToggleState|Gets or sets the toggle state. Toggle state enumeration defines the following values: *Off*, *Indeterminate*, and *On*|
|IsChecked|Gets or sets a Boolean value indicating where the button is checked|
|CheckState|Gets or sets the Check state. Check state enumeration defines the following values: *Uncheck*, *Indeterminate*, and *Check*|
|IsThreeState|Gets or sets a Boolean value indicating where the button is checked|

# Methods

|Method|Description|
|----|----|
|PerformClick|Generates a Click event for a button.|

# Events

|Event|Description|
|----|----|
|ToggleStateChanging|Occurs before the item's toggle state changes.|
|ToggleStateChanged|Occurs when the elements's state changes.|
|CheckStateChanging|Occurs before the elements's check state changes.|
|CheckStateChanged|Occurs when the elements's check state changes.|

>important Due to the specifics of the [simple data binding](http://msdn.microsoft.com/en-us/library/system.windows.forms.binding(v=vs.110).aspx) we have introduced the __CheckStateChanging__ and __CheckStateChanged__ events together with the __CheckState__ property. These events and property provide the same functionality as the __ToggleStateChanged__, __ToggleStateChanging__ and the __ToggleState__ property, but give you the ability to simple data bind the control.
>


