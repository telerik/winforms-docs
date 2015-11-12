---
title: Getting Started
page_title: Getting Started | UI for WinForms Documentation
description: Getting Started
slug: winforms/editors/textboxcontrol/getting-started
tags: getting,started
published: True
position: 2
---

# Getting Started
 
## 

The RadTextBoxControl is used to get input from the user or to display text. The control can display multiple lines, wrap text to the size of the control, add basic formatting, use themes, and the main differences with RadTextBox - can be transparent and use gradients. The text box control provides a single format style for the text displayed or entered.
         
The text displayed by the control resides in the Text property. It can be set at design time via the Properties window in Visual Studio, at run time in code, or by user input at run time. The current contents of a text box can be retrieved at run time by via the Text property.
        

The code below sets text in the control at run time: 

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=SetText}} 
{{source=..\SamplesVB\Editors\TextBoxControl.vb region=SetText}} 

````C#
private void SetDefaultText()
{
    this.radTextBoxControl1.Text = "Type your name here.";
}

````
````VB.NET
Private Sub SetDefaultText()
    Me.RadTextBoxControl1.Text = "Type your name here."
End Sub
 Region
ion "Lines"
Private Sub SetLines()
    Dim lines As String() = New String() {"Dear Sir or Madam,", "I writing to you regarding your publication in Daily Mail.", "Could you give me the resources that you have used?"}
    Me.RadTextBoxControl1.Lines = lines
End Sub
 Region
ion "SetNullText"
Private Sub SetNullText()
    Me.RadTextBoxControl1.NullText = "Type your name..."
End Sub
 Region
ion "SetTextAlign"
Private Sub SetTextAlign()
    Me.RadTextBoxControl1.TextAlign = HorizontalAlignment.Left
End Sub
 Region
ion "SetSelection"
Private Sub SetSelection()
    Me.RadTextBoxControl1.Text = "Hello, John Green"
    Me.RadTextBoxControl1.SelectionStart = 7
    Me.RadTextBoxControl1.SelectionLength = 4
End Sub
 Region
ion "Select"
Private Sub SelectText()
    Me.RadTextBoxControl1.Text = "Hello, John Green"
    Me.RadTextBoxControl1.[Select](7, 4)
End Sub
 Region
ion "Insert"
Private Sub Insert()
    Me.RadTextBoxControl1.Text = "Green"
    Me.RadTextBoxControl1.CaretIndex = 0
    Me.RadTextBoxControl1.Insert("John ")
End Sub
 Region
ion "AppendText"
Private Sub AppendText()
    Me.RadTextBoxControl1.Text = "Samuel"
    Me.RadTextBoxControl1.AppendText(" Jackson")
End Sub
 Region
ion "Delete"
Private Sub DeleteSelection()
    Me.RadTextBoxControl1.Text = "John Green"
    Me.RadTextBoxControl1.[Select](0, 4)
    Me.RadTextBoxControl1.Delete()
End Sub
 Region
ion "TextChanging"
Private Sub radTextBoxControl1_TextChanging(sender As Object, e As Telerik.WinControls.TextChangingEventArgs)
    e.Cancel = String.IsNullOrEmpty(e.NewValue)
End Sub
 Region
ion "AddAutoCompleteItems"
Private Sub AddAutoCompleteItems()
    Me.RadTextBoxControl1.AutoCompleteMode = AutoCompleteMode.Suggest
    Dim autoCompleteItems As RadListDataItemCollection = Me.RadTextBoxControl1.AutoCompleteItems
    autoCompleteItems.Add(New RadListDataItem("Luke"))
    autoCompleteItems.Add(New RadListDataItem("Max"))
    autoCompleteItems.Add(New RadListDataItem("Adam"))
    autoCompleteItems.Add(New RadListDataItem("Henry"))
    autoCompleteItems.Add(New RadListDataItem("Jack"))
    autoCompleteItems.Add(New RadListDataItem("Ben"))
    autoCompleteItems.Add(New RadListDataItem("Tyler"))
    autoCompleteItems.Add(New RadListDataItem("Ethan"))
    autoCompleteItems.Add(New RadListDataItem("David"))
    autoCompleteItems.Add(New RadListDataItem("Mike"))
End Sub
 Region
Private Sub formatting1()
    '#Region "Formatting1"
    AddHandler Me.RadTextBoxControl1.TextBlockFormatting, AddressOf Me.OnTextBlockFormatting
    Me.RadTextBoxControl1.Text = "This is important text."

````

{{endregion}} 


![editors-textboxcontrol-getting-started 001](images/editors-textboxcontrol-getting-started001.png)

You can also define the lines in the text box at run time: 

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=Lines}} 
{{source=..\SamplesVB\Editors\TextBoxControl.vb region=Lines}} 

````C#
private void SetLines()
{
    string[] lines = new string[]
    {
        "Dear Sir or Madam,",
        "I writing to you regarding your publication in Daily Mail.",
        "Could you give me the resources that you have used?"
    };
    this.radTextBoxControl1.Lines = lines;
}

