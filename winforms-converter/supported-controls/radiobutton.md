---
title: RadioButton
page_title: RadioButton | UI for Winforms Documentation
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/radiobutton
tags: covert, winforms, radiobutton
published: True
position: 1
---

The RadioButton is converted to [RadRadioButton]({%slug winforms/buttons/radiobutton%}). The following tables describes which properties, methods and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Appearance|Produces Error|   |
|AutoCheck|Produces Error|   |
|AutoEllipsis|Replaced|ButtonElement.TextElement.AutoEllipsis|
|AutoSize|Different default value|   |
|CheckAlign|Replaced|RadioCheckAlignment|
|Checked|Replaced|IsChecked|
|FlatAppearance.BorderColor|Removed|   |
|FlatAppearance.BorderSize|Removed|   |
|FlatAppearance.CheckedBackColor|Removed|   |
|FlatAppearance.MouseDownBackColor|Removed|   |
|FlatAppearance.MouseOverBackColor|Removed|   |
|FlatStyle|Removed| |
|ImageAlign|Replaced|ImageAlignment|
|TextAlign|Replaced|TextAlignment|
|UseVisualStyleBackColor|Removed|   |

|Events|Action|RadControls Equivalent|
|---|---|---|
|AppearanceChanged|Produces Error|   |
|CheckedChanged|Replaced|CheckStateChanged|

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements] ({%slug winforms/winforms-converter/requirements%})