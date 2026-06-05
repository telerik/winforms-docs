---
title: Keyboard Support
page_title: Keyboard Support - WinForms RichTextEditor Control
description: WinForms RichTextEditor supports shortcuts. There are default key-bindings defined for the most widely used operations.
slug: winforms/richtexteditor-/keyboard-support
tags: keyboard,support
published: True
position: 10
previous_url: richtexteditor-keyboard-support
---

# Keyboard Support
Telerik __RadRichTextEditor__ for WinForms supports shortcuts. There are default key-bindings defined for the most widely used operations, namely:

|  __Action__  |  __Hotkey__  |
| ------ | ------ |
|Copy|Ctrl+C|
|Paste|Ctrl+V|
|Cut|Ctrl+X|
|Delete|Delete|
|Undo|Ctrl+Z|
|Redo|Ctrl+Y|
|InsertLineBreak|Shift+Enter|
|InsertPageBreak|Ctrl+Enter|
|ToggleBold|Ctrl+B, Ctrl+Shift+B|
|ToggleItalic|Ctrl+I, Ctrl+Shift+I|
|ToggleSuperscript|Ctrl+'+'|
|ToggleSubscript|Ctrl+Shift+'+'|
|ToggleUnderline|Ctrl+U|
|ClearFormatting|Ctrl+Space|
|Copy Formatting|Ctrl+Shift+C|
|Paste Formatting|Ctrl+Shift+V|
|Cancel Format Painter|Esc|
|ChangeTextAlignment with parameter RadTextAlignment.Justify|Ctrl+J|
|ChangeTextAlignment with parameter RadTextAlignment.Right|Ctrl+R|
|ChangeTextAlignment with parameter RadTextAlignment.Left|Ctrl+L|
|ChangeTextAlignment with parameter RadTextAlignment.Center|Ctrl+E|
|SelectAll|Ctrl+A|
|MoveCaret with parameter MoveCaretDirections.Previous|Left Arrow|
|MoveCaret with parameter MoveCaretDirections.Next|Right Arrow|
|MoveCaret with parameter MoveCaretDirections.PreviousWord|Ctrl+Left Arrow|
|MoveCaret with parameter MoveCaretDirections.NextWord|Ctrl+Right Arrow|
|MoveCaret with parameter MoveCaretDirections.Up|Upper Arrow|
|MoveCaret with parameter MoveCaretDirections.Down|Down Arrow|
|MoveCaret with parameter MoveCaretDirections. ParagraphStart|Ctrl+Upper Arrow|
|MoveCaret with parameter MoveCaretDirections. ParagraphEnd|Ctrl+Down Arrow|
|MoveCaret with parameter MoveCaretDirections.Home|Home|
|MoveCaret with parameter MoveCaretDirections.DocumentStart|Ctrl+Home|
|MoveCaret with parameter MoveCaretDirections.End|End|
|MoveCaret with parameter MoveCaretDirections.DocumentEnd|Ctrl+End|
|MoveCaret with parameter MoveCaretDirections.PageUp|PageUp|
|MoveCaret with parameter MoveCaretDirections.PageDown|PageDown|
|ShowFindReplaceDialog|Ctrl+F|
|ShowFontPropertiesDialog|Ctrl+D|
|ShowInsertHyperlinkDialog|Ctrl+K|

Now, these key shortcuts can be overridden and customized to the liking of the user. This can be achieved by creating a custom __RichTextEditorInputBehavior__ descendant:

<snippet id='richtexteditor-keyboardsupport-input-cs' />
<snippet id='richtexteditor-keyboardsupport-input-vb' />



The default behavior can be changed like this:

<snippet id='richtexteditor-keyboardsupport-change-cs' />
<snippet id='richtexteditor-keyboardsupport-change-vb' />



Another way to customize the control behavior is to use the __PreviewEditorKeyDown__ event. For example,          pressing **RightAlt** causes **Control** and **Alt** to be sent as arguments to the **PreviewKeyDown** event. Thus, **RightAlt**+**E** triggers a formatting command for paragraph alignment instead of inputting the **ę** character. In that case, you can handle the **PreviewEditorKeyDown** event in the following way:

<snippet id='richtexteditor-keyboardsupport-keydown-cs' />
<snippet id='richtexteditor-keyboardsupport-keydown-vb' />



# See Also

 * [Clipboard Support]({%slug winforms/richtexteditor-/features/clipboard-support%})

 * [Formatting API]({%slug winforms/richtexteditor-/getting-started/formatting-api%})
