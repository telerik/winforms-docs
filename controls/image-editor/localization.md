---
title: Localization
page_title: Localization
description: Localization
slug: radimageeditor-localization
tags: localization
published: True
position: 8
---

# Localization

To localize __RadImageEditor__ to display control text and messages in a specific language:

*  All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

*  Start by creating a descendant of the __ImageEditorLocalizationProvider__ class.

*  Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

#### Localizing RadImageEditor Strings

<snippet id='image-editor-imageeditorlocalization-mylocalizationprovider-cs' />
<snippet id='image-editor-imageeditorlocalization-mylocalizationprovider-vb' />



#### Assigning the Current Localization Provider

<snippet id='image-editor-imageeditorlocalization-setprovider-cs' />
<snippet id='image-editor-imageeditorlocalization-setprovider-vb' />



# See Also

* [Structure]({%slug radimageeditor-structure%})
* [Properties and Events]({%slug radimageeditor-properties-and-events%})