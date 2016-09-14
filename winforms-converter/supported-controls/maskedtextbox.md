---
title: MaskedTextBox
page_title: MaskedTextBox | WinForms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/maskedtextbox
tags: covert, winforms, maskedtextbox
published: True
position: 1
---

# MaskedTextBox

The MaskedTextBox is converted to [RadMaskedEditBox]({%slug winforms/editors/maskededitbox%}). The following tables describe which properties, methods and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AsciiOnly|Removed|   |
|BeepOnError|Removed|   |
|BorderStyle|Removed|   |
|HidePromptOnLeave|Removed|   |
|InsertKeyMode|Produces Error|   |
|SkipLiterals|Removed|   |
|UseSystemPasswordChar|Produces Error|   |

|Methods|Action|RadControls Equivalent|
|---|---|---|
|GetCharIndexFromPosition|Replaced|MaskedEditBoxElement.TextBoxItem.GetCharIndexFromPosition|
|GetCharFromPosition|Replaced|MaskedEditBoxElement.TextBoxItem.GetCharFromPosition|
|GetPositionFromCharIndex|Replaced|MaskedEditBoxElement.TextBoxItem.GetPositionFromCharIndex|
|DeselectAll|Replaced|MaskedEditBoxElement.TextBoxItem.DeselectAll|
|ValidateText|Produces Error|   |
|Paste|Replaced|MaskedEditBoxElement.TextBoxItem.Paste|
|Cut|Replaced|MaskedEditBoxElement.TextBoxItem.Cut|
|Copy|Replaced|MaskedEditBoxElement.TextBoxItem.Copy|
|AppendText|Replaced|MaskedEditBoxElement.TextBoxItem.AppendText|

|Events|Action|RadControls Equivalent|
|---|---|---|
|CutCopyMaskFormat|Produces Error|   |
|IsOverwriteModeChanged|Produces Error|   |
|BorderStyleChanged|Removed|   |
|HideSelectionChanged|Produces Error|   |
|MaskChanged|Replaced|MaskedEditBoxElement.MaskProviderCreated|
|TypeValidationCompleted|Produces Error|   |
|MaskInputRejected|Produces Error|   |
|ModifiedChanged|Produces Error|   |
|ReadOnlyChanged|Produces Error|   |

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements] ({%slug winforms/winforms-converter/requirements%})
