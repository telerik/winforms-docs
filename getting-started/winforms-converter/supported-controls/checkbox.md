---
title: Checkbox
page_title: Checkbox | WinForms Converter
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/checkbox
tags: covert, winforms, button
published: True
position: 1
---

# Checkbox

The CheckBoxes are converted to [RadCheckBox]({%slug winforms/buttons/checkbox%}). The following tables describe which properties and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Appearance|Produces Error|   |
|AutoCheck|Produces Error|   |
|AutoEllipsis|Replaced|ButtonElement.TextElement.AutoEllipsis|
|AutoSize|   |   |
|CheckAlign|Replaced|CheckAlignment|
|CheckState|Replaced|CheckState|
|FlatStyle |Removed|   |
|FlatAppearance.BorderColor|Removed|   |
|FlatAppearance.BorderSize|Removed|   |
|FlatAppearance.CheckedBackColor|Removed|   |
|FlatAppearance.MouseDownBackColor|Removed|   |
|FlatAppearance.MouseOverBackColor|Removed|   |
|ImageAlign|Replaced|ImageAlignment|
|TextAlign|Replaced|TextAlignment|
|ThreeState|Replaced|IsThreeState|
|UseVisualStyleBackColor|Removed after converting|   |

|Events|Action|RadControls Equivalent|
|---|---|---|
|AppearanceChanged|Produces Error|   |
|CheckedChanged|Replaced|CheckedChanged|

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements] ({%slug winforms/winforms-converter/requirements%})
