---
title: Localization
page_title: Localization - WinForms TimePicker Control
description: Shows how you can use the localization provider to change all string used in the control to custom ones. 
slug: winforms/editors/timepicker/localization
tags: localization
published: True
position: 6
previous_url: editors-timepicker-localization
---

# Localization

To localize __RadTimePicker__ to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadTimePickerLocalizationProvider__ class. 

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the `default` clause of the __switch__ statement in the example. 

Below is a sample implementation of an English localization provider:

#### Localizing RadTimePicker Strings 

<snippet id='editors-timepicker1-localizationprovider-cs' />
<snippet id='editors-timepicker1-localizationprovider-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider 

<snippet id='editors-timepicker1-settingthelocalizationprovider-cs' />
<snippet id='editors-timepicker1-settingthelocalizationprovider-vb' />



The code provided above illustrates the approach to be used to localize the __RadTimePicker__ and is not intended as a full translation.

# See Also

* [Structure]({%slug winforms/editors/timepicker/structure%})
* [Properties and Events]({%slug winforms/editors/timepicker/properties-and-events%})
* [Free Form Date Time Parsing]({%slug winforms/editors/timepicker/free-form-date-time-parsing%})