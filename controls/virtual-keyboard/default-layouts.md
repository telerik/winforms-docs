---
title: Default Layouts
page_title: Default Layouts | Virtual Keyboard
description: RadVirtualKeyboard is a software component that allows the input of characters without the need for physical keys. 
slug: virtual-keyboard-default-layouts
tags: virtual, keyboard
published: True
position: 4 
---

# Default Layouts

The **LayoutType** property of **RadVirtualKeyboard** controls the keyboard layout type. Changing the value will automatically set the **MainLayoutPanel** property with a predefined value.

The available options in the **KeyboardLayoutType** enumeration are:

### **Extended** 
A keyboard layout that includes the functions keys, main keys, home buttons and numpad keyboard groups. This layout is of **ExtendedVirtualKeyboardLayoutPanel** type and offers the following useful properties:

* **FunctionButtonsLayout** - Gets the **VirtualKeyboardLayout** that holds all function keys of the keyboard.
* **MainButtonsLayout** - Gets the **VirtualKeyboardLayout** that holds all keys from the main group of the keyboard.
* **HomeButtonsLayout** - Gets the **VirtualKeyboardLayout** that holds all buttons from the home keys group of the keyboard.
* **NumpadButtonsLayout** - Gets the **VirtualKeyboardLayout** that holds all buttons from the numpad keys group of the keyboard.

![winforms/virtual-keabord-default-layouts 001](images/virtual-keabord-default-layouts001.png) 

### **Simplified**
A keyboard layout that includes the main buttons group with escape key and arrow keys included. This layout is of **SimplifiedVirtualKeyboardLayoutPanel** type and offers the following useful properties:
* **MainButtonsLayout** - Gets the **VirtualKeyboardLayout** that holds all keys from the main group of the keyboard.
* **HomeButtonsLayout** - Gets the **VirtualKeyboardLayout** that holds all buttons from the home keys group of the keyboard.

![winforms/virtual-keabord-default-layouts 002](images/virtual-keabord-default-layouts002.png) 

### **Numpad**
A keyboard layout that includes the numpad buttons group. This layout is of **NumpadVirtualKeyboardLayoutPanel** type and offers:
* **NumpadButtonsLayout** - Gets the **VirtualKeyboardLayout** that holds all buttons from the numpad keys group of the keyboard.

![winforms/virtual-keabord-default-layouts 003](images/virtual-keabord-default-layouts003.png) 

## Customizing default layouts

**RadVirtualKeyboard** arranges its keys in logical layouts which control the specific position for each key. Before proceeding further, it is recommended to get yourself familiar with the [Structure]({%slug winforms-virtual-keyboard-structure%}) and [Logical Keyboard Layout]({%slug logical-keyboard-layout%}) of the virtual keyboard. 

The following code snippet demonstrates how to add a **Z** button in the *Home* layout when using KeyboardLayoutType.*Extended*:

![winforms/virtual-keabord-default-layouts 003](images/virtual-keabord-default-layouts004.png) 


#### Adding a key to the default Home layout

{{source=..\SamplesCS\VirtualKeyboard\KeyboardGettingStarted.cs region=AddKeyToHome}} 
{{source=..\SamplesVB\VirtualKeyboard\KeyboardGettingStarted.vb region=AddKeyToHome}}

````C#
radVirtualKeyboard1.LayoutType = Telerik.WinControls.VirtualKeyboard.KeyboardLayoutType.Extended;
ExtendedVirtualKeyboardLayoutPanel extendedLayoutPanel = radVirtualKeyboard1.MainLayoutPanel as ExtendedVirtualKeyboardLayoutPanel;
int keysRowIndex = 2;
int keyColSpan = 3;
int KeyRowSpan = 1;
extendedLayoutPanel.HomeButtonsLayout.Rows[keysRowIndex].Keys.Add(new Key((int)Keys.Z, KeyType.Normal, keyColSpan, KeyRowSpan));
extendedLayoutPanel.ResetLayout();

````
````VB.NET
Me.radVirtualKeyboard1.LayoutType = Telerik.WinControls.VirtualKeyboard.KeyboardLayoutType.Extended
Dim extendedLayoutPanel As ExtendedVirtualKeyboardLayoutPanel = TryCast(radVirtualKeyboard1.MainLayoutPanel, ExtendedVirtualKeyboardLayoutPanel)
Dim keysRowIndex As Integer = 2
Dim keyColSpan As Integer = 3
Dim KeyRowSpan As Integer = 1
extendedLayoutPanel.HomeButtonsLayout.Rows(keysRowIndex).Keys.Add(New Key(CInt(Keys.Z), KeyType.Normal, keyColSpan, KeyRowSpan))
extendedLayoutPanel.ResetLayout()

```` 

{{endregion}}

# See Also

* [Structure]({%slug winforms-virtual-keyboard-structure%})
* [Getting Started]({%slug winforms-virtual-keyboard-getting-started%})
 
        
