---
title: Virtual Keyboard Form
page_title: Virtual Keyboard Form - Virtual Keyboard
description: RadVirtualKeyboard is a software component that allows the input of characters without the need for physical keys. 
slug: virtual-keyboard-form
tags: virtual, keyboard
published: True
position: 3 
---

# RadVirtualKeyboardForm

**RadVirtualKeyboardForm** represents a toolbox component that can be used to associate the virtual keyboard to any focusable control or just show a form that allows keyboard input.

The following tutorial will demonstrate how to associate a **RadVirtualKeyboardForm** with a **RadTextBoxEditor** in **RadGridView**.

![WinForms RadVirtualKeyboard Form](images/virtual-keyboard-form001.gif) 

1. Add a **RadGridView** control to the form and populate it with some data.
2. Drag a **RadVirtualKeyboardForm** from the toolbox and drop it onto the form. It will be added as a component: 

	![WinForms RadVirtualKeyboardForm Toolbox](images/virtual-keyboard-form002.png) 

3. Subscribe to the RadGridView.**CellEditorInitialized** event and associate the hosted TextBox in the grid editor with the virtual keyboard form:

#### Associated grid editor with RadVirtualKeyboardForm

<snippet id='virtual-keyboard-keyboardgettingstarted-associatedgrideditor-cs' />
<snippet id='virtual-keyboard-keyboardgettingstarted-associatedgrideditor-vb' />



>note It is possible to associate a **RadTextBox** or any input control with the **RadVirtualKeyboardForm** by setting the **AssociatedKeyboardType** property of the respective input control. In other words, set the RadTextBox.**AssociatedKeyboardType** property to *AssociatedControl*. Thus, the **RadTextBox** control is associated with the virtual keyboard. When the control gets focus, the keyboard will be shown.

# Methods

**RadVirtualKeyboardForm** offers the following methods which can be useful in different scenarios for managing the user's input:

* **GetAssociatedKeyboardType** - Gets the **AssociatedKeyboardType** of a given control.
* **SetAssociatedKeyboardType** - Sets the **AssociatedKeyboardType** to a given control.
* **AddAssociatedControl** - Adds an associated control. When the associated control gains the focus the KeyboardForm will be shown.
* **RemoveAssociatedControl** - Removes an associated control.

The **AssociatedKeyboardType** enumeration defines whether a control is associated to a virtual keyboard. The available values are:
* **None** - The control is not associated with virtual keyboard.
* **AssociatedControl** - The control is associated with the virtual keyboard. When the control gets focus, the keyboard will be shown.

# See Also

* [Structure]({%slug winforms-virtual-keyboard-structure%})
* [Getting Started]({%slug winforms-virtual-keyboard-getting-started%})
 
        
