---
title: ProgressBar
page_title: ProgressBar | UI for Winforms Documentation
description: This article explains which default .NET controls are automatically converted.
slug: winforms/winforms-converter/supported-controls/progressbar
tags: covert, winforms, progressbar
published: True
position: 1
---

# ProgressBar

|Properties|Action|RadControls Equivalent|
|---|---|---|
|MarqueeAnimationSpeed|Removed after converting|   |
|Style |Give an error after converting|   |
|Value|Replace with|Value1|
|RightToLeftLayout|Removed after converting|   |

|Methods|Action|RadControls Equivalent|
|---|---|---|
|PerformStep()|Replace with|ProgressBarElement.PerformStepValue1()|
|Increment(value)|Replace with|ProgressBarElement.IncrementValue1(value)|

|Events|Action|RadControls Equivalent|
|---|---|---|
|RightToLeftLayoutChanged|Remove after converting|   |