````
````VB.NET
Private Sub SetLines()
    Dim lines As String() = New String() {"Dear Sir or Madam,", "I writing to you regarding your publication in Daily Mail.", "Could you give me the resources that you have used?"}
    Me.RadTextBoxControl1.Lines = lines
End Sub
 Region
ion "SetNullText"
Private Sub SetNullText()
    Me.RadTextBoxControl1.NullText = "Type your name..."
End Sub
 Region
ion "SetTextAlign"
Private Sub SetTextAlign()
    Me.RadTextBoxControl1.TextAlign = HorizontalAlignment.Left
End Sub
 Region
ion "SetSelection"
Private Sub SetSelection()
    Me.RadTextBoxControl1.Text = "Hello, John Green"
    Me.RadTextBoxControl1.SelectionStart = 7
    Me.RadTextBoxControl1.SelectionLength = 4
End Sub
 Region
ion "Select"
Private Sub SelectText()
    Me.RadTextBoxControl1.Text = "Hello, John Green"
    Me.RadTextBoxControl1.[Select](7, 4)
End Sub
 Region
ion "Insert"
Private Sub Insert()
    Me.RadTextBoxControl1.Text = "Green"
    Me.RadTextBoxControl1.CaretIndex = 0
    Me.RadTextBoxControl1.Insert("John ")
End Sub
 Region
ion "AppendText"
Private Sub AppendText()
    Me.RadTextBoxControl1.Text = "Samuel"
    Me.RadTextBoxControl1.AppendText(" Jackson")
End Sub
 Region
ion "Delete"
Private Sub DeleteSelection()
    Me.RadTextBoxControl1.Text = "John Green"
    Me.RadTextBoxControl1.[Select](0, 4)
    Me.RadTextBoxControl1.Delete()
End Sub
 Region
ion "TextChanging"
Private Sub radTextBoxControl1_TextChanging(sender As Object, e As Telerik.WinControls.TextChangingEventArgs)
    e.Cancel = String.IsNullOrEmpty(e.NewValue)
End Sub
 Region
ion "AddAutoCompleteItems"
Private Sub AddAutoCompleteItems()
    Me.RadTextBoxControl1.AutoCompleteMode = AutoCompleteMode.Suggest
    Dim autoCompleteItems As RadListDataItemCollection = Me.RadTextBoxControl1.AutoCompleteItems
    autoCompleteItems.Add(New RadListDataItem("Luke"))
    autoCompleteItems.Add(New RadListDataItem("Max"))
    autoCompleteItems.Add(New RadListDataItem("Adam"))
    autoCompleteItems.Add(New RadListDataItem("Henry"))
    autoCompleteItems.Add(New RadListDataItem("Jack"))
    autoCompleteItems.Add(New RadListDataItem("Ben"))
    autoCompleteItems.Add(New RadListDataItem("Tyler"))
    autoCompleteItems.Add(New RadListDataItem("Ethan"))
    autoCompleteItems.Add(New RadListDataItem("David"))
    autoCompleteItems.Add(New RadListDataItem("Mike"))
End Sub
 Region
Private Sub formatting1()
    '#Region "Formatting1"
    AddHandler Me.RadTextBoxControl1.TextBlockFormatting, AddressOf Me.OnTextBlockFormatting
    Me.RadTextBoxControl1.Text = "This is important text."

````

{{endregion}} 


![editors-textboxcontrol-getting-started 002](images/editors-textboxcontrol-getting-started002.png)

By setting the __NullText__ property, the control will display a custom string when the __Text__ property is empty or null: 

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=SetNullText}} 
{{source=..\SamplesVB\Editors\TextBoxControl.vb region=SetNullText}} 

````C#
private void SetNullText()
{
    this.radTextBoxControl1.NullText = "Type your name...";
}

````
````VB.NET
Private Sub SetNullText()
    Me.RadTextBoxControl1.NullText = "Type your name..."
End Sub
 Region
ion "SetTextAlign"
Private Sub SetTextAlign()
    Me.RadTextBoxControl1.TextAlign = HorizontalAlignment.Left
End Sub
 Region
ion "SetSelection"
Private Sub SetSelection()
    Me.RadTextBoxControl1.Text = "Hello, John Green"
    Me.RadTextBoxControl1.SelectionStart = 7
    Me.RadTextBoxControl1.SelectionLength = 4
End Sub
 Region
ion "Select"
Private Sub SelectText()
    Me.RadTextBoxControl1.Text = "Hello, John Green"
    Me.RadTextBoxControl1.[Select](7, 4)
End Sub
 Region
ion "Insert"
Private Sub Insert()
    Me.RadTextBoxControl1.Text = "Green"
    Me.RadTextBoxControl1.CaretIndex = 0
    Me.RadTextBoxControl1.Insert("John ")
End Sub
 Region
ion "AppendText"
Private Sub AppendText()
    Me.RadTextBoxControl1.Text = "Samuel"
    Me.RadTextBoxControl1.AppendText(" Jackson")
End Sub
 Region
ion "Delete"
Private Sub DeleteSelection()
    Me.RadTextBoxControl1.Text = "John Green"
    Me.RadTextBoxControl1.[Select](0, 4)
    Me.RadTextBoxControl1.Delete()
