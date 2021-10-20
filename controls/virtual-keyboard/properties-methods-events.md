---
title: Properties, Methods and Events
page_title: Properties, Methods and Events | Virtual Keyboard
description: RadVirtualKeyboard is a software component that allows the input of characters without the need for physical keys. 
slug: properties-methods-events
tags: virtual, keyboard
published: True
position: 8
---

# Properties

|Property|Description|
|----|----|
|**LayoutType**|Gets or sets the keyboard layout type. Changing the value will automatically set the MainLayoutPanel property with a predefined value.|
|**VirtualKeyboardElement**|Gets the RadVirtualKeyboardElement instance, which is the main element for RadVirtualKeyboard.|
|**MainLayoutPanel**|Gets or sets the VirtualKeyboardLayoutPanel, which is used to host and arrange VirtualKeyboardLayoutPanel and VirtualKeyboardLayout objects.|
|**ScaleFontOnResize**|Gets or sets a value indicating, whether to scale the font when control size in changed.|
|**SynchronizeCultureWithSystem**|Gets or sets a value indicating whether the RadVirtualKeyboardElement will track with the system for language changes and will be updated automatically.|
|**XmlSerializationInfo**|Gets the serialization info for RadVirtualKeyboard used by Save/Load layout methods to persist the layout to/from XML.|
|**UseClickSound**| *(introduced in R3 2021 SP1)* Gets or sets a value indicating whether to play sound when a key is pressed.|

# RadVirtualKeyboardElement's Properties

|Property|Description|
|----|----|
|**IsControlActive**|Gets a value indicating, whether the Control key is in active state.|
|**IsWindowsKeyActive**|Gets a value indicating, whether the Windows key is in active state.|
|**IsNumLockActive**|Gets a value indicating, whether the NumLock key is in active state.|
|**IsShiftActive**|Gets a value indicating, whether the Shift key is in active state.|
|**IsAltActive**|Gets a value indicating, whether the Alt key is in active state.|
|**IsAltGrActive**|Gets a value indicating, whether the Alt Gr(right alt) key is in active state.|
|**ModifierKeys**|Gets the collection with currently active modifier keys.|
|**CurrentCulture**|Gets or sets current culture for the RadVirtualKeyboardElement. By default or when set to null the ComponentXmlSerializationInfo provided by GetDefaultXmlSerializationInfo() will be used.|
|**ClickSoundStream**|*(introduced in R3 2021 SP1)* Gets or sets the key press sound stream. Note that if you have not set the stream this property will return the default sound.|
 
# Methods

|Method|Description|
|----|----|
|**CalculateDesiredSize**|Calculates the desired size of RadVirtualKeyboard, based on VirtualKeyboardLayoutPanel.KeyDefaultSize, horizontal and vertical count of keys. |
|**SaveLayout(XmlWriter xmlWriter)**|Stores RadVirtualKeyboard's layout state in XML format to a XmlWriter, using the serialization information provided by the XmlSerializationInfo property.|
|**SaveLayout(Stream stream)**|Stores RadVirtualKeyboard's layout state in XML format to a stream, using the serialization information provided by the XmlSerializationInfo property.|
|**SaveLayout(string fileName)**|Stores RadVirtualKeyboard's layout state in XML format to a file, using the serialization information provided by the XmlSerializationInfo property.|
|**LoadLayout(string fileName)**|Loads RadVirtualKeyboard's layout state from a XML file, using the serialization nformation provided by the XmlSerializationInfo property.|
|**LoadLayout(Stream stream)**|Loads RadVirtualKeyboard's layout state from a stream, using the serialization information provided by theXmlSerializationInfo property.|
|**LoadLayout(XmlReader xmlReader)**|Loads RadVirtualKeyboard's layout state from a XmlReader, using the serialization information provided by the XmlSerializationInfo property.|

# RadVirtualKeyboardElement's Methods

|Method|Description|
|----|----|
|**UpdateKeys**|Updates all keys texts. Gets the all keys from all VirtualKeyboardLayout and VirtualKeyboardLayoutPanel children and generates and updates their IKey.KeyInfo properties.|
|**UpdateKeyboardLayout**|Raises the KeyboardLayoutChanged event and updates keys after a system layout change.|
|**UpdateKeysListeners**|Notifies all listeners when CapsLock, NumLock or ScrollLock are toggled.|
|**Send(IKey sender, int virtualKey)**|Sends a key by given virtual key.|
|**Send(IKey sender, Keys key)**|Sends a key by given Keys.|
|**Send(IKey sender, char symbol)**|Sends a key by given char.|
|**Send(IKey sender, string text)**|Sends a key by given text/string.|
|**GetTextFromKeyInfo**|Extracts the text by given KeyInfo object.|

# Events

|Event|Description|
|----|----|
|**KeySending**|An event that occurs when a key is about to be sent. Cancellable.|
|**KeySent**|An event that occurs when a key is sent.|
 
        
