---
title: Caret positioning and selection
page_title: Caret positioning and selection | UI for WinForms Documentation
description: Caret positioning and selection
slug: winforms/editors/textboxcontrol/caret-positioning-and-selection
tags: caret,positioning,and,selection
published: True
position: 4
---

# Caret positioning and selection
 
## 

The positioning and selection in RadTextBoxControl can be performed programmatically as well as using keyboard and mouse input.
        

To select text you can press the shift key followed by left mouse button or one of the navigation keys of the keyboard (up, down, left, right buttons).
        

Programmatically selection can be performed by using the __SelectionStart__ and __SelectionLength__ properties of RadTextBoxControl.
        

The __SelectionStart__ property is a number that indicates the insertion point within the string of text, with 0 being the left-most position. If the __SelectionStart__ property is set to a value equal to or greater than the number of characters in the text box, the insertion point is placed after the last character.
        

The __SelectionLength__ property is a numeric value that sets the width of the insertion point. Setting the __SelectionLength__ to a number greater than 0 causes that number of characters to be selected, starting from the current insertion point.

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=SetSelection}} 
{{source=..\SamplesVB\Editors\TextBoxControl.vb region=SetSelection}} 

````C#
private void SetSelection()
{
    this.radTextBoxControl1.Text = "Hello, John Green";
    this.radTextBoxControl1.SelectionStart = 7;
    this.radTextBoxControl1.SelectionLength = 4;
}

````
````VB.NET
Private Sub SetSelection()
    Me.RadTextBoxControl1.Text = "Hello, John Green"
    Me.RadTextBoxControl1.SelectionStart = 7
    Me.RadTextBoxControl1.SelectionLength = 4
End Sub

````

{{endregion}} 
 
Alternatively, you can use the Select method to select the same part of the text: 

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=Select}} 
{{source=..\SamplesVB\Editors\TextBoxControl.vb region=Select}} 

````C#
private void SelectText()
{
    this.radTextBoxControl1.Text = "Hello, John Green";
    this.radTextBoxControl1.Select(7, 4);
}

````
````VB.NET
Private Sub SelectText()
    Me.RadTextBoxControl1.Text = "Hello, John Green"
    Me.RadTextBoxControl1.[Select](7, 4)
End Sub

````

{{endregion}} 
 
The both approaches produce same result:![editors-textboxcontrol-caret-positioning-and-selection 001](images/editors-textboxcontrol-caret-positioning-and-selection001.png)

You can access the selected text through the __SelectedText__ property. To select the whole text use the __SelectAll__ method.
		

Note that you can use the __CaretIndex__ property to move the caret at specified position and clear the selection.
		
