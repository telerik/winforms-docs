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

{{source=..\SamplesCS\VirtualKeyboard\KeyboardGettingStarted.cs region=Save}} 
{{source=..\SamplesVB\VirtualKeyboard\KeyboardGettingStarted.vb region=Save}}

````C#
string s = "default.xml";
SaveFileDialog dialog = new SaveFileDialog();
dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*";
dialog.Title = "Select a xml file";
if (dialog.ShowDialog() == DialogResult.OK)
{
    s = dialog.FileName;
}
this.radVirtualKeyboard1.SaveLayout(s);


````
````VB.NET

Dim s As String = "default.xml"
Dim dialog As SaveFileDialog = New SaveFileDialog()
dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
dialog.Title = "Select a xml file"

If dialog.ShowDialog() = DialogResult.OK Then
    s = dialog.FileName
End If

Me.radVirtualKeyboard1.SaveLayout(s)

```` 

{{endregion}}

The code snippets below demonstrates how you can implement a Load Layout button event handler: 

#### Load custom defined layout

{{source=..\SamplesCS\VirtualKeyboard\KeyboardGettingStarted.cs region=Load}} 
{{source=..\SamplesVB\VirtualKeyboard\KeyboardGettingStarted.vb region=Load}}

````C#

string s = "default.xml";
OpenFileDialog dialog = new OpenFileDialog();
dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*";
dialog.Title = "Select a xml file";
if (dialog.ShowDialog() == DialogResult.OK)
{
    s = dialog.FileName;
}
this.radVirtualKeyboard1.LoadLayout(s);


````
````VB.NET

Dim s As String = "default.xml"
Dim dialog As OpenFileDialog = New OpenFileDialog()
dialog.Filter = "xml files (*.xml)|*.xml|All files (*.*)|*.*"
dialog.Title = "Select a xml file"

If dialog.ShowDialog() = DialogResult.OK Then
    s = dialog.FileName
End If

Me.radVirtualKeyboard1.LoadLayout(s)

```` 

{{endregion}}

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


 


 
        
