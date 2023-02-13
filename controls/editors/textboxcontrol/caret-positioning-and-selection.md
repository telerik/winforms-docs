---
title: Caret positioning and selection
page_title: Caret positioning and selection - WinForms TextBoxControl
description: Use the API of RadTextBoxControl to position the caret or select any part of the text.
slug: winforms/editors/textboxcontrol/caret-positioning-and-selection
tags: caret,positioning,and,selection
published: True
position: 5
previous_url: editors-textboxcontrol-caret-positioning-and-selection
---

# Caret positioning and selection

The positioning and selection in __RadTextBoxControl__ can be performed programmatically as well as using keyboard and mouse input.

To select text you can press the shift key followed by left mouse button or one of the navigation keys of the keyboard (up, down, left, right buttons).

Programmatically selection can be performed by using the __SelectionStart__ and __SelectionLength__ properties of RadTextBoxControl.
        

The __SelectionStart__ property is a number that indicates the insertion point within the string of text, with 0 being the left-most position. If the __SelectionStart__ property is set to a value equal to or greater than the number of characters in the text box, the insertion point is placed after the last character.
        

The __SelectionLength__ property is a numeric value that sets the width of the insertion point. Setting the __SelectionLength__ to a number greater than 0 causes that number of characters to be selected, starting from the current insertion point.

#### Select part of the text using the __SelectionStart__ and __SelectionLenght__ properties.

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
 
#### Use the __Select__ method to select the part of the text:

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
 
The both approaches produce same result:

![WinForms RadTextBoxControl Caret Position Selection](images/editors-textboxcontrol-caret-positioning-and-selection001.png)

You can access the selected text through the __SelectedText__ property. To select the whole text use the __SelectAll__ method.
		

Note that you can use the __CaretIndex__ property to move the caret at specified position and clear the selection.
		
# See Also

* [AutoComplete]({%slug winforms/editors/textboxcontrol/autocomplete%})
* [Creating custom blocks]({%slug winforms/editors/textboxcontrol/creating-custom-blocks%})
* [Structure]({%slug winforms/editors/textboxcontrol/element-structure-and-document-object-model%})
* [Properties and Events]({%slug winforms/editors/textboxcontrol/properties%})
* [Text editing]({%slug winforms/editors/textboxcontrol/text-editing%})
