---
title: Localization
page_title: Localization - WinForms AIPrompt Control
description: Learn how to localize the built-in text and tooltips in the RadAIPrompt control.
slug: aiprompt-localization
tags: aiprompt, localization
published: True
position: 6
---

# Localization

Use `RadAIPromptLocalizationProvider` to localize the built-in text and tooltip text in `RadAIPrompt`. Create a class that derives from `RadAIPromptLocalizationProvider` and override the `GetLocalizedString` method. Return the localized value for each string ID that your application needs to localize and call the base implementation for all other IDs.

## Create a Localization Provider

The following example localizes all text exposed by `RadAIPromptStringId` in English:

````C#
public class CustomAIPromptLocalizationProvider : RadAIPromptLocalizationProvider
{
    public override string GetLocalizedString(string id)
    {
        switch (id)
        {
            case RadAIPromptStringId.InputItem_Text:
                return "Ask AI";
            case RadAIPromptStringId.OutputItem_Text:
                return "Response";
            case RadAIPromptStringId.InputView_NullText:
                return "Ask or generate content with AI ...";
            case RadAIPromptStringId.InputView_GenerateButton_Text:
                return "Generate";
            case RadAIPromptStringId.OutputView_CopyButton_Text:
                return "Copy";
            case RadAIPromptStringId.OutputView_RetryButton_Text:
                return "Retry";
            case RadAIPromptStringId.OutputView_CopyButton_ToolTip:
                return "Copy the response to the clipboard.";
            case RadAIPromptStringId.OutputView_RetryButton_ToolTip:
                return "Retry generating a response.";
            default:
                return base.GetLocalizedString(id);
        }
    }
}
````
````VB.NET
Public Class CustomAIPromptLocalizationProvider
    Inherits RadAIPromptLocalizationProvider

    Public Overrides Function GetLocalizedString(id As String) As String
        Select Case id
            Case RadAIPromptStringId.InputItem_Text
                Return "Ask AI"
            Case RadAIPromptStringId.OutputItem_Text
                Return "Response"
            Case RadAIPromptStringId.InputView_NullText
                Return "Ask or generate content with AI ..."
            Case RadAIPromptStringId.InputView_GenerateButton_Text
                Return "Generate"
            Case RadAIPromptStringId.OutputView_CopyButton_Text
                Return "Copy"
            Case RadAIPromptStringId.OutputView_RetryButton_Text
                Return "Retry"
            Case RadAIPromptStringId.OutputView_CopyButton_ToolTip
                Return "Copy the response to the clipboard."
            Case RadAIPromptStringId.OutputView_RetryButton_ToolTip
                Return "Retry generating a response."
            Case Else
                Return MyBase.GetLocalizedString(id)
        End Select
    End Function
End Class
````

## Apply the Localization Provider

Set `RadAIPromptLocalizationProvider.CurrentProvider` before initializing the form or creating any `RadAIPrompt` controls.

````C#
RadAIPromptLocalizationProvider.CurrentProvider =
    new CustomAIPromptLocalizationProvider();

RadAIPrompt aiPrompt = new RadAIPrompt();
````
````VB.NET
RadAIPromptLocalizationProvider.CurrentProvider = _
    New CustomAIPromptLocalizationProvider()

Dim aiPrompt As New RadAIPrompt()
````

## Localizable Strings

|String ID|Default value|Description|
|----|----|----|
|`InputItem_Text`|Ask AI|The text of the input view item.|
|`OutputItem_Text`|Output|The text of the output view item.|
|`InputView_NullText`|Ask or generate content with AI ...|The placeholder in the prompt input field.|
|`InputView_GenerateButton_Text`|Generate|The text of the button that sends a prompt.|
|`OutputView_CopyButton_Text`|Copy|The text of the button that copies a response.|
|`OutputView_RetryButton_Text`|Retry|The text of the button that repeats a prompt request.|
|`OutputView_CopyButton_ToolTip`|Copy the response to the clipboard.|The tooltip for the copy button.|
|`OutputView_RetryButton_ToolTip`|Retry generating a response.|The tooltip for the retry button.|

## See Also

* [Getting Started]({%slug aiprompt-getting-started%})
* [Views]({%slug aiprompt-views%})
* [Properties, Methods and Events]({%slug aiprompt-properties-methods-events%})