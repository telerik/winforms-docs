---
title: Keyboard Support
page_title: Keyboard Support - RadSyntaxEditor
description: RadSyntaxEditor supports numerous keyboard combinations 
slug: syntax-editor-features-keyboard-support
tags: features, keyboard
published: True
position: 6
---

# Keyboard Support

The keyboard combinations supported by the **RadSyntaxEditor** are listed in the table below.

|Hot Key(s)|Action|
|---|---|
|Left arrow|Move to previous character|
|Right arrow|Move to next character|
|Left arrow + Ctrl|Move to previous word|
|Right arrow + Ctrl|Move to next word|
|Up arrow|Move line up|
|Down arrow|Move line down|
|Home|Move to home|
|End|Move to line end|
|Page Up| Move page up|
|Page Down| Move page down|
|Ctrl + Home|Move to start of document|
|Ctrl + End|Move to end of document|
|Ctrl + A|Select all|
|Ctrl + C|Copy|
|Ctrl + Insert|Copy|
|Ctrl + Space|Show code completion prompt|
|Ctrl + F|Open the find dialog|
|Escape|Close the find dialog|
|Backspace|Delete the previous character|
|Delete|Delete the next character|
|Ctrl + Backspace|Delete the previous word|
|Ctrl + Delete|Delete the next word|
|Tab|Indent|
|Shift + Tab|Unindent|
|Ctrl + Z|Undo|
|Ctrl + Y|Redo|
|Ctrl + X|Cut|
|Shift + Delete|Cut|
|Ctrl + V|Paste|
|Shift + Insert|Paste|
|Insert|Toggle insert|

If you need to handle a key combination which is not listed above, you can do so by handling the **PreviewSyntaxEditorKeyDown** event.


{{source=..\SamplesCS\SyntaxEditor\SyntaxEditorLayers.cs region=Keyboard}}
{{source=..\SamplesVB\SyntaxEditor\SyntaxEditorLayers.vb region=Keyboard}}

````C#
private void radSyntaxEditor1_PreviewSyntaxEditorKeyDown(object sender, PreviewSyntaxEditorKeyEventArgs e)
{
    if (e.Key == Keys.S && Keyboard.Modifiers == Keys.Control)
    {
        e.OriginalArgs.Handled = true;
    }
}     

````
````VB.NET
Private Sub RadSyntaxEditor_PreviewSyntaxEditorKeyDown(sender As Object, e As PreviewSyntaxEditorKeyEventArgs)
    If e.Key = Keys.S AndAlso Telerik.WinControls.SyntaxEditor.UI.Keyboard.Modifiers = Keys.Control Then
        e.OriginalArgs.Handled = True
    End If
End Sub


````

{{endregion}}

 
