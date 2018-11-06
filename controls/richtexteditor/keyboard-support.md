---
title: Keyboard Support
page_title: Keyboard Support | RadRichTextEditor
description: RadRichTextEditor is a control that is able to display and edit rich-text content including formatted text arranged in pages, paragraphs, spans (runs), tables, etc. 
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

{{source=..\SamplesCS\RichTextEditor\KeyboardSupport.cs region=input}} 
{{source=..\SamplesVB\RichTextEditor\KeyboardSupport.vb region=input}} 

````C#
    
public class MyInputBehavior : Telerik.WinForms.RichTextEditor.RichTextEditorInputBehavior
{
    public MyInputBehavior(RadRichTextBox editor) : base(editor)
    {
    }
    protected override void PerformCopyOperation(System.Windows.Forms.KeyEventArgs e)
    {
        base.PerformCutOperation(e);
    }      
}

````
````VB.NET
Public Class MyInputBehavior
    Inherits Telerik.WinForms.RichTextEditor.RichTextEditorInputBehavior
    Public Sub New(ByVal editor As RadRichTextBox)
        MyBase.New(editor)
    End Sub
    Protected Overrides Sub PerformCopyOperation(ByVal e As System.Windows.Forms.KeyEventArgs)
        MyBase.PerformCutOperation(e)
    End Sub
End Class

````

{{endregion}} 

The default behavior can be changed like this:

{{source=..\SamplesCS\RichTextEditor\KeyboardSupport.cs region=change}} 
{{source=..\SamplesVB\RichTextEditor\KeyboardSupport.vb region=change}} 

````C#
            
radRichTextEditor1.InputHandler = new MyInputBehavior(radRichTextEditor1.RichTextBoxElement);

````
````VB.NET
radRichTextEditor1.InputHandler = New MyInputBehavior(radRichTextEditor1.RichTextBoxElement)

````

{{endregion}} 

Another way to customize the control behavior is to use the __PreviewEditorKeyDown__ event. For example,          pressing **RightAlt** causes **Control** and **Alt** to be sent as arguments to the **PreviewKeyDown** event. Thus, **RightAlt**+**E** triggers a formatting command for paragraph alignment instead of inputting the **ę** character. In that case, you can handle the **PreviewEditorKeyDown** event in the following way:

{{source=..\SamplesCS\RichTextEditor\KeyboardSupport.cs region=keyDown}} 
{{source=..\SamplesVB\RichTextEditor\KeyboardSupport.vb region=keyDown}} 

````C#
    
void RichTextBoxElement_PreviewEditorKeyDown(object sender, PreviewEditorKeyEventArgs e)
{
    if ((Keyboard.IsKeyDown(Key.LeftShift) || Keyboard.IsKeyDown(Key.RightShift)))
    {
        e.SuppressDefaultAction = true;
    }
}

````
````VB.NET
Private Sub RichTextBoxElement_PreviewEditorKeyDown(ByVal sender As Object, ByVal e As PreviewEditorKeyEventArgs)
    If (Keyboard.IsKeyDown(Key.LeftShift) OrElse Keyboard.IsKeyDown(Key.RightShift)) Then
        e.SuppressDefaultAction = True
    End If
End Sub

````

{{endregion}} 

# See Also

 * [Clipboard Support]({%slug winforms/richtexteditor-/features/clipboard-support%})

 * [Formatting API]({%slug winforms/richtexteditor-/getting-started/formatting-api%})
