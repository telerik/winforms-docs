---
title: Label
page_title: Label | UI for Winforms Documentation
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/label
tags: covert, winforms, label
published: True
position: 1
---

# Label

The Label is converted to [RadLabel]({%slug winforms/panels-and-labels/label%}). The following tables describes which properties, methods and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|TextAlign|Replaced|TextAlignment|
|ImageAlign|Replaced|ImageAlignment|
|FlatStyle|Removed|   |
|BorderStyle|Removed|   |
|AutoEllipsis|Replaced|LabelElement.LabelText.AutoEllipsis|
|AutoSize|Different default values|   |

|Events|Action|RadControls Equivalent|
|---|---|---|
|TextAlignChanged|Produces Error|   |

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements] ({%slug winforms/winforms-converter/requirements%})