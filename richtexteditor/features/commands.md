---
title: Commands
page_title: Commands | UI for WinForms Documentation
description: Commands
slug: winforms/richtexteditor-/features/commands
tags: commands
published: True
position: 6
previous_url: richtexteditor-features-commands
---

# Commands

## 

The __RadRichTextEditor__ control exposes a full set of commands that are exposed through its  __Commands__ property. For each of the [Formatting API]({%slug winforms/richtexteditor-/getting-started/formatting-api%}) methods there is a respective command.
        
Here is an example with a __RadToggleButton__ control.

{{source=..\SamplesCS\RichTextEditor\Features\Commands.cs region=init}} 
{{source=..\SamplesVB\RichTextEditor\Features\Commands.vb region=init}} 

````C#
        
private RadToggleButton boldButton;
        
public Commands()
{
    this.InitializeComponent();
    this.boldButton = new RadToggleButton();
    this.boldButton.Text = "Bold";
    this.boldButton.Click += this.boldButton_Click;
    this.boldButton.Location = new Point(10, 10);
    this.Controls.Add(this.boldButton);
}
        
private void boldButton_Click(object sender, EventArgs e)
{
    this.radRichTextEditor1.Commands.ToggleBoldCommand.Execute();
}

````
````VB.NET
Private boldButton As RadToggleButton
Public Sub New()
    Me.InitializeComponent()
    Me.boldButton = New RadToggleButton()
    Me.boldButton.Text = "Bold"
    AddHandler Me.boldButton.Click, AddressOf Me.boldButton_Click
    Me.boldButton.Location = New Point(10, 10)
    Me.Controls.Add(Me.boldButton)
End Sub
Private Sub boldButton_Click(ByVal sender As Object, ByVal e As EventArgs)
    Me.radRichTextEditor1.Commands.ToggleBoldCommand.Execute()
End Sub

````

{{endregion}} 


Now every time the button is clicked it will toggle the boldness of the current selection. The thing it won't do is to response to the current state of the  selection. For example if the context of the caret is a bold text, the button won't get automatically toggled. In order to implement this behavior you have to handle the __ToggleStateChanged__ event of the __ToggleBoldCommand__. Here is an example.

{{source=..\SamplesCS\RichTextEditor\Features\Commands.cs region=event}} 
{{source=..\SamplesVB\RichTextEditor\Features\Commands.vb region=event}} 

````C#
    
private void Commands_Load(object sender, EventArgs e)
{
    this.radRichTextEditor1.Commands.ToggleBoldCommand.ToggleStateChanged += this.ToggleBoldCommand_ToggleStateChanged;
}
    
public void ToggleBoldCommand_ToggleStateChanged(object sender, StylePropertyChangedEventArgs<bool> e)
{
    this.boldButton.IsChecked = e.NewValue;
}

````
````VB.NET
Private Sub Commands_Load(ByVal sender As Object, ByVal e As EventArgs)
    AddHandler Me.radRichTextEditor1.Commands.ToggleBoldCommand.ToggleStateChanged, AddressOf Me.ToggleBoldCommand_ToggleStateChanged
End Sub
Public Sub ToggleBoldCommand_ToggleStateChanged(ByVal sender As Object, ByVal e As StylePropertyChangedEventArgs(Of Boolean))
    Me.boldButton.IsChecked = e.NewValue
End Sub

````

{{endregion}}

Now the button will respond to the current state of the selection.

![richtexteditor-features-clipboard-support 001](images/richtexteditor-features-clipboard-support001.png)
