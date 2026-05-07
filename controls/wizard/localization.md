---
title: Localization
page_title: Localization - RadWizard
description: RadWizard will help you differentiate a complex process into separate steps and provide your users with the ability to govern the process upon their decisions.
slug: winforms/wizard/localization
tags: localization
published: True
position: 7
previous_url: wizard-localization
---

# Localization
 
To localize **RadWizard** to display control text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadWizardLocalizationProvider__ class. 

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example. 

Below is a sample implementation of an English localization provider:

#### Localizing RadWizard Strings

<snippet id='wizard-wizardlocalization-customlocalizationprovider-cs' />
<snippet id='wizard-wizardlocalization-customlocalizationprovider-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider: 

#### Assigning the Current Localization Provider

<snippet id='wizard-wizardlocalization-settingtheprovider-cs' />
<snippet id='wizard-wizardlocalization-settingtheprovider-vb' />



The code provided above illustrates the approach to be used to localize __RadWizard__ and it is not intended as a full translation.

# See Also

* [Right-to-Left Support]({%slug winforms/wizard/right-to-left-support%})	
