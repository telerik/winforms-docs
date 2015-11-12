---
title: Formatting Blocks
page_title: Formatting Blocks | UI for WinForms Documentation
description: Formatting Blocks
slug: winforms/editors/autocompletebox/formatting-blocks
tags: formatting,blocks
published: True
position: 6
---

# Formatting Blocks
 
## 

The RadAutoCompleteBox allows appearance customization of each instance of __ITextBlock__. This can be easily achieved by subscribing to the __FormattingTextBlock__ event: 

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
 Region
ion "PreventDeleteOfTokens"
Private Sub radAutoCompleteBox1_TextChanging(sender As Object, e As Telerik.WinControls.TextChangingEventArgs)
    e.Cancel = String.IsNullOrEmpty(e.NewValue) AndAlso e.OldValue.Contains(Me.RadAutoCompleteBox1.Delimiter.ToString())
End Sub
 Region
ion "SetText"
Private Sub SetText()
    Me.RadAutoCompleteBox1.Text = "Germany;USA;Brazil;Bulgaria;Croatia;Serbia;"
End Sub
 Region
Private Sub ShowRemoveButton()
    '#Region "ShowRemoveButton"
    Me.RadAutoCompleteBox1.ShowRemoveButton = False

````

{{endregion}} 


![editors-autocompletebox-formatting-blocks 001](images/editors-autocompletebox-formatting-blocks001.png)

Note that the event occurs when the text blocks are repositioned. This happens in different cases - editing, control resizing and etc. Hence, you should subscribe to the event before initializing the Text property.
		
