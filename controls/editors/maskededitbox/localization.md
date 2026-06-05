---
title: Localization
page_title: Localization - RadMaskedEditBox
description: RadMaskedEditBox is a themeable text box that formats and constrains text to a predefined pattern or a pattern you define.
slug: radmaskededitbox-localization
tags: radmaskededitbox
published: True
position: 11
---

# Localization

To localize **RadMaskedEditBox** to display text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the **RadMaskedEditBoxLocalizationProvider** class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

<snippet id='editors-maskeditbox1-myradmaskededitboxlocalizationprovider-cs' />
<snippet id='editors-maskeditbox1-myradmaskededitboxlocalizationprovider-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

<snippet id='editors-maskeditbox1-localizemaskeditbox-cs' />
<snippet id='editors-maskeditbox1-localizemaskeditbox-vb' />