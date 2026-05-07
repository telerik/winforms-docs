---
title: Localization
page_title: Localization - WinForms Dock Control
description: Learn how you can localize the strings used in WinForms RadDock.
slug: winforms/dock/localization/localization
tags: localization
published: True
position: 0
previous_url: dock-localization
---

# Localization
 
To localize __RadDock__ to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace. 

* Start by creating a descendant of the **RadDockLocalizationProvider** class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the switch statement in the example. 

Below is a sample implementation of a custom localization provider, which returns translations of the default values in English:

#### Localizing RadDock Strings 

<snippet id='dock-localization-customprovider-cs' />
<snippet id='dock-localization-customprovider-vb' />

 
 

To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Localizing RadDock Strings 

<snippet id='dock-localization-settingcustomprovider-cs' />
<snippet id='dock-localization-settingcustomprovider-vb' />

 

 
The code provided above illustrates the approach to be used to localize the __RadDock__ and is not intended as a full translation.

# See Also

* [Right-to-left support]({%slug winforms/dock/localization/right-to-left-support%})
