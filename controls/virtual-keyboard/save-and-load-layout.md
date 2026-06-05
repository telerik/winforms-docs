---
title: Save and Load Layout
page_title: Save and Load Layout - Virtual Keyboard
description: RadVirtualKeyboard is a software component that allows the input of characters without the need for physical keys. 
slug: keyboard-save-and-load-layout
tags: virtual, keyboard
published: True
position: 6
---

# Save and Load Layout

Save/Load layout functionality gives your applications the opportunity to preserve the custom defined keyboard layout. Those layout settings are written in a XML file.

Before proceeding further, it is recommended to get yourself familiar with the [Default Layouts]({%slug virtual-keyboard-default-layouts%}) and [Logical Keyboard Layout]({%slug logical-keyboard-layout%}) articles which demonstrates how you can access the different keyboard layout panels and add custom keys to achieve the desired custom layout which can be preserved later to a XML file. 

Here is a sample demonstrating how you can implement a Save Layout button event handler:
 
#### Save custom defined layout

<snippet id='virtual-keyboard-keyboardgettingstarted-save-cs' />
<snippet id='virtual-keyboard-keyboardgettingstarted-save-vb' />



The code snippets below demonstrates how you can implement a Load Layout button event handler: 

#### Load custom defined layout

<snippet id='virtual-keyboard-keyboardgettingstarted-load-cs' />
<snippet id='virtual-keyboard-keyboardgettingstarted-load-vb' />



**RadVirtualKeyboard** provides three overloads for the **SaveLayout** and **LoadLayout** methods:

|Method|Description|
|----|----|
|**SaveLayout(XmlWriter xmlWriter)**|Stores RadVirtualKeyboard's layout state in XML format to a XmlWriter, using the serialization information provided by the XmlSerializationInfo property.|
|**SaveLayout(Stream stream)**|Stores RadVirtualKeyboard's layout state in XML format to a stream, using the serialization information provided by the XmlSerializationInfo property.|
|**SaveLayout(string fileName)**|Stores RadVirtualKeyboard's layout state in XML format to a file, using the serialization information provided by the XmlSerializationInfo property.|
|**LoadLayout(string fileName)**|Loads RadVirtualKeyboard's layout state from a XML file, using the serialization information provided by the XmlSerializationInfo property.|
|**LoadLayout(Stream stream)**|Loads RadVirtualKeyboard's layout state from a stream, using the serialization information provided by theXmlSerializationInfo property.|
|**LoadLayout(XmlReader xmlReader)**|Loads RadVirtualKeyboard's layout state from a XmlReader, using the serialization information provided by the XmlSerializationInfo property.|

>note In our Demo application >> Virtual Keyboard >> Settings example you can find two XML files for custom keyboard layouts: *Dvorak Layout* and *Colemak Layout*.


 


 
        
