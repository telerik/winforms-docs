---
title: Localization
page_title: Localization - RadTimeSpanPicker
description: RadTimeSpanPicker is a UI component that provides a full control over picking a specific time span and duration.
slug: radtimespanpicker-localization
tags: radtimespanpicker
published: True
position: 7
---


# Localization

To localize __RadTimeSpanPicker__ to display any text and messages in a specific language:

* All required classes for localization are defined in __Telerik.WinControls.UI.Localization__ namespace.

* Start by creating a descendant of the __RadTimeSpanPickerLocalizationProvider__ class.

* Override the __GetLocalizedString(string id)__ method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call to the base __GetLocalizedString__ method in the __default__ clause of the __switch__ statement in the example.

Below is a sample implementation of an English localization provider:

<snippet id='editors-timespancode-localization-cs' />
<snippet id='editors-timespancode-localization-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Assigning the Current Localization Provider

<snippet id='editors-timespancode-changeprovider-cs' />
<snippet id='editors-timespancode-changeprovider-vb' />