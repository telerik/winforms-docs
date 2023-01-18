---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - RadToolbarForm
description: Learn the most important of the public API that the WinForms RadToolbarForm offers.
slug: radtoolbarform-properties
tags: radtoolbarform
published: True
position: 4
---

# RadToolbarForm

## Properties

|__Property__|__Description__|
|---|---|
|__ShowIcon__|Gets or sets a value indicating whether an icon is displayed in the caption bar of the form.|
|__FormElement__| Gets the main element of the RadToolbarForm.|
|__TabbedFormControl__| Gets the RadToolbarFormControl which is used internally by the form responsible for working with the areas.|

## Events
|__Event__|__Description__|
|---|---|
|__ToolbarFormControlCreating__|Raised while creating the RadToolbarFormControl. The event is raised only when the form is created at run-time.

# RadToolbarFormControl

## Properties

|Property|Description|
|------|------|
|__ShowText__|Show or hides the text in the title bar.|
|__ShowIcon__|Gets or sets a value indicating whether an icon is displayed in the caption bar of the form.|
|__CaptionHeight__|Gets or sets the height of the title bar.|
|__NearItemsMargin__|Gets or sets the margin that defines the margin of the WrapLayoutPanel holding the near items.|
|__CenterItemsMargin__|Gets or sets the margin that defines the margin of the WrapLayoutPanel holding the center items.|
|__FarItemsMargin__|Gets or sets the margin that defines the margin of the WrapLayoutPanel holding the far items.|
|__TextPosition__|Gets or sets the position of the text inside the title bar.|
|__NearItemsVerticalAlignment__|Gets or sets the vertical alignment of the near toolbar items.|
|__CenterItemsVerticalAlignment__|Gets or sets the vertical alignment of the center toolbar items.|
|__FarItemsVerticalAlignment__|Gets or sets the vertical alignment of the far toolbar items.|
|__WrapMode__|Determines how the element containers are wrapped in relation to the available space. Both options will allocate the space for each of the containers proportionally from the totally available space.|
|__NearItemsWrapWeight__|Gets or sets the wrap weight while performing the layout of the NearItems container.|
|__CenterItemsWrapWeight__|Gets or sets the wrap weight while performing the layout of the CenterItems container.|
|__FarItemsWrapWeight__|Gets or sets the wrap weight while performing the layout of the CenterItems container.|
|__IconCaptionElement__|Gets the icon element of the control.|
|__TextCaptionElement__|Gets the text caption element of the control.|
|__MinimizeButtonElement__|Gets the minimize button element of the control.|
|__MaximizeButtonElement__|Gets the maximize button element of the control.|
|__HelpButtonElement__|Gets the help button element of the control.|
|__SystemButtonsElement__|Gets the system buttons element of the control.|
|__NearItems__|Gets the collection of the near items.|
|__CenterItems__|Gets the collection of the center items.|
|__FarItems__|Gets the collection of the far items.|

# RadToolbarFormControlElement

## Properties
|Property|Description|
|------|------|
|__NearItemsContainer__|Gets the near items container.|
|__CenterItemsContainer__|Gets the center items container.|
|__FarItemsContainer__|Gets the far items container.|
|__IconElement__|Gets the icon element.|
|__CaptionTextElement__|Gets the text element.|

