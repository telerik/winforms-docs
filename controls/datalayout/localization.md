---
title: Localization
page_title: Localization - WinForms DataLayout Control
description: learn how you can localize the string used in WinForms DataLayout.
slug: winforms/datalayout/localization
tags: localization
published: True
position: 8
previous_url: datalayout-localization
---

# Localization

To localize __RadDataLayout__ to display any text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __LayoutControlLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

<snippet id='datalayout-localization-localization-cs' />
<snippet id='datalayout-localization-localization-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

<snippet id='datalayout-localization-setprovider-cs' />
<snippet id='datalayout-localization-setprovider-vb' />



# See Also

 * [Structure]({%slug winforms/datalayout/control-element-structure%})
 * [Getting Started]({%slug winforms/datalayout/getting-started%})
 * [Properties, events and attributes]({%slug winforms/datalayout/properties,-events-and-attributes%})
 * [Validation]({%slug winforms/datalayout/validation%})
 * [Change the editor to RadDropDownList]({%slug  winforms/dataentry/how-to/change-the-editor-to-a-bound-raddropdownlist%})
 * [Customizing Appearance ]({%slug winforms/raddatalayout/customizing-appearance%})
