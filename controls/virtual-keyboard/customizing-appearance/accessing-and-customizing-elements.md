---
title: Accessing and Customizing Elements
page_title: Accessing and Customizing Elements - Virtual Keyboard
description: RadVirtualKeyboard is a software component that allows the input of characters without the need for physical keys. 
slug: virtual-keyboard-accessing-and-customizing-elements
tags: virtual, keyboard
published: True
position: 0 
---

# Accessing and Customizing Elements

**RadVirtualKeyboard** arranges its keys in logical layouts which control the specific position for each key. Before proceeding further, it is recommended to get yourself familiar with the [Structure]({%slug winforms-virtual-keyboard-structure%}) and [Logical Keyboard Layout]({%slug logical-keyboard-layout%}) of the virtual keyboard. 

The **VirtualKeyboardLayout** offers a public **Rows** property which is an ObservableCollection of Row instances. Each **Row** represents a logical structure used to organize the keys stored in the **Keys** property. Thus, accessing the keys collection for the respective layout, you can customize a certain Key.

The following code snippet demonstrates how to customize the `F1` button from the functions layout and the `*` key from the numpad layout.

![WinForms RadVirtualKeyboard Customize Elements](images/virtual-keyboard-accessing-and-customizing-elements001.png) 

 

<snippet id='virtual-keyboard-keyboardgettingstarted-customizekeys-cs' />
<snippet id='virtual-keyboard-keyboardgettingstarted-customizekeys-vb' />



# See Also

* [Structure]({%slug winforms-virtual-keyboard-structure%})
* [Getting Started]({%slug winforms-virtual-keyboard-getting-started%})
 
        
