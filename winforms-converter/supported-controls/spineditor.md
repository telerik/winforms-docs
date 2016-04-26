---
title: SpinEditor
page_title: SpinEditor | UI for Winforms Documentation
description: This article explains which default .NET controls are automatically converted.
slug: winforms/winforms-converter/supported-controls/spineditor
tags: covert, winforms, spineditor
published: True
position: 1
---

# SpinEditor

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

