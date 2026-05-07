---
title: Localization
page_title: Localization - RadPageView
description: RadPageView is yet another great addition to the Telerik UI for WinForms suite. As the name implies, this control layouts pages of subcontrols in different views.
slug: winforms/pageview/localization/localization
tags: localization
published: True
position: 0
previous_url: pageview-localization
---

# Localization
 
To localize **RadPageView** to display control text and messages in a specific language:

* All required classes for localization are defined in the __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadPageViewLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of a custom localization provider, which returns translations of the default values in German:

#### Localizing RadPageView strings

<snippet id='pageview-localization-localizationimpl-cs' />
<snippet id='pageview-localization-localizationimpl-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Using the custom localization provider

<snippet id='pageview-localization-localizationusage-cs' />
<snippet id='pageview-localization-localizationusage-vb' />



The code provided above illustrates the approach to be used to localize the __RadPageView__ and is not intended as a full translation.

# See Also

* [Right-to-left support]({%slug winforms/pageview/localization/right-to-left-support%})	
