---
title: NumericUpDown
page_title: NumericUpDown - WinForms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/numericupdown
tags: covert, winforms, numericupdown, spineditor
published: True
position: 1
---

# NumericUpDown

The NumericUpDown control in your application will be converted to [RadSpinEditor]({%slug winforms/editors/spineditor%}). The following tables describe which properties and methods are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|TextAlign|Replaced|TextAlignment|
|UpDownAlign|Removed|   |

|Methods|Action|RadControls Equivalent|
|---|---|---|
|Validate(true)|Produces Error|   |
|Validate()|Produces Error|   |
|PerformAutoScale()|Removed|   |
|UpButton()|Replaced|SpinElement.ButtonUp.PerformClick()|
|DownButton()|Replaced|SpinElement.ButtonDown.PerformClick()|


## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements]({%slug winforms/winforms-converter/requirements%})
