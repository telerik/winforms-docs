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

The ProgressBars in your application will be converted to [RadProgressBar]({%slug winforms/track-and-status-controls/progressbar%}). The following table describes which properties, methods and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|MarqueeAnimationSpeed|Removed|   |
|Style |Produces Error|   |
|Value|Replaced|Value1|
|RightToLeftLayout|Removed|   |

|Methods|Action|RadControls Equivalent|
|---|---|---|
|PerformStep()|Replaced|ProgressBarElement.PerformStepValue1()|
|Increment(value)|Replaced|ProgressBarElement.IncrementValue1(value)|

|Events|Action|RadControls Equivalent|
|---|---|---|
|RightToLeftLayoutChanged|Removed|   |
