---
title: Localization
page_title: Localization - RadLayoutControl
description: Localization
slug: winforms/layoutcontrol/localization
tags: localization
published: True
position: 8
previous_url: layoutcontrol-localization
---

# Localization

To localize __RadLayoutControl__ to display any text and messages in a specific language:

* Create a custom __LayoutControlLocalizationProvider__ class.        

* Override the __GetLocalizedString(string id)__ method and provide a translation for the labels and user messages. If a translation is not provided, the default value will be returned.

Below is a sample implementation of an English localization provider:

#### Localizing RadLayoutControl Strings.

<snippet id='layoutcontrol-layoutcontrollocalization-localization-cs' />
<snippet id='layoutcontrol-layoutcontrollocalization-localization-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

<snippet id='layoutcontrol-layoutcontrollocalization-setprovider-cs' />
<snippet id='layoutcontrol-layoutcontrollocalization-setprovider-vb' />



# See Also

* [Items]({%slug winforms/layoutcontrol/items%})
* [Design Time]({%slug winforms/layoutcontrol/design-time%})
* [Getting Started]({%slug winforms/layoutcontrol/getting-started%})
