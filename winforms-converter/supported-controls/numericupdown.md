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

The NumericUpDown control in your application will be converted to [RadSpinEditor]({%slug winforms/editors/spineditor%}). The following tables describes which properties and methods are removed and which are replaced with similar equivalents.

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

