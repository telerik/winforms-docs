---
title: TextBox
page_title: TextBox | UI for Winforms Documentation
description: This article explains which standard .NET controls properties are removed and which are replaced with similar equivalents. 
slug: winforms/winforms-converter/supported-controls/textbox
tags: covert, winforms, textbox
published: True
position: 1
---

# TextBox

The TextBoxes in your application will be converted to [RadTextBox]({%slug winforms/editors/textbox%}). The following table describes which properties, methods and events are removed and which are replaced with similar equivalents.

|Properties|Action|RadControls Equivalent|
|---|---|---|
|TextAlign|Replaced|TextAlign|
|BorderStyle|Removed|   |

|Methods|Action|RadControls Equivalent|
|---|---|---|
|Undo|Replaced|TextBoxElement.TextBoxItem.TextBoxControl.Undo|

|Methods|Action|RadControls Equivalent|
|---|---|---|
|BorderStyleChanged|Removed| |

## See Also

* [Step-by-step tutorial]({%slug winforms/winforms-converter/step-by-step-tutorial%})
* [Requirements] ({%slug winforms/winforms-converter/requirements%})