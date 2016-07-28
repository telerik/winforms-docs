---
title: Themes
page_title: Themes | RadTextBox
description: This article shows how you can change the disabled back color of RadTextBox.
slug: winforms/editors/textbox/themes
tags: textbox
published: True
position: 1
---

# Themes

This help article will demonstrate a step by step tutorial how to customize the `ControlDefault` theme for __RadTextBox__

1. Open [Visual Style Builder] ({%slug winforms/tools/visual-style-builder/starting-vsb%})
2. Export the built-in themes in a specific folder by selecting `File` >> `Export Built-in Themes`.
3. Load a desired theme from the just exported files by selecting `File` >> `Open Package`.
4. Expand __RadTextBox__ and select the `TextBoxFill`. Make sure that the __Disabled__ state is selected in the `Element States' window. 
    ![radtextbox-themes001](images/radtextbox-themes001.png)

5. Open the `Edit Repository Item` dialog and change the `BackColor`:
   ![radtextbox-themes003](images/radtextbox-themes003.png)

6. Select `RadTextBoxElement` and change the __BackColor__, then save the theme. (you can press Ctrl+H to open the [Spy]({%slug winforms/tools/controlspy%}) and disable the text box to see the results):
   ![radtextbox-themes002](images/radtextbox-themes002.png)

>note The following article shows how you can use the new theme: [Using Custom Themes]({%slug winforms/themes/using-custom-themes%}).

# See Also 

* [Customizing Appearance]({%slug winforms/editors/textbox/customizing-appearance%})