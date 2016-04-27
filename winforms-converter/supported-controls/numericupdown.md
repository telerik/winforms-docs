---
title: NumericUpDown
page_title: NumericUpDown | UI for Winforms Documentation
description: This article explains which default .NET controls are automatically converted.
slug: winforms/winforms-converter/supported-controls/numericupdown
tags: covert, winforms, numericupdown, spineditor
published: True
position: 1
---

# NumericUpDown

|Properties|Action|RadControls Equivalent|
|---|---|---|
|TextAlign|Replaced with|TextAlignment|
|UpDownAlign|Remove after converting|   |

|Methods|Action|RadControls Equivalent|
|---|---|---|
|Validate(true)|Give an error after converting|   |
|Validate()|Give an error after converting|   |
|PerformAutoScale()|Removed after converting|   |
|UpButton()|Replaced with|SpinElement.ButtonUp.PerformClick()|
|DownButton()|Replaced with|SpinElement.ButtonDown.PerformClick()|

