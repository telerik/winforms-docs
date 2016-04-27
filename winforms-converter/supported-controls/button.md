---
title: Button
page_title: Button | UI for Winforms Documentation
description: This article explains which default .NET controls are automatically converted.
slug: winforms/winforms-converter/supported-controls/button
tags: covert, winforms, button
published: True
position: 1
---

# Button

The buttons in your application will be converted to [RadButton]({%slug winforms/buttons/button%}). The following table describes which properties are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|AutoEllipsis|Replaced with|ButtonElement.TextElement.AutoEllipsis|
|UseVisualStyleBackColor|Removed after converting|   |
|TextAlign|Replaced with|ImageAlignment|
|AutoSizeMode|Removed after converting|   |
|FlatAppearance.BorderColor|Removed after converting|   |
|FlatAppearance.BorderSize|Removed after converting|   |
|FlatAppearance.MouseDownBackColor|Removed after converting|   |
|FlatAppearance.MouseOverBackColor|Removed after converting|   |
|FlatStyle |Removed after converting|   |