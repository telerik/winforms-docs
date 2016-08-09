---
title: Text Editing
page_title: Text Editing | RadAutoCompleteBox
description: This article shows how you can edit the text in the code behind.
slug: winforms/editors/autocompletebox/text-editing
tags: text,editing
published: True
position: 5
previous_url: editors-autocompletebox-text-editing
---

# Text Editing

The editing point is determined by the caret position and selection in __RadAutoCompleteBox__. The editing position is visible only if the control is focused.
        

You can insert text programmatically at concrete position by using the __Insert__ method. In this case, the text is inserted at the position determined by the __SelectionStart__ property. If the __SelectionLength__ property is greater than zero, the inserted text replaces the selected text. 

#### Using the Insert method.

{{source=..\SamplesCS\editors\AutoCompleteBox.cs region=insert}} 
{{source=..\SamplesVB\editors\AutoCompleteBox.vb region=insert}} 

````C#
private void Insert()
{
    this.radAutoCompleteBox1.Text = "USA;";
    this.radAutoCompleteBox1.CaretIndex = 0;
    this.radAutoCompleteBox1.Insert("Canada;");
}

````
````VB.NET
Private Sub Insert()
    Me.RadAutoCompleteBox1.Text = "USA;"
    Me.RadAutoCompleteBox1.CaretIndex = 0
    Me.RadAutoCompleteBox1.Insert("Canada;")
End Sub

````

{{endregion}} 
 
>caption Figure 1: Inserting text.

![editors-autocompletebox-text-editing 001](images/editors-autocompletebox-text-editing001.png)

Alternatively, you can insert text at the end of the __RadAutoCompleteBox__ content by using the __AppendText__ method: 

#### Using the AppendText method. 

{{source=..\SamplesCS\editors\AutoCompleteBox.cs region=Append}} 
{{source=..\SamplesVB\editors\AutoCompleteBox.vb region=Append}} 

````C#
private void Append()
{
    this.radAutoCompleteBox1.Text = "IT Department;";
    this.radAutoCompleteBox1.AppendText("Marketing Team;");
}

````
````VB.NET
Private Sub Append()
    Me.RadAutoCompleteBox1.Text = "IT Department;"
    Me.RadAutoCompleteBox1.AppendText("Marketing Team;")
End Sub

````

{{endregion}} 
 
>caption Figure 2: The text is appended at the end.

![editors-autocompletebox-text-editing 002](images/editors-autocompletebox-text-editing002.png)

You can delete the selected text or character at the caret position by using the __Delete__ method: 

#### Using the Delete method.

{{source=..\SamplesCS\editors\AutoCompleteBox.cs region=Delete}} 
{{source=..\SamplesVB\editors\AutoCompleteBox.vb region=Delete}} 

````C#
private void DeleteText()
{
    this.radAutoCompleteBox1.Text = "Germany;USA;Brazil;Bulgaria;Croatia;Serbia;";
    this.radAutoCompleteBox1.Select(0, 8);
    this.radAutoCompleteBox1.Delete();
}

````
````VB.NET
Private Sub DeleteText()
    Me.RadAutoCompleteBox1.Text = "Germany;USA;Brazil;Bulgaria;Croatia;Serbia;"
    Me.RadAutoCompleteBox1.[Select](0, 8)
    Me.RadAutoCompleteBox1.Delete()
End Sub

````

{{endregion}} 
 
>caption Figure 3: The firs word is deleted. 

![editors-autocompletebox-text-editing 003](images/editors-autocompletebox-text-editing003.png)

Each editing operation raises the __TextChanging__ and __TextChanged__ events. Notice that you can prevent successful finishing of operation by subscribing to the __TextChanging__ event: 

#### Prevent deleting a tokenized text blocks in RadAutoCompleteBox.

{{source=..\SamplesCS\editors\AutoCompleteBox.cs region=PreventDeleteOfTokens}} 
{{source=..\SamplesVB\editors\AutoCompleteBox.vb region=PreventDeleteOfTokens}} 

````C#
void radAutoCompleteBox1_TextChanging(object sender, Telerik.WinControls.TextChangingEventArgs e)
{
    e.Cancel = string.IsNullOrEmpty(e.NewValue) && e.OldValue.Contains(this.radAutoCompleteBox1.Delimiter.ToString());
}

````
````VB.NET
Private Sub radAutoCompleteBox1_TextChanging(sender As Object, e As Telerik.WinControls.TextChangingEventArgs)
    e.Cancel = String.IsNullOrEmpty(e.NewValue) AndAlso e.OldValue.Contains(Me.RadAutoCompleteBox1.Delimiter.ToString())
End Sub

````

{{endregion}}  

The code above prevents deleting a tokenized text blocks in RadAutoCompleteBox.


# See Also

* [Caret Positioning and Selection]({%slug winforms/editors/autocompletebox/caret-positioning-and-selection%})
* [Creating Custom Blocks]({%slug winforms/editors/autocompletebox/creating-custom-blocks%})
* [Element Structure and Document Object Model]({%slug winforms/editors/autocompletebox/element-structure-and-document-object-model%})
* [Properties and Events]({%slug winforms/editors/autocompletebox/formatting-blocks%})
* [Auto-Complete]({%slug winforms/editors/autocompletebox/auto-complete%})