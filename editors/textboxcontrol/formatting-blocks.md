---
title: Formatting blocks
page_title: Formatting blocks | UI for WinForms Documentation
description: Formatting blocks
slug: winforms/editors/textboxcontrol/formatting-blocks
tags: formatting,blocks
published: True
position: 7
---

# Formatting blocks
 

## 

The RadTextBoxControl allow appearance customization of each instance of __ITextBlock__. This can be easily achieved by subscribing to the __FormattingTextBlock__ event: 

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=Formatting1}} 
{{source=..\SamplesVB\Editors\TextBoxControl.vb region=Formatting1}}
````C#
        this.radTextBoxControl1.TextBlockFormatting += this.OnTextBlockFormatting;
		this.radTextBoxControl1.Text = "This is important text.";
````
````VB.NET
     AddHandler Me.RadTextBoxControl1.TextBlockFormatting, AddressOf Me.OnTextBlockFormatting
	 Me.RadTextBoxControl1.Text = "This is important text."
````

{{endregion}} 

{{source=..\SamplesCS\Editors\TextBoxControl.cs region=formatting2}} 
{{source=..\SamplesVB\Editors\TextBoxControl.vb region=formatting2}} 

````C#
        private void OnTextBlockFormatting(object sender, Telerik.WinControls.UI.TextBlockFormattingEventArgs e)
        {
            TextBlockElement textBlock = e.TextBlock as TextBlockElement;

            if (textBlock != null && e.TextBlock.Text == "important")
            {
                textBlock.ForeColor = Color.Red;
            }
        }
````
````VB.NET
    Private Sub OnTextBlockFormatting(sender As Object, e As Telerik.WinControls.UI.TextBlockFormattingEventArgs)
        Dim textBlock As TextBlockElement = TryCast(e.TextBlock, TextBlockElement)

        If textBlock IsNot Nothing AndAlso e.TextBlock.Text = "important" Then
            textBlock.ForeColor = Color.Red
        End If
    End Sub
````

{{endregion}} 


![editors-textboxcontrol-formatting-blocks 001](images/editors-textboxcontrol-formatting-blocks001.png)

Notice that the event occurs when the text blocks are repositioned. This happens in different cases: editing, control resizing and etc. Hence, you should subscribe to the event before initializing the __Text__ property.
        
