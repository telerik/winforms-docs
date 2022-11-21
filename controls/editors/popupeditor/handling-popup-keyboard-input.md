---
title: Handling Popup's Keyboard Input  
page_title: Handling Popup's Keyboard Input - RadPopupEditor
description: This article shows how you can handle the popup's keyboard input. 
slug: handling-popup-keyboard-input
tags: popup, editor, keyboard, input
published: True
position: 7 
---

# Handling Popup's Keyboard Input 

When the arrow button is clicked, the pop up of **RadPopupEditor** is opened. Once opened, it handles the user's keyboard input. Thus, with the help of the **PopupManager** different system keys (e.g. `Escape`, `Enter`, etc.) are managed. For example, when the user hits the `Escape` key, the pop up is expected to be closed by default. 

As of **R1 2021** the RadPopupEditor.**Popup** offers keyboard handling via its **KeyDown** event. Thus, it is possible to handle the `Escape` key (or any KeyData) and prevent the default logic for closing the drop down. 

#### Handling Escape

{{source=..\SamplesCS\Editors\PopupEditor\PopupEditorCode.cs region=HandleEscape}} 
{{source=..\SamplesVB\Editors\PopupEditor\PopupEditorCode.vb region=HandleEscape}} 

````C#
        private void Popup_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyData== Keys.Escape)
            {
                e.Handled = true;
            }
        } 

````
````VB.NET
    Private Sub Popup_KeyDown(sender As Object, e As KeyEventArgs)
        If e.KeyData = Keys.Escape Then
            e.Handled = True
        End If
    End Sub 

````

{{endregion}} 

The **KeyEventArgs** exposes the following useful information:

* **Alt**: Gets a value indicating whether the ALT key was pressed.
* **Control**: Gets a value indicating whether the CTRL key was pressed.
* **Handled**: Gets or sets a value indicating whether the event was handled.
* **KeyCode**: Gets the keyboard code for a System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp event.
* **KeyValue**: Gets the keyboard value for a System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp event.
* **KeyData**: Gets the key data for a System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp event.
* **Modifiers**: Gets the modifier flags for a System.Windows.Forms.Control.KeyDown or System.Windows.Forms.Control.KeyUp event. The flags indicate which combination of CTRL, SHIFT, and ALT keys was pressed.
* **Shift**: Gets a value indicating whether the SHIFT key was pressed.
* **SuppressKeyPress**: Gets or sets a value indicating whether the key event should be passed on to the underlying control.

 
# See Also

 * [Properties, Events and Methods]({%slug winforms/editors/popupeditor/properties,-events-and-methods%})
