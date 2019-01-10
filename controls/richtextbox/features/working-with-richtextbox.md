---
title: Working with RichTextBox
page_title: Working with RichTextBox | UI for WinForms Documentation
description: Working with RichTextBox
slug: winforms/richtextbox-(obsolete)/features/working-with-richtextbox
tags: working,with,richtextbox
published: True
position: 0
previous_url: richtextbox-features-working-with-richtextbox
---

# Working with RichTextBox

The RadRichTextBox is a control that allows you to visualize rich text content and allows the user to format it.

## RadRichTextBox API

Instead of visualizing a static rich content, you may want to use the RadRichTextBox as an input control. In this case, in order to provide the user with the ability to format the inputted content, you have to provide a UI that communicates with the RadRichTextBox. For that purpose the RadRichTextBox exposes an API, which contains various methods that can apply different formatting to the inputted content. To learn more about the API methods read this topic. To see an example of a RadRichTextBox that allows to apply bold, italic and underline formatting, take a look at this topic.

## Scrolling

When the available size for the control becomes less than the size of the content, the RadRichTextBox will automatically display horizontal or vertical scrollbars respectively.

## Current Span

The __CurrentEditingStyle__ property returns an instance of the __StyleDefinition__ class, which allows you to get information about the current element. You can combine the usage of this property with the usage of the __CurrentSpanStyleChanged__ event in order to update the UI (if any) when the text style changes.

>note The same approach can be used for the __CurrentParagraphStyleChanged__ event.
>

For example, you have a button that makes the text bold:

#### Bold text

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxWorkingWithRichTextBox.cs region=boldText}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxWorkingWithRichTextBox.vb region=boldText}} 

````C#
private void boldButton_Click(object sender, EventArgs e)
{
    radRichTextBox1.ToggleBold();
}

````
````VB.NET
Private Sub boldButton_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles boldButton.Click
    RadRichTextBox1.ToggleBold()
End Sub

````

{{endregion}}

In the event handler for the __CurrentSpanStyleChanged__ you can do the following:

#### Bold text

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxWorkingWithRichTextBox.cs region=CurrentSpanStyleChanged}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxWorkingWithRichTextBox.vb region=CurrentSpanStyleChanged}} 

````C#
void radRichTextBox1_CurrentSpanStyleChanged(object sender, EventArgs e)
{
    StyleDefinition style = this.radRichTextBox1.CurrentEditingStyle;
    TextStyle fontWeight = (TextStyle)style.GetPropertyValue(Span.FontStyleProperty);
    this.boldButton.IsChecked = fontWeight == TextStyle.Bold;
}

````
````VB.NET
Private Sub radRichTextBox1_CurrentSpanStyleChanged(ByVal sender As Object, ByVal e As EventArgs)
    Dim style As StyleDefinition = Me.RadRichTextBox1.CurrentEditingStyle
    Dim fontWeight As TextStyle = DirectCast(style.GetPropertyValue(Span.FontStyleProperty), TextStyle)
    Me.boldButton.IsChecked = fontWeight = TextStyle.Bold
End Sub

````

{{endregion}}

This will keep the button synchronized with the current position of the caret.