---
title: Appearance
page_title: WinForms SpeechToTextButton Documentation - Appearance
description: Learn how to customize appearance of the Telerik SpeechToTextButton for WinForms.
position: 3
tags: speech to text, button, visual, appearance, style, winforms
slug: speechtotextbutton-appearance
---

# SpeechToTextButton Appearance

You can customize the appearance of the SpeechToTextButton component by using its built-in parameters. The component supports the same appearance options as the [Telerik UI for WinForms RadButton]({%slug winforms/buttons/button%}).


The **RadSpeechToTextButton** appearance can be customized using the Telerik theming system and by configuring its visual elements. The control inherits appearance options from [RadButton]({%slug winforms/buttons/button%}), providing extensive styling capabilities.

## Customizing the Tooltip

The **RadSpeechToTextButton** displays a tooltip (represented by a **RadCallout**) when the user hovers over it. This tooltip shows the current state of the button to provide visual feedback.

By default, the tooltip is displayed for the **Ready** and **Listening** states. You can customize the tooltip content and behavior using the **CalloutOpening** event.

### CalloutOpening Event

The `CalloutOpening` event allows you to customize the tooltip text or cancel the tooltip display based on the current state of the recognizer.

#### Customizing tooltip text based on state

````C#
private void RadSpeechToTextButton1_CalloutOpening(object sender, Telerik.WinControls.UI.SpeechToTextButton.SpeechToTextTooltipOpeningEventArgs e
{
    var button = (RadSpeechToTextButtonElement)sender;
    
    if (button.State == SpeechRecognizerState.Ready)
    {
        e.ToolTipText = "Click here to start speaking";
    }
    else if (button.State == SpeechRecognizerState.Listening)
    {
        e.ToolTipText = "Launching listening mode";
    }
}

````
````VB.NET
Private Sub RadSpeechToTextButton1_CalloutOpening(sender As Object, e As Telerik.WinControls.UI.SpeechToTextButton.SpeechToTextTooltipOpeningEventArgs)
    Dim button As RadSpeechToTextButtonElement = CType(sender, RadSpeechToTextButtonElement)
    
    If button.State = SpeechRecognizerState.Ready Then
        e.ToolTipText = "Click here to start speaking"
    ElseIf button.State = SpeechRecognizerState.Listening Then
        e.ToolTipText = "Launching listening mode"
    End If
End Sub

````


## See Also

- [States]({%slug speechtotextbutton-states%})
- [Getting Started]({%slug speechtotextbutton-getting-started%})
- [RadButton Appearance]({%slug winforms/buttons/button/customizing-appearance/accessing-and-customizing-elements%})

