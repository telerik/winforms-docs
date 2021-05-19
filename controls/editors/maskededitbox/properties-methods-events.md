---
title: Properties, Methods and Events
page_title: Properties, Methods, Events - WinForms MaskedEditBox Control
description: Get familiar with the public API that WinForms RadMaskedEditBox offers.
slug: winforms/editors/maskededitbox/properties-methods-and-events
tags: maskededitbox, properties, methods, events
published: True
position: 10
---

# Properties

|Property|Description|
|------|------|
|__AutoSize__|Gets or sets whether the edit control is auto-sized|
|__PlaceHolder__|Gets or sets the character used as the placeholder in a masked editor|
|__Mask__|Gets or sets a mask expression|
|__MaskType__|Gets or sets the mask type|
|__Value__|Gets or sets the value associated to the mask edit box|
|__TextMaskFormat__|Gets or sets a value that determines whether literals and prompt characters are included in the formatted string|
|__UseGenericBorderPaint__|Gets or sets a value indicating whether to show the bottom part of characters, clipped due to font name or size particularities|
|__TextAlign__|Gets or sets the horizontal alignment of the text|
|__ShortcutsEnabled__|Gets or sets a value indicating whether the defined shortcuts are enabled|
|__SelectionStart__|Gets or sets the starting point of text selected in the text box|
|__Modified__|Gets or sets a value indicating whether the RadTextBox control has been modified by the user since the control was created or since its contents were last set|
|__Multiline__|Gets or sets a value indicating whether this is a multiline TextBox control|
|__NullText__|Gets or sets the text that is displayed when the ComboBox contains a null reference|
|__PasswordChar__|Gets or sets the character used to mask characters of a password in a single-line TextBox control|
|__ReadOnly__|Gets or sets a value indicating whether the contents of the TextBox control can be changed|
|__ScrollBars__|Gets or sets which scroll bars should appear in a multiline TextBox control|
|__SelectedText__|Gets or sets a value indicating the currently selected text in the control|
|__SelectionLength__|Gets or sets the number of characters selected in the text box|
|__HideSelection__|Gets or sets a value indicating whether the selected text remains highlighted even when the RadTextBox has lost the focus|
|__Lines__|Gets or sets the lines of text in multiline configurations|
|__AcceptsReturn__|Gets or sets a value indicating whether pressing ENTER in a multiline RadTextBox control creates a new line of text in the control or activates the default button for the form|
|__AcceptsTab__|Gets or sets a value indicating whether pressing the TAB key in a multiline text box control types a TAB character in the control instead of moving the focus to the next control in the tab order|
|__CharacterCasing__|Gets or sets a value indicating whether the RadTextBox control modifies the case of characters as they are typed|
|__Culture__|Gets or sets the current culture associated to the RadMasedkEditBox|

# RadMaskedEditBoxElement's Properties

|Property|Description|
|------|------|
|**EnableClickSelectionStart**|Enables the SelectionStartMouseClick functionality.|
|**SelectionStartOnMouseClick**|The selection start will be moved to this position when EnableClickSelectionStart is enabled.|
|**SelectionLengthOnMouseClick**|The selection length will be set to this value when EnableClickSelectionStart is enabled.|
|**ContextMenu**|Represent the RadMaskedEditBox ContextMenu.|
|**Provider**|Represents the provider that handles the applied MaskType functionality.|
|**AllowPromptAsInput**|Indicates whether the prompt char is allowed as input.|
|**ResultHint**|This returns the result hint for the last assignment to the property. If the assigned text could not be properly formatted, this will contain a hint as to why not. Positive values indicate success.  Negative values indicate failure.|
|**HintPosition**|This returns the result hint position for the last assignment to the property.|
|**UnmaskedText**|This read-only property returns the unmasked copy of the text.|
|**PromptChar**|This is used to set or get the prompt character for display in the label text.|
|**IncludePrompt**|Gets or sets whether or not prompt characters are displayed in the label text.|
|**EnableNullValueInput**|Gets or set a value indicating whether end users can set the value to NULL. This can be achieved by pressing Ctrl + Del or Ctrl + 0 key combinations.|

# Methods

|Method|Description|
|------|------|
|__Clear__|Clears all text from the text box control and Value|
|__ClearUndo__|Clears information about the most recent operation from the undo buffer of the text box|
|__SelectAll__|selects the whole text|

# Events

|Event|Description|
|------|------|
|__ValueChanged__|Occurs when the editing value has been changed|
|__ValueChanging__|Occurs when the editing value is changing|
|__KeyDown__|Occurs when the RadItem has focus and the user presses a key down|
|__KeyPress__|Occurs when the RadItem has focus and the user presses a key|
|__KeyUp__|Occurs when the RadItem has focus and the user releases the pressed key up|
|__MultilineChanged__|Occurs when the value of the __Multiline__ property has changed|
|__TextAlignChanged__|Occurs when the value of the TextAlign property has changed|

# See Also

* [Properties](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radmaskededitbox.html#properties)
* [Methods](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radmaskededitbox.html#methods)
* [Events](https://docs.telerik.com/devtools/winforms/api/telerik.wincontrols.ui.radmaskededitbox.html#events)

