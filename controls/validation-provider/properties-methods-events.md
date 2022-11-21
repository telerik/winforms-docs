---
title: Properties, Methods and Events
page_title: Properties, Methods and Events - Validation Provider
description: RadValidationProvider is a component which provides data validation management for editors in bound and unbound mode. 
slug: properties-methods-events
tags: validation, provider
published: True
position: 6 
---

## Properties

|Property|Description|
|----|----|
|**ValidationMode**| Controls when the validation will be performed. The available options are *None*, *OnValidating*, *OnTextChange*, *Programmatically*. Default values is *OnValidating*.|
|**ValidationRules**| Gets a collection representing the Conditions in this ValidationProvider.|
|**AssociatedControls**|Get the collection of the controls that are being validated.|

## Methods

|Method|Description|
|----|----|
|**RemoveControlFromRules**|Remove a specific RadEditorControl from the validation rules.|
|**RemoveValidationRule**|Remove a specific RadEditorControl from a specific validation rule.|
|**Validate**|Validates the specified RadEditorControl evaluating the rules to which it is associated.|
|**SetIconAlignment**|Set the alignment of the error icon. It can be *TopLeft*, *TopRight*, *MiddleLeft*, *MiddleRight*, *BottomLeft*, *BottomRight*|
|**GetIconAlignment**|Get the alignment of an error icon for the specified RadEditorControl.|
|**SetIconPadding**|Set the amount of extra space to leave between the specified control and the error icon.|
|**GetIconPadding**|Return the amount of extra space to leave next to the error icon.|
|**RemoveRules**|Remove the validation rules associated with the specified RadEditorControl.|
|**ClearErrorStatus()**|Clear the visual indication for the validation error.(* Available as of R1 2021)|
|**ClearErrorStatus(RadControl associatedControl)**|Clear the visual indication for the validation error for the particular control.(* Available as of R1 2021)|

## Events 

|Event|Description|
|----|----|
|**ControlValidation**|Occur before a RadEditorControl is being validated. The RadValidationEventArgs gives very useful information about the tool tip error indication, validation rule, etc.|
|**ValidationModeChanged**|Occur when the ValidionMode property changed.|

# See Also

* [Getting Started]({%slug validation-provider-getting-started%})
* [Validation Rules]({%slug validation-provider-validation-rules%})
* [Design Time]({%slug validation-provider-design-time%})
* [Customizing Error Indication]({%slug validation-provider-customizing-error-indication%})
 
        
