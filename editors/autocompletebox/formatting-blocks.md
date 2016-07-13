---
title: Formatting Blocks
page_title: Formatting Blocks | UI for WinForms Documentation
description: This article shows how one can change the tokenized elements styles.
slug: winforms/editors/autocompletebox/formatting-blocks
tags: formatting,blocks
published: True
position: 7
previous_url: editors-autocompletetextbox-formatting-blocks
---

# Formatting Blocks

The __RadAutoCompleteBox__ allows appearance customization of each instance of __ITextBlock__. This can be easily achieved by subscribing to the __FormattingTextBlock__ event: 

{{source=..\SamplesCS\Editors\AutoCompleteBox.cs region=formatting}} 
{{source=..\SamplesVB\Editors\AutoCompleteBox.vb region=formatting}} 

````C#
void radAutoCompleteBox1_TextBlockFormatting(object sender, TextBlockFormattingEventArgs e)
{
    TokenizedTextBlockElement token = e.TextBlock as TokenizedTextBlockElement;
    if (token != null)
    {
        token.GradientStyle = Telerik.WinControls.GradientStyles.Solid;
        token.BackColor = Color.Yellow;
    }
}

````
````VB.NET
Private Sub radAutoCompleteBox1_TextBlockFormatting(sender As Object, e As TextBlockFormattingEventArgs)
    Dim token As TokenizedTextBlockElement = TryCast(e.TextBlock, TokenizedTextBlockElement)
    If token IsNot Nothing Then
        token.GradientStyle = Telerik.WinControls.GradientStyles.Solid
        token.BackColor = Color.Yellow
    End If
End Sub

````

{{endregion}} 

>caption Figure 1: Items with yellow background.

![editors-autocompletebox-formatting-blocks 001](images/editors-autocompletebox-formatting-blocks001.png)

Note that the event occurs when the text blocks are repositioned. This happens in different cases - editing, control resizing and etc. Hence, you should subscribe to the event before initializing the __Text__ property.
		
