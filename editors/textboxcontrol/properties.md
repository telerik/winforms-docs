---
title: Properties and Events
page_title: Properties and Events| RadTextBoxControl
description: This article shows the most commonly used properties and events of RadTextBoxControl.
slug: winforms/editors/textboxcontrol/properties
tags: properties
published: True
position: 8
---

# Properties

|__Property__|__Description__|
|---|---|
|__ListElement__| Gets the auto-complete list element.|
|__UseSystemPasswordChar__|Gets or sets a value indicating whether the text in view should appear as the default password character.|
|__PasswordChar__|Gets or sets the character used to mask characters of a password in a single-line|
|__HideSelection__|Gets or sets a value indicating whether the selected text in the text box control remains highlighted when the element loses focus.|
|__CaretIndex__|Gets or sets the caret position.|
|__SelectionLength__| Gets or sets the number of characters selected in the text box.|
|__TextLength__|The length of the text.|
|__MaxLength__|Gets or sets the maximum number of characters the user can type or paste into the text box element.|
|__Text__|Gets or sets the current text in the text box element.|
|__NullText__|Gets or sets the prompt text that is displayed when the text box contains no text.|
|__NullTextColor__|Gets or sets the color of the null text.|
|__TextAlign__|Gets or sets how the text is horizontally aligned in the element.|
|__Lines__|Gives access to the lines collection|
|__SelectedText__|Gets or sets a value indicating the currently selected text in the text box.|
|__AcceptsTab__|Gets or sets a value indicating whether pressing the TAB key in a multiline text box element types a TAB character in the element instead of moving the focus to the next element in the tab order.|
|__AcceptsReturn__|Gets or sets a value indicating whether pressing ENTER in a multiline TextBox control creates a new line of text in the control or activates the default button for the form.|
|__Multiline__|Gets or sets a value indicating whether this is a multiline text box.|
|__WordWrap__|Indicates whether a multiline text box control automatically wraps words to the beginning of the next line when necessary.|
|__SelectionColor__|Gets or sets the color of the selection.|
|__SelectionOpacity__|Gets or sets the selection opacity.|
|__IsReadOnly__|Gets or sets a value indicating whether text in the text box is read-only.|
|__IsReadOnlyCaretVisible__|Gets or sets a value indicating whether the caret is visible in read only mode.|

# Events

|__Event__|__Description__|
|---|---|
|__SelectionChanging__|Occurs when text selection is changing.|
|__SelectionChanged__|Occurs when text selection is changed.|
|__TextChanging__|Occurs when the text is changing.|
|__TextBlockFormatting__|Use this event to change the styles of the words.|
|__CreateTextBlock__|Occurs when an instance of ITextBlock instance is created.|
|__ContextMenuOpening__|Occurs before the default context menu is opened.|
 