End Sub
 Region
ion "TextChanging"
Private Sub radTextBoxControl1_TextChanging(sender As Object, e As Telerik.WinControls.TextChangingEventArgs)
    e.Cancel = String.IsNullOrEmpty(e.NewValue)
End Sub
 Region
ion "AddAutoCompleteItems"
Private Sub AddAutoCompleteItems()
    Me.RadTextBoxControl1.AutoCompleteMode = AutoCompleteMode.Suggest
    Dim autoCompleteItems As RadListDataItemCollection = Me.RadTextBoxControl1.AutoCompleteItems
    autoCompleteItems.Add(New RadListDataItem("Luke"))
    autoCompleteItems.Add(New RadListDataItem("Max"))
    autoCompleteItems.Add(New RadListDataItem("Adam"))
    autoCompleteItems.Add(New RadListDataItem("Henry"))
    autoCompleteItems.Add(New RadListDataItem("Jack"))
    autoCompleteItems.Add(New RadListDataItem("Ben"))
    autoCompleteItems.Add(New RadListDataItem("Tyler"))
    autoCompleteItems.Add(New RadListDataItem("Ethan"))
    autoCompleteItems.Add(New RadListDataItem("David"))
    autoCompleteItems.Add(New RadListDataItem("Mike"))
End Sub
 Region
Private Sub formatting1()
    '#Region "Formatting1"
    AddHandler Me.RadTextBoxControl1.TextBlockFormatting, AddressOf Me.OnTextBlockFormatting
    Me.RadTextBoxControl1.Text = "This is important text."

````

{{endregion}} 


![editors-textboxcontrol-getting-started 003](images/editors-textboxcontrol-getting-started003.png)

Based on the value set to the __TextAlign__ property, the control will display its conentent aligned to the left, center or right: 

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=SetTextAlign}} 
{{source=..\SamplesVB\Editors\TextBoxControl.vb region=SetTextAlign}} 

````C#
public void SetTextAlign()
{
    this.radTextBoxControl1.TextAlign = HorizontalAlignment.Left;
}

````
````VB.NET
Private Sub SetTextAlign()
    Me.RadTextBoxControl1.TextAlign = HorizontalAlignment.Left
End Sub
 Region
ion "SetSelection"
Private Sub SetSelection()
    Me.RadTextBoxControl1.Text = "Hello, John Green"
    Me.RadTextBoxControl1.SelectionStart = 7
    Me.RadTextBoxControl1.SelectionLength = 4
End Sub
 Region
ion "Select"
Private Sub SelectText()
    Me.RadTextBoxControl1.Text = "Hello, John Green"
    Me.RadTextBoxControl1.[Select](7, 4)
End Sub
 Region
ion "Insert"
Private Sub Insert()
    Me.RadTextBoxControl1.Text = "Green"
    Me.RadTextBoxControl1.CaretIndex = 0
    Me.RadTextBoxControl1.Insert("John ")
End Sub
 Region
ion "AppendText"
Private Sub AppendText()
    Me.RadTextBoxControl1.Text = "Samuel"
    Me.RadTextBoxControl1.AppendText(" Jackson")
End Sub
 Region
ion "Delete"
Private Sub DeleteSelection()
    Me.RadTextBoxControl1.Text = "John Green"
    Me.RadTextBoxControl1.[Select](0, 4)
    Me.RadTextBoxControl1.Delete()
End Sub
 Region
ion "TextChanging"
Private Sub radTextBoxControl1_TextChanging(sender As Object, e As Telerik.WinControls.TextChangingEventArgs)
    e.Cancel = String.IsNullOrEmpty(e.NewValue)
End Sub
 Region
ion "AddAutoCompleteItems"
Private Sub AddAutoCompleteItems()
    Me.RadTextBoxControl1.AutoCompleteMode = AutoCompleteMode.Suggest
    Dim autoCompleteItems As RadListDataItemCollection = Me.RadTextBoxControl1.AutoCompleteItems
    autoCompleteItems.Add(New RadListDataItem("Luke"))
    autoCompleteItems.Add(New RadListDataItem("Max"))
    autoCompleteItems.Add(New RadListDataItem("Adam"))
    autoCompleteItems.Add(New RadListDataItem("Henry"))
    autoCompleteItems.Add(New RadListDataItem("Jack"))
    autoCompleteItems.Add(New RadListDataItem("Ben"))
    autoCompleteItems.Add(New RadListDataItem("Tyler"))
    autoCompleteItems.Add(New RadListDataItem("Ethan"))
    autoCompleteItems.Add(New RadListDataItem("David"))
    autoCompleteItems.Add(New RadListDataItem("Mike"))
End Sub
 Region
Private Sub formatting1()
    '#Region "Formatting1"
    AddHandler Me.RadTextBoxControl1.TextBlockFormatting, AddressOf Me.OnTextBlockFormatting
    Me.RadTextBoxControl1.Text = "This is important text."

````

{{endregion}} 


![editors-textboxcontrol-getting-started 004](images/editors-textboxcontrol-getting-started004.png)
