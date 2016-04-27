---
title: Checkbox
page_title: Checkbox | UI for Winforms Documentation
description: This article explains which default .NET controls are automatically converted.
slug: winforms/winforms-converter/supported-controls/checkbox
tags: covert, winforms, button
published: True
position: 1
---

# Checkbox

The CheckBoxes are converted to [RadCheckBox]({%slug winforms/buttons/checkbox%}). The following tables describes which properties and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|Appearance|Gives an error after converting|   |
|AutoCheck|Give an error after converting|   |
|AutoEllipsis|Replaced with|ButtonElement.TextElement.AutoEllipsis|
|AutoSize|   |   |
|CheckAlign|Replaced with|CheckAlignment|
|CheckState|Replaced with|CheckState|
|FlatStyle |Removed after converting|   |
|FlatAppearance.BorderColor|Removed after converting|   |
|FlatAppearance.BorderSize|Removed after converting|   |
|FlatAppearance.CheckedBackColor|Removed after converting|   |
|FlatAppearance.MouseDownBackColor|Removed after converting|   |
|FlatAppearance.MouseOverBackColor|Removed after converting|   |
|ImageAlign|Replaced with|ImageAlignment|
|TextAlign|Replaced with|TextAlignment|
|ThreeState|Replaced with|IsThreeState|
|UseVisualStyleBackColor|Removed after converting|   |

|Events|Action|RadControls Equivalent|
|---|---|---|
|AppearanceChanged|Give an error after converting|   |
|CheckedChanged|Replaced with|CheckedChanged|