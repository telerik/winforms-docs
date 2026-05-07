---
title: Localization
page_title: Localization - Virtual Keyboard
description: RadVirtualKeyboard is a software component that allows the input of characters without the need for physical keys. 
slug: virtual-keyboard-localization
tags: virtual, keyboard
published: True
position: 10
---

# Localization

To localize **RadVirtualKeyboard** and **RadVirtualKeyboardForm** to display control text and messages in a specific language:

* All required classes for localization are defined in Telerik.WinControls.UI.Localization namespace.

* Start by creating a descendant of the **VirtualKeyboardLocalizationProvider** class.

* Override the **GetLocalizedString(string id)** method and provide a translation for the label and user messages. If a translation is not provided, the default value will be returned. This behavior is guaranteed by the call of the base **GetLocalizedString** method in the default clause of the switch statement in the example.

Below is a sample implementation of an English localization provider:

#### English localization provider

<snippet id='virtual-keyboard-virtualkeyboardlocalization-localization-cs' />
<snippet id='virtual-keyboard-virtualkeyboardlocalization-localization-vb' />



To apply the custom localization provider, instantiate and assign it to the current localization provider:

#### Apply the custom provider

<snippet id='virtual-keyboard-virtualkeyboardlocalization-applyprovider-cs' />
<snippet id='virtual-keyboard-virtualkeyboardlocalization-applyprovider-vb' />



