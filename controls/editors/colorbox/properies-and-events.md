---
title: Properties and Events
page_title: Properties and Events - WinForms ColorBox Control
description: Get familiar with the public API of the WinForms ColorBox.
slug: winforms/editors/colorbox/working-with-radcolorbox
tags: working,with,radcolorbox
published: True
position: 4
previous_url: editors-color-box-working-with, editors/colorbox/working-with-radcolorbox
---

# Properties

|Property|Description|
|------|------|
|__ColorDialog__|Gets the RadColorDialog of this control.|
|__ColorBoxElement__|Gets the RadColorBoxElement of this control.|
|__Value__|Gets or sets the value of the editor.|
|__ReadOnly__|Determines if users can input text directly into the text field..|
|__TabStop__|Gets or sets a value indicating whether the user can give the focus to this control using the TAB key.|

# Events

|Event|Description|
|------|------|
|__DialogClosed__|Fires after the color dialog is closed.|
|__ValueChanging__|Fires right before the value is changed, can be canceled.|
|__ValueChanged__|Fires after the editor value is changed.|

The __ValueChanging__ event fires before the value is changed and allows you to prevent the change. The event passes a __ValueChangingEventArgs__ parameter that includes the __OldValue__, __NewValue__ and __Cancel__ properties. Set __Cancel__ to true to prevent the change. The example below cancels the value changing if the new value is not a named color:

#### Cancel ValueChanging.

<snippet id='editors-colorbox1-colorboxvaluechanging-cs' />
<snippet id='editors-colorbox1-colorboxvaluechanging-vb' />



# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radcolorbox.html#properties)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radcolorbox.html#events)
