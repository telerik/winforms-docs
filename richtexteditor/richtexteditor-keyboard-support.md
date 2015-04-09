---
title: Keyboard Support
page_title: Keyboard Support
description: Keyboard Support
slug: richtexteditor-keyboard-support
tags: keyboard,support
published: True
position: 9
---

# Keyboard Support



Telerik __RadRichTextEditor__ for WinForms supports shortcuts. There are default key-bindings defined for
        the most widely used operations, namely:
      

## 
<table> <th><tr><td>

<b>Action</b></td><td>

<b>Hotkey</b></td></tr></th><tr><td>

Copy</td><td>

Ctrl+C</td></tr><tr><td>

Paste</td><td>

Ctrl+V</td></tr><tr><td>

Cut</td><td>

Ctrl+X</td></tr><tr><td>

Delete</td><td>

Delete</td></tr><tr><td>

Undo</td><td>

Ctrl+Z</td></tr><tr><td>

Redo</td><td>

Ctrl+Y</td></tr><tr><td>

InsertLineBreak</td><td>

Shift+Enter</td></tr><tr><td>

InsertPageBreak</td><td>

Ctrl+Enter</td></tr><tr><td>

ToggleBold</td><td>

Ctrl+B, Ctrl+Shift+B</td></tr><tr><td>

ToggleItalic</td><td>

Ctrl+I, Ctrl+Shift+I</td></tr><tr><td>

ToggleSuperscript</td><td>

Ctrl+'+'</td></tr><tr><td>

ToggleSubscript</td><td>

Ctrl+Shift+'+'</td></tr><tr><td>

ToggleUnderline</td><td>

Ctrl+U</td></tr><tr><td>

ClearFormatting</td><td>

Ctrl+Space</td></tr><tr><td>

ChangeTextAlignment with parameter RadTextAlignment.Justify</td><td>

Ctrl+J</td></tr><tr><td>

ChangeTextAlignment with parameter RadTextAlignment.Right</td><td>

Ctrl+R</td></tr><tr><td>

ChangeTextAlignment with parameter RadTextAlignment.Left</td><td>

Ctrl+L</td></tr><tr><td>

ChangeTextAlignment with parameter RadTextAlignment.Center</td><td>

Ctrl+E</td></tr><tr><td>

SelectAll</td><td>

Ctrl+A</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.Previous</td><td>

Left Arrow</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.Next</td><td>

Right Arrow</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.PreviousWord</td><td>

Ctrl+Left Arrow</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.NextWord</td><td>

Ctrl+Right Arrow</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.Up</td><td>

Upper Arrow</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.Down</td><td>

Down Arrow</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections. ParagraphStart</td><td>

Ctrl+Upper Arrow</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections. ParagraphEnd</td><td>

Ctrl+Down Arrow</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.Home</td><td>

Home</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.DocumentStart</td><td>

Ctrl+Home</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.End</td><td>

End</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.DocumentEnd</td><td>

Ctrl+End</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.PageUp</td><td>

PageUp</td></tr><tr><td>

MoveCaret with parameter MoveCaretDirections.PageDown</td><td>

PageDown</td></tr><tr><td>

ShowFindReplaceDialog</td><td>

Ctrl+F</td></tr><tr><td>

ShowFontPropertiesDialog</td><td>

Ctrl+D</td></tr><tr><td>

ShowInsertHyperlinkDialog</td><td>

Ctrl+K</td></tr></table>

Now these key shortcuts can be overridden and customized to the liking of the user. This can be achieved by creating a custom
          __RichTextEditorInputBehavior__ descendant
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\KeyboardSupport.cs region=input}}
	        
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
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\KeyboardSupport.vb region=input}}
	
	Public Class MyInputBehavior
	    Inherits Telerik.WinForms.RichTextEditor.RichTextEditorInputBehavior
	
	    Public Sub New(ByVal editor As RadRichTextBox)
	        MyBase.New(editor)
	    End Sub
	    Protected Overrides Sub PerformCopyOperation(ByVal e As System.Windows.Forms.KeyEventArgs)
	        MyBase.PerformCutOperation(e)
	    End Sub
	End Class
	
	#End Region
	



the default behavior can be changed like this:

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\KeyboardSupport.cs region=change}}
	            
	            radRichTextEditor1.InputHandler = new MyInputBehavior(radRichTextEditor1.RichTextBoxElement);
	        
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\KeyboardSupport.vb region=change}}
	
	        radRichTextEditor1.InputHandler = New MyInputBehavior(radRichTextEditor1.RichTextBoxElement)
	
	        '#End Region
	    End Sub
	
	#Region "keyDown"
	
	    Private Sub RichTextBoxElement_PreviewEditorKeyDown(ByVal sender As Object, ByVal e As PreviewEditorKeyEventArgs)
	        If (Keyboard.IsKeyDown(Key.LeftShift) OrElse Keyboard.IsKeyDown(Key.RightShift)) Then
	            e.SuppressDefaultAction = True
	        End If
	    End Sub
	
	#End Region
	
	End Class
	
	#Region "input"
	
	Public Class MyInputBehavior
	    Inherits Telerik.WinForms.RichTextEditor.RichTextEditorInputBehavior
	
	    Public Sub New(ByVal editor As RadRichTextBox)
	        MyBase.New(editor)
	    End Sub
	    Protected Overrides Sub PerformCopyOperation(ByVal e As System.Windows.Forms.KeyEventArgs)
	        MyBase.PerformCutOperation(e)
	    End Sub
	End Class
	
	#End Region
	



Another way to customize the control behavior is to use the __PreviewEditorKeyDown__ event. For example,
          pressing RightAlt causes Control and Alt to be sent as arguments to the PreviewKeyDown event. Thus, RightAlt+E triggers a
          formatting command for paragraph alignment instead of inputting the ę character. In that case, you can handle the PreviewEditorKeyDown 
          event in the following way:
        

#### __[C#] __

{{source=..\SamplesCS\RichTextEditor\KeyboardSupport.cs region=keyDown}}
	            
	        void RichTextBoxElement_PreviewEditorKeyDown(object sender, PreviewEditorKeyEventArgs e)
	        {
	            if ((Keyboard.IsKeyDown(Key.LeftShift) || Keyboard.IsKeyDown(Key.RightShift)))
	            {
	                e.SuppressDefaultAction = true;
	            }
	        }
	
	{{endregion}}



#### __[VB.NET] __

{{source=..\SamplesVB\RichTextEditor\KeyboardSupport.vb region=keyDown}}
	
	    Private Sub RichTextBoxElement_PreviewEditorKeyDown(ByVal sender As Object, ByVal e As PreviewEditorKeyEventArgs)
	        If (Keyboard.IsKeyDown(Key.LeftShift) OrElse Keyboard.IsKeyDown(Key.RightShift)) Then
	            e.SuppressDefaultAction = True
	        End If
	    End Sub
	
	#End Region
	
	End Class
	
	#Region "input"
	
	Public Class MyInputBehavior
	    Inherits Telerik.WinForms.RichTextEditor.RichTextEditorInputBehavior
	
	    Public Sub New(ByVal editor As RadRichTextBox)
	        MyBase.New(editor)
	    End Sub
	    Protected Overrides Sub PerformCopyOperation(ByVal e As System.Windows.Forms.KeyEventArgs)
	        MyBase.PerformCutOperation(e)
	    End Sub
	End Class
	
	#End Region
	





# See Also

 * [Clipboard Support]({%slug richtexteditor-features-clipboard-support%})

 * [Formatting API]({%slug richtexteditor-getting-started-formatting-api%})
