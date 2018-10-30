---
title: Themes
page_title: Themes | RadTextBoxControl
description: This article shows how you can the disabled state color in Visual Style Builder.
slug: winforms/editors/radtextboxcontrol/themes
tags: radtextboxcontrol
published: True
position: 2
---

# Themes

This help article will demonstrate a step by step tutorial how to customize the `ControlDefault` theme for __RadTextBoxControl__.

1. Open [Visual Style Builder] ({%slug winforms/tools/visual-style-builder/starting-vsb%})
2. Export the built-in themes in a specific folder by selecting `File` >> `Export Built-in Themes`.
3. Load a desired theme from the just exported files by selecting `File` >> `Open Package`.
4. Expand __RadTextBoxControl__ and select  `RadTextBoxControlElement` and the select the __Disabled__ state in the `Element States` window. 
    ![radtextboxcontrol-themes001](images/radtextboxcontrol-themes001.png)

5. Open the `Edit Repository Item` dialog and change the `BackColor` and the `GradientStyle`:
   ![radtextboxcontrol-themes002](images/radtextboxcontrol-themes002.png)

6. Select `RadTextBoxControl` and change the __UseDefaultDisabledPaint__ property to *false*.
   ![radtextboxcontrol-themes004](images/radtextboxcontrol-themes004.png)

7. Go back to RadTextBoxControlElement and change the __UseDefaultDisabledPaint__ for it as well.
   ![radtextboxcontrol-themes003](images/radtextboxcontrol-themes003.png)

>tip The following article shows how you can use the new theme: [Using Custom Themes]({%slug winforms/themes/using-custom-themes%}).

# See Also 

* [Customizing Appearance]({%slug winforms/editors/textboxcontrol/customizing-appearance%})
* [Formatting]({%slug winforms/editors/textboxcontrol/formatting-blocks%})