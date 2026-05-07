---
title: Localization
page_title: Localization - UI for WinForms Documentation
description: Localization
slug: winforms/commandbar/localization/localization
tags: localization
published: True
position: 0
previous_url: commandbar-localization-localization
---

# Localization



## 

To localize RadCommandBar to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI__ namespace.

* Start by creating a descendant of the __CommandBarLocalizationProvider__ class. 

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider: 
 
<snippet id='commandbar-localization-provider-cs'/>
<snippet id='commandbar-localization-provider-vb'/>

 
 

To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider 

<snippet id='commandbar-localization-usingprovider-cs'/>
<snippet id='commandbar-localization-usingprovider-vb'/>

 
 

The code provided above illustrates the approach to be used to localize the __RadCommandBar__ and is not intended as a full translation.
