---
title: Localization
page_title: Localization - RadPropertyGrid
description: The article provides an example with a sample implementation of an English localization provider.
slug: winforms/propertygrid/localization
tags: localization
published: True
position: 14
previous_url: propertygrid-localization
---

# Localization

To localize **RadPropertyGrid** to display control text and messages in a specific language, please consider the following:

* All required classes for localization are defined in __Telerik.WinConrtols.UI.Localization__ namespace.

* Start by creating a descendant of the __PropertyGridLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

#### Creating English Localization Provider

<snippet id='propertygrid-propertygridlocalization-localizationprovider-cs' />
<snippet id='propertygrid-propertygridlocalization-localizationprovider-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Changing the localization provider

<snippet id='propertygrid-propertygridlocalization-changelocalization-cs' />
<snippet id='propertygrid-propertygridlocalization-changelocalization-vb' />



# See Also

* [Getting Started]({%slug winforms/propertygrid/getting-started%})
