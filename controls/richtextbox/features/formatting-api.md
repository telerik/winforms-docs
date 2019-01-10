---
title: Formatting API
page_title: Formatting API | UI for WinForms Documentation
description: Formatting API
slug: winforms/richtextbox-(obsolete)/features/formatting-api
tags: formatting,api
published: True
position: 8
previous_url: richtextbox-features-formatting-api
---

# Formatting API

If you want to format the content of the RadRichTextBox at run time, you have to use the API exposed by the RadRichTextBox. This is essential, as the main purpose of RadRichTextBox is to allow the users to format their input via UI. The UI should call the respective API methods of the RadRichTextBox.

The RadRichTextBox exposes methods that change the style of the text or the paragraph. When a method is called, the respective style is applied to the selected text. If there is no selection available, the style is applied to the word, in which the caret is located.

Here is an example of a toggle button that upon checking should make the selection or the current word bold. In the handler for the __Click__ event of the __RadToggleButton__, the __ToggleBold()__ method of the RadRichTextBox gets called.

#### Toggle bold

{{source=..\SamplesCS\RichTextBox\Features\RichTextBoxFormattingAPI.cs region=toggleBold}} 
{{source=..\SamplesVB\RichTextBox\Features\RichTextBoxFormattingAPI.vb region=toggleBold}} 

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